package com.kristo.pogofakegps;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.SensorManager;
import java.util.Random;
import java.util.TimerTask;

class MockLocationProviderNew$2
  extends TimerTask
{
  MockLocationProviderNew$2(MockLocationProviderNew paramMockLocationProviderNew, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, float[] paramArrayOfFloat3, float[] paramArrayOfFloat4) {}
  
  public void run()
  {
    Object localObject = this$0;
    counter += 1;
    if ((this$0.tilt_enabled) && (this$0.counter >= this$0.peri))
    {
      this$0.counter = 0;
      SensorManager.getRotationMatrix(val$mRotationMatrix, null, val$mValuesAccel, val$mValuesMagnet);
      SensorManager.getOrientation(val$mRotationMatrix, val$mValuesOrientation);
      localObject = this$0.localSharedPreferences.edit();
      d1 = Double.valueOf(val$mValuesOrientation[2] - this$0.tilt_side_origin).doubleValue();
      d2 = Double.valueOf(val$mValuesOrientation[1] - this$0.tilt_up_origin).doubleValue();
      d2 = this$0.timer_refresh / (3025.0D - 25.0D) * d2 * this$0.tilt_sensitivity / 200.0D;
      d1 = this$0.timer_refresh / (3025.0D - 25.0D) * d1 * this$0.tilt_sensitivity / 200.0D;
      this$0.d1 += d2 * 2.0E-4D;
      this$0.d2 += d1 * 2.0E-4D;
      ((SharedPreferences.Editor)localObject).putString("lat", this$0.d1 + "");
      ((SharedPreferences.Editor)localObject).putString("long", this$0.d2 + "");
      ((SharedPreferences.Editor)localObject).commit();
    }
    localObject = new Random();
    int i = ((Random)localObject).nextInt(100);
    int j = ((Random)localObject).nextInt(100);
    double d1 = i;
    double d2 = j;
    MockLocationProviderNew.access$000(this$0, this$0.d1 + (d1 - 50.0D) * 1.0E-7D, this$0.d2 + (d2 - 50.0D) * 1.0E-7D);
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MockLocationProviderNew.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */