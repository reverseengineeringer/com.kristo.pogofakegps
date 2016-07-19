package com.kristo.pogofakegps;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.IBinder;
import android.support.annotation.Nullable;
import java.util.Timer;
import java.util.TimerTask;

public class DeviceTilt
  extends Service
{
  SharedPreferences localSharedPreferences;
  Timer timer;
  
  @Nullable
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
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
    localSharedPreferences = getApplicationContext().getSharedPreferences("MyPref", 0);
    timer = new Timer();
    timer.schedule(new TimerTask()
    {
      public void run()
      {
        SensorManager.getRotationMatrix(arrayOfFloat4, null, arrayOfFloat2, arrayOfFloat1);
        SensorManager.getOrientation(arrayOfFloat4, arrayOfFloat3);
        String str = "results: " + arrayOfFloat3[0] + " " + arrayOfFloat3[1] + " " + arrayOfFloat3[2];
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putString("tilt", str + "");
        localEditor.putString("tilt_north_south", arrayOfFloat3[1] + "");
        localEditor.putString("tilt_east_west", arrayOfFloat3[2] + "");
        localEditor.commit();
      }
    }, 1000L, 200L);
  }
  
  public void setListners(SensorManager paramSensorManager, SensorEventListener paramSensorEventListener)
  {
    paramSensorManager.registerListener(paramSensorEventListener, paramSensorManager.getDefaultSensor(1), 3);
    paramSensorManager.registerListener(paramSensorEventListener, paramSensorManager.getDefaultSensor(2), 3);
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.DeviceTilt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */