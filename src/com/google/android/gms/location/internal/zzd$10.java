package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

class zzd$10
  extends zzd.zza
{
  zzd$10(zzd paramzzd, GoogleApiClient paramGoogleApiClient, PendingIntent paramPendingIntent)
  {
    super(paramGoogleApiClient);
  }
  
  protected void zza(zzl paramzzl)
    throws RemoteException
  {
    zzd.zzb localzzb = new zzd.zzb(this);
    paramzzl.zza(adv, localzzb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.zzd.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */