package com.google.android.gms.common.api;

import com.google.android.gms.internal.zzpt;

final class PendingResults$zzc<R extends Result>
  extends zzpt<R>
{
  public PendingResults$zzc(GoogleApiClient paramGoogleApiClient)
  {
    super(paramGoogleApiClient);
  }
  
  protected R zzc(Status paramStatus)
  {
    throw new UnsupportedOperationException("Creating failed results is not supported");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.PendingResults.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */