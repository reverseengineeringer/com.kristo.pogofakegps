package com.kristo.pogofakegps;

import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.SensorManager;
import android.util.Log;
import java.util.Timer;
import java.util.TimerTask;

class SettingsActivity$1$2
  extends TimerTask
{
  SettingsActivity$1$2(SettingsActivity.1 param1, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, float[] paramArrayOfFloat3, float[] paramArrayOfFloat4) {}
  
  public void run()
  {
    Log.i("Timer!!", "In Timer");
    int i = (int)((this$1.this$0.timer_counter + 1) / 6.0D * 100.0D);
    Log.i("Timer!!", i + "");
    SensorManager.getRotationMatrix(val$mRotationMatrix, null, val$mValuesAccel, val$mValuesMagnet);
    SensorManager.getOrientation(val$mRotationMatrix, val$mValuesOrientation);
    Object localObject = this$1.this$0;
    tilt_up += Double.valueOf(val$mValuesOrientation[1]).doubleValue();
    localObject = this$1.this$0;
    tilt_side += Double.valueOf(val$mValuesOrientation[2]).doubleValue();
    this$1.this$0.progress.setProgress(i);
    localObject = this$1.this$0;
    timer_counter += 1;
    if (this$1.this$0.timer_counter >= 6)
    {
      localObject = this$1.this$0.localSharedPreferences.edit();
      ((SharedPreferences.Editor)localObject).putString("tilt_up_origin", this$1.this$0.tilt_up / 6.0D + "");
      ((SharedPreferences.Editor)localObject).putString("tilt_side_origin", this$1.this$0.tilt_side / 6.0D + "");
      ((SharedPreferences.Editor)localObject).commit();
      this$1.this$0.timer_counter = 0;
      this$1.this$0.progress.cancel();
      this$1.this$0.timer.cancel();
    }
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.SettingsActivity.1.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */