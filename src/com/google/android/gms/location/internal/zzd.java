package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpr.zzb;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationServices.zza;

public class zzd
  implements FusedLocationProviderApi
{
  public PendingResult<Status> flushLocations(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient.zzd(new zza(paramGoogleApiClient)
    {
      protected void zza(zzl paramAnonymouszzl)
        throws RemoteException
      {
        paramAnonymouszzl.zza(new zzd.zzb(this));
      }
    });
  }
  
  public Location getLastLocation(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient = LocationServices.zzj(paramGoogleApiClient);
    try
    {
      paramGoogleApiClient = paramGoogleApiClient.getLastLocation();
      return paramGoogleApiClient;
    }
    catch (Exception paramGoogleApiClient) {}
    return null;
  }
  
  public LocationAvailability getLocationAvailability(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient = LocationServices.zzj(paramGoogleApiClient);
    try
    {
      paramGoogleApiClient = paramGoogleApiClient.zzbnl();
      return paramGoogleApiClient;
    }
    catch (Exception paramGoogleApiClient) {}
    return null;
  }
  
  public PendingResult<Status> removeLocationUpdates(GoogleApiClient paramGoogleApiClient, final PendingIntent paramPendingIntent)
  {
    paramGoogleApiClient.zzd(new zza(paramGoogleApiClient)
    {
      protected void zza(zzl paramAnonymouszzl)
        throws RemoteException
      {
        zzd.zzb localzzb = new zzd.zzb(this);
        paramAnonymouszzl.zza(paramPendingIntent, localzzb);
      }
    });
  }
  
  public PendingResult<Status> removeLocationUpdates(GoogleApiClient paramGoogleApiClient, final LocationCallback paramLocationCallback)
  {
    paramGoogleApiClient.zzd(new zza(paramGoogleApiClient)
    {
      protected void zza(zzl paramAnonymouszzl)
        throws RemoteException
      {
        zzd.zzb localzzb = new zzd.zzb(this);
        paramAnonymouszzl.zza(paramLocationCallback, localzzb);
      }
    });
  }
  
  public PendingResult<Status> removeLocationUpdates(GoogleApiClient paramGoogleApiClient, final LocationListener paramLocationListener)
  {
    paramGoogleApiClient.zzd(new zza(paramGoogleApiClient)
    {
      protected void zza(zzl paramAnonymouszzl)
        throws RemoteException
      {
        zzd.zzb localzzb = new zzd.zzb(this);
        paramAnonymouszzl.zza(paramLocationListener, localzzb);
      }
    });
  }
  
  public PendingResult<Status> requestLocationUpdates(GoogleApiClient paramGoogleApiClient, final LocationRequest paramLocationRequest, final PendingIntent paramPendingIntent)
  {
    paramGoogleApiClient.zzd(new zza(paramGoogleApiClient)
    {
      protected void zza(zzl paramAnonymouszzl)
        throws RemoteException
      {
        zzd.zzb localzzb = new zzd.zzb(this);
        paramAnonymouszzl.zza(paramLocationRequest, paramPendingIntent, localzzb);
      }
    });
  }
  
  public PendingResult<Status> requestLocationUpdates(GoogleApiClient paramGoogleApiClient, final LocationRequest paramLocationRequest, final LocationCallback paramLocationCallback, final Looper paramLooper)
  {
    paramGoogleApiClient.zzd(new zza(paramGoogleApiClient)
    {
      protected void zza(zzl paramAnonymouszzl)
        throws RemoteException
      {
        zzd.zzb localzzb = new zzd.zzb(this);
        paramAnonymouszzl.zza(LocationRequestInternal.zzb(paramLocationRequest), paramLocationCallback, paramLooper, localzzb);
      }
    });
  }
  
  public PendingResult<Status> requestLocationUpdates(GoogleApiClient paramGoogleApiClient, final LocationRequest paramLocationRequest, final LocationListener paramLocationListener)
  {
    paramGoogleApiClient.zzd(new zza(paramGoogleApiClient)
    {
      protected void zza(zzl paramAnonymouszzl)
        throws RemoteException
      {
        zzd.zzb localzzb = new zzd.zzb(this);
        paramAnonymouszzl.zza(paramLocationRequest, paramLocationListener, null, localzzb);
      }
    });
  }
  
  public PendingResult<Status> requestLocationUpdates(GoogleApiClient paramGoogleApiClient, final LocationRequest paramLocationRequest, final LocationListener paramLocationListener, final Looper paramLooper)
  {
    paramGoogleApiClient.zzd(new zza(paramGoogleApiClient)
    {
      protected void zza(zzl paramAnonymouszzl)
        throws RemoteException
      {
        zzd.zzb localzzb = new zzd.zzb(this);
        paramAnonymouszzl.zza(paramLocationRequest, paramLocationListener, paramLooper, localzzb);
      }
    });
  }
  
  public PendingResult<Status> setMockLocation(GoogleApiClient paramGoogleApiClient, final Location paramLocation)
  {
    paramGoogleApiClient.zzd(new zza(paramGoogleApiClient)
    {
      protected void zza(zzl paramAnonymouszzl)
        throws RemoteException
      {
        paramAnonymouszzl.zzc(paramLocation);
        zzc(Status.sg);
      }
    });
  }
  
  public PendingResult<Status> setMockMode(GoogleApiClient paramGoogleApiClient, final boolean paramBoolean)
  {
    paramGoogleApiClient.zzd(new zza(paramGoogleApiClient)
    {
      protected void zza(zzl paramAnonymouszzl)
        throws RemoteException
      {
        paramAnonymouszzl.zzbx(paramBoolean);
        zzc(Status.sg);
      }
    });
  }
  
  private static abstract class zza
    extends LocationServices.zza<Status>
  {
    public zza(GoogleApiClient paramGoogleApiClient)
    {
      super();
    }
    
    public Status zzb(Status paramStatus)
    {
      return paramStatus;
    }
  }
  
  private static class zzb
    extends zzg.zza
  {
    private final zzpr.zzb<Status> zj;
    
    public zzb(zzpr.zzb<Status> paramzzb)
    {
      zj = paramzzb;
    }
    
    public void zza(FusedLocationProviderResult paramFusedLocationProviderResult)
    {
      zj.setResult(paramFusedLocationProviderResult.getStatus());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */