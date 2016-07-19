package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GeofencingEvent
{
  private final int acP;
  private final List<Geofence> acQ;
  private final Location acR;
  private final int zzbym;
  
  private GeofencingEvent(int paramInt1, int paramInt2, List<Geofence> paramList, Location paramLocation)
  {
    zzbym = paramInt1;
    acP = paramInt2;
    acQ = paramList;
    acR = paramLocation;
  }
  
  public static GeofencingEvent fromIntent(Intent paramIntent)
  {
    if (paramIntent == null) {
      return null;
    }
    return new GeofencingEvent(paramIntent.getIntExtra("gms_error_code", -1), zzv(paramIntent), zzw(paramIntent), (Location)paramIntent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
  }
  
  private static int zzv(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
    if (i == -1) {}
    while ((i != 1) && (i != 2) && (i != 4)) {
      return -1;
    }
    return i;
  }
  
  private static List<Geofence> zzw(Intent paramIntent)
  {
    Object localObject = (ArrayList)paramIntent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
    if (localObject == null) {
      return null;
    }
    paramIntent = new ArrayList(((ArrayList)localObject).size());
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramIntent.add(ParcelableGeofence.zzaa((byte[])((Iterator)localObject).next()));
    }
    return paramIntent;
  }
  
  public int getErrorCode()
  {
    return zzbym;
  }
  
  public int getGeofenceTransition()
  {
    return acP;
  }
  
  public List<Geofence> getTriggeringGeofences()
  {
    return acQ;
  }
  
  public Location getTriggeringLocation()
  {
    return acR;
  }
  
  public boolean hasError()
  {
    return zzbym != -1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */