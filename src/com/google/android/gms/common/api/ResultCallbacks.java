package com.google.android.gms.common.api;

import android.support.annotation.NonNull;
import android.util.Log;

public abstract class ResultCallbacks<R extends Result>
  implements ResultCallback<R>
{
  public abstract void onFailure(@NonNull Status paramStatus);
  
  public final void onResult(@NonNull R paramR)
  {
    Status localStatus = paramR.getStatus();
    if (localStatus.isSuccess()) {
      onSuccess(paramR);
    }
    do
    {
      return;
      onFailure(localStatus);
    } while (!(paramR instanceof Releasable));
    try
    {
      ((Releasable)paramR).release();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      paramR = String.valueOf(paramR);
      Log.w("ResultCallbacks", String.valueOf(paramR).length() + 18 + "Unable to release " + paramR, localRuntimeException);
    }
  }
  
  public abstract void onSuccess(@NonNull R paramR);
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.ResultCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */