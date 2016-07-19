package android.support.v4.media;

import android.os.Parcel;
import android.support.annotation.NonNull;
import java.util.List;

abstract interface MediaBrowserCompatApi21$SubscriptionCallback
{
  public abstract void onChildrenLoaded(@NonNull String paramString, List<Parcel> paramList);
  
  public abstract void onError(@NonNull String paramString);
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserCompatApi21.SubscriptionCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */