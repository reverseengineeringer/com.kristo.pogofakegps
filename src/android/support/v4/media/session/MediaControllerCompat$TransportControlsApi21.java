package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.RatingCompat;

class MediaControllerCompat$TransportControlsApi21
  extends MediaControllerCompat.TransportControls
{
  protected final Object mControlsObj;
  
  public MediaControllerCompat$TransportControlsApi21(Object paramObject)
  {
    mControlsObj = paramObject;
  }
  
  public void fastForward()
  {
    MediaControllerCompatApi21.TransportControls.fastForward(mControlsObj);
  }
  
  public void pause()
  {
    MediaControllerCompatApi21.TransportControls.pause(mControlsObj);
  }
  
  public void play()
  {
    MediaControllerCompatApi21.TransportControls.play(mControlsObj);
  }
  
  public void playFromMediaId(String paramString, Bundle paramBundle)
  {
    MediaControllerCompatApi21.TransportControls.playFromMediaId(mControlsObj, paramString, paramBundle);
  }
  
  public void playFromSearch(String paramString, Bundle paramBundle)
  {
    MediaControllerCompatApi21.TransportControls.playFromSearch(mControlsObj, paramString, paramBundle);
  }
  
  public void playFromUri(Uri paramUri, Bundle paramBundle)
  {
    if ((paramUri == null) || (Uri.EMPTY.equals(paramUri))) {
      throw new IllegalArgumentException("You must specify a non-empty Uri for playFromUri.");
    }
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("android.support.v4.media.session.action.ARGUMENT_URI", paramUri);
    localBundle.putParcelable("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
    sendCustomAction("android.support.v4.media.session.action.PLAY_FROM_URI", localBundle);
  }
  
  public void prepare()
  {
    sendCustomAction("android.support.v4.media.session.action.PREPARE", null);
  }
  
  public void prepareFromMediaId(String paramString, Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID", paramString);
    localBundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
    sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID", localBundle);
  }
  
  public void prepareFromSearch(String paramString, Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("android.support.v4.media.session.action.ARGUMENT_QUERY", paramString);
    localBundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
    sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_SEARCH", localBundle);
  }
  
  public void prepareFromUri(Uri paramUri, Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("android.support.v4.media.session.action.ARGUMENT_URI", paramUri);
    localBundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
    sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_URI", localBundle);
  }
  
  public void rewind()
  {
    MediaControllerCompatApi21.TransportControls.rewind(mControlsObj);
  }
  
  public void seekTo(long paramLong)
  {
    MediaControllerCompatApi21.TransportControls.seekTo(mControlsObj, paramLong);
  }
  
  public void sendCustomAction(PlaybackStateCompat.CustomAction paramCustomAction, Bundle paramBundle)
  {
    MediaControllerCompatApi21.TransportControls.sendCustomAction(mControlsObj, paramCustomAction.getAction(), paramBundle);
  }
  
  public void sendCustomAction(String paramString, Bundle paramBundle)
  {
    MediaControllerCompatApi21.TransportControls.sendCustomAction(mControlsObj, paramString, paramBundle);
  }
  
  public void setRating(RatingCompat paramRatingCompat)
  {
    Object localObject = mControlsObj;
    if (paramRatingCompat != null) {}
    for (paramRatingCompat = paramRatingCompat.getRating();; paramRatingCompat = null)
    {
      MediaControllerCompatApi21.TransportControls.setRating(localObject, paramRatingCompat);
      return;
    }
  }
  
  public void skipToNext()
  {
    MediaControllerCompatApi21.TransportControls.skipToNext(mControlsObj);
  }
  
  public void skipToPrevious()
  {
    MediaControllerCompatApi21.TransportControls.skipToPrevious(mControlsObj);
  }
  
  public void skipToQueueItem(long paramLong)
  {
    MediaControllerCompatApi21.TransportControls.skipToQueueItem(mControlsObj, paramLong);
  }
  
  public void stop()
  {
    MediaControllerCompatApi21.TransportControls.stop(mControlsObj);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.TransportControlsApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */