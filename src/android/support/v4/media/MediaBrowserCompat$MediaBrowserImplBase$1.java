package android.support.v4.media;

import android.content.ServiceConnection;

class MediaBrowserCompat$MediaBrowserImplBase$1
  implements Runnable
{
  MediaBrowserCompat$MediaBrowserImplBase$1(MediaBrowserCompat.MediaBrowserImplBase paramMediaBrowserImplBase, ServiceConnection paramServiceConnection) {}
  
  public void run()
  {
    if (val$thisConnection == MediaBrowserCompat.MediaBrowserImplBase.access$900(this$0))
    {
      MediaBrowserCompat.MediaBrowserImplBase.access$1000(this$0);
      MediaBrowserCompat.MediaBrowserImplBase.access$1100(this$0).onConnectionFailed();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */