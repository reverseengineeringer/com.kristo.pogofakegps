package com.google.android.gms.location.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzd.zza;

class zzk$zza
  extends zzd.zza
{
  private Handler adO;
  
  zzk$zza(final LocationCallback paramLocationCallback, Looper paramLooper)
  {
    Looper localLooper = paramLooper;
    if (paramLooper == null)
    {
      localLooper = Looper.myLooper();
      if (localLooper == null) {
        break label45;
      }
    }
    label45:
    for (boolean bool = true;; bool = false)
    {
      zzab.zza(bool, "Can't create handler inside thread that has not called Looper.prepare()");
      adO = new Handler(localLooper)
      {
        public void handleMessage(Message paramAnonymousMessage)
        {
          switch (what)
          {
          default: 
            return;
          case 0: 
            paramLocationCallback.onLocationResult((LocationResult)obj);
            return;
          }
          paramLocationCallback.onLocationAvailability((LocationAvailability)obj);
        }
      };
      return;
    }
  }
  
  private void zzb(int paramInt, Object paramObject)
  {
    if (adO == null)
    {
      Log.e("LocationClientHelper", "Received a data in client after calling removeLocationUpdates.");
      return;
    }
    Message localMessage = Message.obtain();
    what = paramInt;
    obj = paramObject;
    adO.sendMessage(localMessage);
  }
  
  public void onLocationAvailability(LocationAvailability paramLocationAvailability)
  {
    zzb(1, paramLocationAvailability);
  }
  
  public void onLocationResult(LocationResult paramLocationResult)
  {
    zzb(0, paramLocationResult);
  }
  
  public void release()
  {
    adO = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.zzk.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */