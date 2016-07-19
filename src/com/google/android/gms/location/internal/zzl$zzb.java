package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpr.zzb;
import com.google.android.gms.location.LocationStatusCodes;

final class zzl$zzb
  extends zzh.zza
{
  private zzpr.zzb<Status> adS;
  
  public zzl$zzb(zzpr.zzb<Status> paramzzb)
  {
    adS = paramzzb;
  }
  
  private void zzti(int paramInt)
  {
    if (adS == null)
    {
      Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times");
      return;
    }
    Status localStatus = LocationStatusCodes.zztf(LocationStatusCodes.zzte(paramInt));
    adS.setResult(localStatus);
    adS = null;
  }
  
  public void zza(int paramInt, PendingIntent paramPendingIntent)
  {
    zzti(paramInt);
  }
  
  public void zza(int paramInt, String[] paramArrayOfString)
  {
    Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
  }
  
  public void zzb(int paramInt, String[] paramArrayOfString)
  {
    zzti(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.zzl.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */