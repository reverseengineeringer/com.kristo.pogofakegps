package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzpr.zzb;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.LocationStatusCodes;
import java.util.List;

public class zzl
  extends zzb
{
  private final zzk adR = new zzk(paramContext, ady);
  
  public zzl(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString)
  {
    this(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString, com.google.android.gms.common.internal.zzg.zzcd(paramContext));
  }
  
  public zzl(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString, com.google.android.gms.common.internal.zzg paramzzg)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString, paramzzg);
  }
  
  public void disconnect()
  {
    synchronized (adR)
    {
      boolean bool = isConnected();
      if (bool) {}
      try
      {
        adR.removeAllListeners();
        adR.zzbnm();
        super.disconnect();
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", localException);
        }
      }
    }
  }
  
  public Location getLastLocation()
  {
    return adR.getLastLocation();
  }
  
  public void zza(long paramLong, PendingIntent paramPendingIntent)
    throws RemoteException
  {
    zzarv();
    zzab.zzaa(paramPendingIntent);
    if (paramLong >= 0L) {}
    for (boolean bool = true;; bool = false)
    {
      zzab.zzb(bool, "detectionIntervalMillis must be >= 0");
      ((zzi)zzarw()).zza(paramLong, true, paramPendingIntent);
      return;
    }
  }
  
  public void zza(PendingIntent paramPendingIntent, zzpr.zzb<Status> paramzzb)
    throws RemoteException
  {
    zzarv();
    zzab.zzb(paramPendingIntent, "PendingIntent must be specified.");
    zzab.zzb(paramzzb, "ResultHolder not provided.");
    paramzzb = new zzb(paramzzb);
    ((zzi)zzarw()).zza(paramPendingIntent, paramzzb, getContext().getPackageName());
  }
  
  public void zza(PendingIntent paramPendingIntent, zzg paramzzg)
    throws RemoteException
  {
    adR.zza(paramPendingIntent, paramzzg);
  }
  
  public void zza(GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent, zzpr.zzb<Status> paramzzb)
    throws RemoteException
  {
    zzarv();
    zzab.zzb(paramGeofencingRequest, "geofencingRequest can't be null.");
    zzab.zzb(paramPendingIntent, "PendingIntent must be specified.");
    zzab.zzb(paramzzb, "ResultHolder not provided.");
    paramzzb = new zza(paramzzb);
    ((zzi)zzarw()).zza(paramGeofencingRequest, paramPendingIntent, paramzzb);
  }
  
  public void zza(LocationCallback paramLocationCallback, zzg paramzzg)
    throws RemoteException
  {
    adR.zza(paramLocationCallback, paramzzg);
  }
  
  public void zza(LocationListener paramLocationListener, zzg paramzzg)
    throws RemoteException
  {
    adR.zza(paramLocationListener, paramzzg);
  }
  
  public void zza(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent, zzg paramzzg)
    throws RemoteException
  {
    adR.zza(paramLocationRequest, paramPendingIntent, paramzzg);
  }
  
  public void zza(LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper, zzg paramzzg)
    throws RemoteException
  {
    synchronized (adR)
    {
      adR.zza(paramLocationRequest, paramLocationListener, paramLooper, paramzzg);
      return;
    }
  }
  
  public void zza(LocationSettingsRequest paramLocationSettingsRequest, zzpr.zzb<LocationSettingsResult> paramzzb, String paramString)
    throws RemoteException
  {
    boolean bool2 = true;
    zzarv();
    if (paramLocationSettingsRequest != null)
    {
      bool1 = true;
      zzab.zzb(bool1, "locationSettingsRequest can't be null nor empty.");
      if (paramzzb == null) {
        break label67;
      }
    }
    label67:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      zzab.zzb(bool1, "listener can't be null.");
      paramzzb = new zzc(paramzzb);
      ((zzi)zzarw()).zza(paramLocationSettingsRequest, paramzzb, paramString);
      return;
      bool1 = false;
      break;
    }
  }
  
  public void zza(LocationRequestInternal paramLocationRequestInternal, LocationCallback paramLocationCallback, Looper paramLooper, zzg paramzzg)
    throws RemoteException
  {
    synchronized (adR)
    {
      adR.zza(paramLocationRequestInternal, paramLocationCallback, paramLooper, paramzzg);
      return;
    }
  }
  
  public void zza(zzg paramzzg)
    throws RemoteException
  {
    adR.zza(paramzzg);
  }
  
  public void zza(List<String> paramList, zzpr.zzb<Status> paramzzb)
    throws RemoteException
  {
    zzarv();
    if ((paramList != null) && (paramList.size() > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      zzab.zzb(bool, "geofenceRequestIds can't be null nor empty.");
      zzab.zzb(paramzzb, "ResultHolder not provided.");
      paramList = (String[])paramList.toArray(new String[0]);
      paramzzb = new zzb(paramzzb);
      ((zzi)zzarw()).zza(paramList, paramzzb, getContext().getPackageName());
      return;
    }
  }
  
  public void zzb(PendingIntent paramPendingIntent)
    throws RemoteException
  {
    zzarv();
    zzab.zzaa(paramPendingIntent);
    ((zzi)zzarw()).zzb(paramPendingIntent);
  }
  
  public LocationAvailability zzbnl()
  {
    return adR.zzbnl();
  }
  
  public void zzbx(boolean paramBoolean)
    throws RemoteException
  {
    adR.zzbx(paramBoolean);
  }
  
  public void zzc(Location paramLocation)
    throws RemoteException
  {
    adR.zzc(paramLocation);
  }
  
  private static final class zza
    extends zzh.zza
  {
    private zzpr.zzb<Status> adS;
    
    public zza(zzpr.zzb<Status> paramzzb)
    {
      adS = paramzzb;
    }
    
    public void zza(int paramInt, PendingIntent paramPendingIntent)
    {
      Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByPendingIntentResult");
    }
    
    public void zza(int paramInt, String[] paramArrayOfString)
    {
      if (adS == null)
      {
        Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
        return;
      }
      paramArrayOfString = LocationStatusCodes.zztf(LocationStatusCodes.zzte(paramInt));
      adS.setResult(paramArrayOfString);
      adS = null;
    }
    
    public void zzb(int paramInt, String[] paramArrayOfString)
    {
      Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByRequestIdsResult");
    }
  }
  
  private static final class zzb
    extends zzh.zza
  {
    private zzpr.zzb<Status> adS;
    
    public zzb(zzpr.zzb<Status> paramzzb)
    {
      adS = paramzzb;
    }
    
    private void zzti(int paramInt)
    {
      if (adS == null)
      {
        Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times");
        return;
      }
      Status localStatus = LocationStatusCodes.zztf(LocationStatusCodes.zzte(paramInt));
      adS.setResult(localStatus);
      adS = null;
    }
    
    public void zza(int paramInt, PendingIntent paramPendingIntent)
    {
      zzti(paramInt);
    }
    
    public void zza(int paramInt, String[] paramArrayOfString)
    {
      Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
    }
    
    public void zzb(int paramInt, String[] paramArrayOfString)
    {
      zzti(paramInt);
    }
  }
  
  private static final class zzc
    extends zzj.zza
  {
    private zzpr.zzb<LocationSettingsResult> adS;
    
    public zzc(zzpr.zzb<LocationSettingsResult> paramzzb)
    {
      if (paramzzb != null) {}
      for (boolean bool = true;; bool = false)
      {
        zzab.zzb(bool, "listener can't be null.");
        adS = paramzzb;
        return;
      }
    }
    
    public void zza(LocationSettingsResult paramLocationSettingsResult)
      throws RemoteException
    {
      adS.setResult(paramLocationSettingsResult);
      adS = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.zzl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */