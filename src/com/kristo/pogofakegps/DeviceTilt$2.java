package com.kristo.pogofakegps;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.SensorManager;
import java.util.TimerTask;

class DeviceTilt$2
  extends TimerTask
{
  DeviceTilt$2(DeviceTilt paramDeviceTilt, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, float[] paramArrayOfFloat3, float[] paramArrayOfFloat4) {}
  
  public void run()
  {
    SensorManager.getRotationMatrix(val$mRotationMatrix, null, val$mValuesAccel, val$mValuesMagnet);
    SensorManager.getOrientation(val$mRotationMatrix, val$mValuesOrientation);
    String str = "results: " + val$mValuesOrientation[0] + " " + val$mValuesOrientation[1] + " " + val$mValuesOrientation[2];
    SharedPreferences.Editor localEditor = this$0.localSharedPreferences.edit();
    localEditor.putString("tilt", str + "");
    localEditor.putString("tilt_north_south", val$mValuesOrientation[1] + "");
    localEditor.putString("tilt_east_west", val$mValuesOrientation[2] + "");
    localEditor.commit();
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.DeviceTilt.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */