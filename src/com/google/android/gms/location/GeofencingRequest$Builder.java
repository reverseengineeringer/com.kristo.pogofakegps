package com.google.android.gms.location;

import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class GeofencingRequest$Builder
{
  private final List<ParcelableGeofence> acS = new ArrayList();
  private int acT = 5;
  
  public static int zzsv(int paramInt)
  {
    return paramInt & 0x7;
  }
  
  public Builder addGeofence(Geofence paramGeofence)
  {
    zzab.zzb(paramGeofence, "geofence can't be null.");
    zzab.zzb(paramGeofence instanceof ParcelableGeofence, "Geofence must be created using Geofence.Builder.");
    acS.add((ParcelableGeofence)paramGeofence);
    return this;
  }
  
  public Builder addGeofences(List<Geofence> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {}
    for (;;)
    {
      return this;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Geofence localGeofence = (Geofence)paramList.next();
        if (localGeofence != null) {
          addGeofence(localGeofence);
        }
      }
    }
  }
  
  public GeofencingRequest build()
  {
    if (!acS.isEmpty()) {}
    for (boolean bool = true;; bool = false)
    {
      zzab.zzb(bool, "No geofence has been added to this request.");
      return new GeofencingRequest(acS, acT, null);
    }
  }
  
  public Builder setInitialTrigger(int paramInt)
  {
    acT = zzsv(paramInt);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */