package com.kristo.pogofakegps;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

public class MockLocationProviderNew
  extends Service
{
  int counter = 0;
  double d1;
  double d2;
  boolean highAccuracy = false;
  SharedPreferences localSharedPreferences;
  LocationManager locationManager;
  int peri;
  boolean root_location;
  boolean tilt_enabled;
  int tilt_sensitivity;
  double tilt_side_origin;
  double tilt_up_origin;
  Timer timer;
  int timer_refresh;
  
  private void pauseThread() {}
  
  @SuppressLint({"NewApi"})
  private void setLocation(double paramDouble1, double paramDouble2)
  {
    try
    {
      Location localLocation = new Location("gps");
      if (Build.VERSION.SDK_INT >= 17) {
        localLocation.setElapsedRealtimeNanos(SystemClock.elapsedRealtimeNanos());
      }
      localLocation.setLatitude(paramDouble1);
      localLocation.setLongitude(paramDouble2);
      localLocation.setAccuracy(1.0F);
      localLocation.setAltitude(0.0D);
      localLocation.setTime(System.currentTimeMillis());
      localLocation.setBearing(0.0F);
      if (root_location)
      {
        locationManager.setTestProviderLocation("gps", localLocation);
        locationManager.setTestProviderLocation("network", localLocation);
        return;
      }
      locationManager.setTestProviderLocation("gps", localLocation);
      locationManager.setTestProviderLocation("network", localLocation);
      return;
    }
    catch (Exception localException) {}
  }
  
  private void startFaking()
  {
    highAccuracy = PreferenceManager.getDefaultSharedPreferences(this).getBoolean("high_accuracy", false);
    localSharedPreferences = getApplicationContext().getSharedPreferences("MyPref", 0);
    d1 = Double.valueOf(localSharedPreferences.getString("lat", "11.11")).doubleValue();
    d2 = Double.valueOf(localSharedPreferences.getString("long", "11.11")).doubleValue();
    timer_refresh = localSharedPreferences.getInt("s_refresh_rate", 500);
    tilt_enabled = localSharedPreferences.getBoolean("s_enable_tilt", false);
    tilt_sensitivity = localSharedPreferences.getInt("s_tilt_sensitivity", 50);
    root_location = localSharedPreferences.getBoolean("s_root_location", false);
    tilt_up_origin = Double.valueOf(localSharedPreferences.getString("tilt_up_origin", "0.0")).doubleValue();
    tilt_side_origin = Double.valueOf(localSharedPreferences.getString("tilt_side_origin", "0.0")).doubleValue();
    SensorManager localSensorManager = (SensorManager)getSystemService("sensor");
    final float[] arrayOfFloat1 = new float[3];
    final float[] arrayOfFloat2 = new float[3];
    final float[] arrayOfFloat3 = new float[3];
    final float[] arrayOfFloat4 = new float[9];
    setListners(localSensorManager, new SensorEventListener()
    {
      public void onAccuracyChanged(Sensor paramAnonymousSensor, int paramAnonymousInt) {}
      
      public void onSensorChanged(SensorEvent paramAnonymousSensorEvent)
      {
        switch (sensor.getType())
        {
        default: 
          return;
        case 1: 
          System.arraycopy(values, 0, arrayOfFloat2, 0, 3);
          return;
        }
        System.arraycopy(values, 0, arrayOfFloat1, 0, 3);
      }
    });
    locationManager.addTestProvider("gps", false, false, false, false, false, false, false, 1, 1);
    locationManager.setTestProviderEnabled("gps", true);
    locationManager.addTestProvider("network", false, false, false, false, false, false, false, 1, 1);
    locationManager.setTestProviderEnabled("network", true);
    peri = (150 / timer_refresh);
    timer = new Timer();
    timer.schedule(new TimerTask()
    {
      public void run()
      {
        Object localObject = MockLocationProviderNew.this;
        counter += 1;
        if ((tilt_enabled) && (counter >= peri))
        {
          counter = 0;
          SensorManager.getRotationMatrix(arrayOfFloat4, null, arrayOfFloat2, arrayOfFloat1);
          SensorManager.getOrientation(arrayOfFloat4, arrayOfFloat3);
          localObject = localSharedPreferences.edit();
          d1 = Double.valueOf(arrayOfFloat3[2] - tilt_side_origin).doubleValue();
          d2 = Double.valueOf(arrayOfFloat3[1] - tilt_up_origin).doubleValue();
          d2 = timer_refresh / (3025.0D - 25.0D) * d2 * tilt_sensitivity / 200.0D;
          d1 = timer_refresh / (3025.0D - 25.0D) * d1 * tilt_sensitivity / 200.0D;
          MockLocationProviderNew.this.d1 += d2 * 2.0E-4D;
          MockLocationProviderNew.this.d2 += d1 * 2.0E-4D;
          ((SharedPreferences.Editor)localObject).putString("lat", MockLocationProviderNew.this.d1 + "");
          ((SharedPreferences.Editor)localObject).putString("long", MockLocationProviderNew.this.d2 + "");
          ((SharedPreferences.Editor)localObject).commit();
        }
        localObject = new Random();
        int i = ((Random)localObject).nextInt(100);
        int j = ((Random)localObject).nextInt(100);
        double d1 = i;
        double d2 = j;
        MockLocationProviderNew.this.setLocation(MockLocationProviderNew.this.d1 + (d1 - 50.0D) * 1.0E-7D, MockLocationProviderNew.this.d2 + (d2 - 50.0D) * 1.0E-7D);
      }
    }, 1000L, timer_refresh);
  }
  
  private void stop()
  {
    locationManager.removeTestProvider("network");
    locationManager.removeTestProvider("gps");
    if (timer != null) {
      timer.cancel();
    }
    pauseThread();
    stopForeground(true);
    stopSelf();
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    locationManager = ((LocationManager)getSystemService("location"));
  }
  
  public void onDestroy()
  {
    try
    {
      stop();
      return;
    }
    catch (Exception localException) {}
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if ((paramIntent != null) && (paramIntent.getIntExtra("type", 1) == 1))
    {
      stop();
      return 1;
    }
    if (paramIntent != null)
    {
      switch (paramIntent.getIntExtra("type", 1))
      {
      default: 
        return 1;
      case 2: 
        pauseThread();
        startFaking();
        return 1;
      }
      pauseThread();
      return 1;
    }
    pauseThread();
    startFaking();
    return 1;
  }
  
  public void setListners(SensorManager paramSensorManager, SensorEventListener paramSensorEventListener)
  {
    paramSensorManager.registerListener(paramSensorEventListener, paramSensorManager.getDefaultSensor(1), 3);
    paramSensorManager.registerListener(paramSensorEventListener, paramSensorManager.getDefaultSensor(2), 3);
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MockLocationProviderNew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */