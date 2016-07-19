package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationRequest;

class zzd$8
  extends zzd.zza
{
  zzd$8(zzd paramzzd, GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    super(paramGoogleApiClient);
  }
  
  protected void zza(zzl paramzzl)
    throws RemoteException
  {
    zzd.zzb localzzb = new zzd.zzb(this);
    paramzzl.zza(adA, adv, localzzb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.zzd.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */