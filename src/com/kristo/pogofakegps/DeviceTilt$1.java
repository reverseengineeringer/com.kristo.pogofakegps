package com.kristo.pogofakegps;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

class DeviceTilt$1
  implements SensorEventListener
{
  DeviceTilt$1(DeviceTilt paramDeviceTilt, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2) {}
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    switch (sensor.getType())
    {
    default: 
      return;
    case 1: 
      System.arraycopy(values, 0, val$mValuesAccel, 0, 3);
      return;
    }
    System.arraycopy(values, 0, val$mValuesMagnet, 0, 3);
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.DeviceTilt.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */