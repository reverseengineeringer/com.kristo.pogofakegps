package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.support.annotation.BinderThread;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;

public final class zzd$zzk
  extends zzd.zza
{
  @BinderThread
  public zzd$zzk(zzd paramzzd, int paramInt, @Nullable Bundle paramBundle)
  {
    super(paramzzd, paramInt, paramBundle);
  }
  
  protected boolean zzarz()
  {
    zzd.zzb(xv).zzh(ConnectionResult.qR);
    return true;
  }
  
  protected void zzl(ConnectionResult paramConnectionResult)
  {
    zzd.zzb(xv).zzh(paramConnectionResult);
    xv.onConnectionFailed(paramConnectionResult);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzd.zzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */