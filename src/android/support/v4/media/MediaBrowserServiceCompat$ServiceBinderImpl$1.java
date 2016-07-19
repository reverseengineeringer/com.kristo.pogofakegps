package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.util.ArrayMap;
import android.util.Log;

class MediaBrowserServiceCompat$ServiceBinderImpl$1
  implements Runnable
{
  MediaBrowserServiceCompat$ServiceBinderImpl$1(MediaBrowserServiceCompat.ServiceBinderImpl paramServiceBinderImpl, MediaBrowserServiceCompat.ServiceCallbacks paramServiceCallbacks, String paramString, Bundle paramBundle, int paramInt) {}
  
  public void run()
  {
    IBinder localIBinder = val$callbacks.asBinder();
    MediaBrowserServiceCompat.access$200(this$1.this$0).remove(localIBinder);
    MediaBrowserServiceCompat.ConnectionRecord localConnectionRecord = new MediaBrowserServiceCompat.ConnectionRecord(this$1.this$0, null);
    pkg = val$pkg;
    rootHints = val$rootHints;
    callbacks = val$callbacks;
    root = this$1.this$0.onGetRoot(val$pkg, val$uid, val$rootHints);
    if (root == null) {
      Log.i("MBServiceCompat", "No root for client " + val$pkg + " from service " + getClass().getName());
    }
    for (;;)
    {
      try
      {
        val$callbacks.onConnectFailed();
        return;
      }
      catch (RemoteException localRemoteException1)
      {
        Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + val$pkg);
        return;
      }
      try
      {
        MediaBrowserServiceCompat.access$200(this$1.this$0).put(localRemoteException1, localConnectionRecord);
        if (this$1.this$0.mSession != null)
        {
          val$callbacks.onConnect(root.getRootId(), this$1.this$0.mSession, root.getExtras());
          return;
        }
      }
      catch (RemoteException localRemoteException2)
      {
        Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + val$pkg);
        MediaBrowserServiceCompat.access$200(this$1.this$0).remove(localRemoteException1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */