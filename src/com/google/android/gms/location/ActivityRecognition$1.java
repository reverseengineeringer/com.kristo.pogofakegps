package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.location.internal.zzl;

final class ActivityRecognition$1
  extends Api.zza<zzl, Api.ApiOptions.NoOptions>
{
  public zzl zzo(Context paramContext, Looper paramLooper, zzg paramzzg, Api.ApiOptions.NoOptions paramNoOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new zzl(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, "activity_recognition");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.ActivityRecognition.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */