package com.kristo.pogofakegps;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.Timer;
import java.util.TimerTask;

class SettingsActivity$1
  implements View.OnClickListener
{
  SettingsActivity$1(SettingsActivity paramSettingsActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = (SensorManager)this$0.c.getSystemService("sensor");
    final float[] arrayOfFloat1 = new float[3];
    final float[] arrayOfFloat2 = new float[3];
    final float[] arrayOfFloat3 = new float[3];
    final float[] arrayOfFloat4 = new float[9];
    SensorEventListener local1 = new SensorEventListener()
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
    };
    this$0.setListners(paramView, local1);
    this$0.progress = new ProgressDialog(this$0.c);
    this$0.progress.setMessage("Do Not Move Device");
    this$0.progress.setProgressStyle(1);
    this$0.progress.setIndeterminate(false);
    this$0.progress.setProgress(0);
    this$0.progress.setMax(100);
    this$0.progress.setCancelable(false);
    this$0.progress.show();
    this$0.timer = new Timer();
    this$0.timer.schedule(new TimerTask()
    {
      public void run()
      {
        Log.i("Timer!!", "In Timer");
        int i = (int)((this$0.timer_counter + 1) / 6.0D * 100.0D);
        Log.i("Timer!!", i + "");
        SensorManager.getRotationMatrix(arrayOfFloat4, null, arrayOfFloat2, arrayOfFloat1);
        SensorManager.getOrientation(arrayOfFloat4, arrayOfFloat3);
        Object localObject = this$0;
        tilt_up += Double.valueOf(arrayOfFloat3[1]).doubleValue();
        localObject = this$0;
        tilt_side += Double.valueOf(arrayOfFloat3[2]).doubleValue();
        this$0.progress.setProgress(i);
        localObject = this$0;
        timer_counter += 1;
        if (this$0.timer_counter >= 6)
        {
          localObject = this$0.localSharedPreferences.edit();
          ((SharedPreferences.Editor)localObject).putString("tilt_up_origin", this$0.tilt_up / 6.0D + "");
          ((SharedPreferences.Editor)localObject).putString("tilt_side_origin", this$0.tilt_side / 6.0D + "");
          ((SharedPreferences.Editor)localObject).commit();
          this$0.timer_counter = 0;
          this$0.progress.cancel();
          this$0.timer.cancel();
        }
      }
    }, 1000L, 500L);
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.SettingsActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */