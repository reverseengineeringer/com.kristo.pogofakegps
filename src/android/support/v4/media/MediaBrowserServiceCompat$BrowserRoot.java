package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public final class MediaBrowserServiceCompat$BrowserRoot
{
  public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
  public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
  public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";
  private final Bundle mExtras;
  private final String mRootId;
  
  public MediaBrowserServiceCompat$BrowserRoot(@NonNull String paramString, @Nullable Bundle paramBundle)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
    }
    mRootId = paramString;
    mExtras = paramBundle;
  }
  
  public Bundle getExtras()
  {
    return mExtras;
  }
  
  public String getRootId()
  {
    return mRootId;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserServiceCompat.BrowserRoot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */