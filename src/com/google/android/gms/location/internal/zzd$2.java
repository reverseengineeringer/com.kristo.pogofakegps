package com.google.android.gms.location.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationCallback;

class zzd$2
  extends zzd.zza
{
  zzd$2(zzd paramzzd, GoogleApiClient paramGoogleApiClient, LocationCallback paramLocationCallback)
  {
    super(paramGoogleApiClient);
  }
  
  protected void zza(zzl paramzzl)
    throws RemoteException
  {
    zzd.zzb localzzb = new zzd.zzb(this);
    paramzzl.zza(adD, localzzb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.zzd.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */