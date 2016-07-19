package android.support.v4.media.session;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.media.RatingCompat;

class MediaSessionCompat$Callback$StubApi21
  implements MediaSessionCompatApi21.Callback
{
  private MediaSessionCompat$Callback$StubApi21(MediaSessionCompat.Callback paramCallback) {}
  
  public void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
  {
    this$0.onCommand(paramString, paramBundle, paramResultReceiver);
  }
  
  public void onCustomAction(String paramString, Bundle paramBundle)
  {
    if (paramString.equals("android.support.v4.media.session.action.PLAY_FROM_URI"))
    {
      paramString = (Uri)paramBundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
      paramBundle = (Bundle)paramBundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
      this$0.onPlayFromUri(paramString, paramBundle);
      return;
    }
    if (paramString.equals("android.support.v4.media.session.action.PREPARE"))
    {
      this$0.onPrepare();
      return;
    }
    if (paramString.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"))
    {
      paramString = paramBundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
      paramBundle = paramBundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
      this$0.onPrepareFromMediaId(paramString, paramBundle);
      return;
    }
    if (paramString.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH"))
    {
      paramString = paramBundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
      paramBundle = paramBundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
      this$0.onPrepareFromSearch(paramString, paramBundle);
      return;
    }
    if (paramString.equals("android.support.v4.media.session.action.PREPARE_FROM_URI"))
    {
      paramString = (Uri)paramBundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
      paramBundle = paramBundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
      this$0.onPrepareFromUri(paramString, paramBundle);
      return;
    }
    this$0.onCustomAction(paramString, paramBundle);
  }
  
  public void onFastForward()
  {
    this$0.onFastForward();
  }
  
  public boolean onMediaButtonEvent(Intent paramIntent)
  {
    return this$0.onMediaButtonEvent(paramIntent);
  }
  
  public void onPause()
  {
    this$0.onPause();
  }
  
  public void onPlay()
  {
    this$0.onPlay();
  }
  
  public void onPlayFromMediaId(String paramString, Bundle paramBundle)
  {
    this$0.onPlayFromMediaId(paramString, paramBundle);
  }
  
  public void onPlayFromSearch(String paramString, Bundle paramBundle)
  {
    this$0.onPlayFromSearch(paramString, paramBundle);
  }
  
  public void onRewind()
  {
    this$0.onRewind();
  }
  
  public void onSeekTo(long paramLong)
  {
    this$0.onSeekTo(paramLong);
  }
  
  public void onSetRating(Object paramObject)
  {
    this$0.onSetRating(RatingCompat.fromRating(paramObject));
  }
  
  public void onSkipToNext()
  {
    this$0.onSkipToNext();
  }
  
  public void onSkipToPrevious()
  {
    this$0.onSkipToPrevious();
  }
  
  public void onSkipToQueueItem(long paramLong)
  {
    this$0.onSkipToQueueItem(paramLong);
  }
  
  public void onStop()
  {
    this$0.onStop();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.Callback.StubApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */