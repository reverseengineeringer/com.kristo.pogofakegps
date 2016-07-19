package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class LocationResult
  extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<LocationResult> CREATOR = new zzf();
  static final List<Location> adi = ;
  private final List<Location> adj;
  private final int mVersionCode;
  
  LocationResult(int paramInt, List<Location> paramList)
  {
    mVersionCode = paramInt;
    adj = paramList;
  }
  
  public static LocationResult create(List<Location> paramList)
  {
    Object localObject = paramList;
    if (paramList == null) {
      localObject = adi;
    }
    return new LocationResult(2, (List)localObject);
  }
  
  public static LocationResult extractResult(Intent paramIntent)
  {
    if (!hasResult(paramIntent)) {
      return null;
    }
    return (LocationResult)paramIntent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
  }
  
  public static boolean hasResult(Intent paramIntent)
  {
    if (paramIntent == null) {
      return false;
    }
    return paramIntent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof LocationResult)) {
      return false;
    }
    paramObject = (LocationResult)paramObject;
    if (adj.size() != adj.size()) {
      return false;
    }
    paramObject = adj.iterator();
    Iterator localIterator = adj.iterator();
    while (((Iterator)paramObject).hasNext())
    {
      Location localLocation1 = (Location)localIterator.next();
      Location localLocation2 = (Location)((Iterator)paramObject).next();
      if (localLocation1.getTime() != localLocation2.getTime()) {
        return false;
      }
    }
    return true;
  }
  
  public Location getLastLocation()
  {
    int i = adj.size();
    if (i == 0) {
      return null;
    }
    return (Location)adj.get(i - 1);
  }
  
  @NonNull
  public List<Location> getLocations()
  {
    return adj;
  }
  
  int getVersionCode()
  {
    return mVersionCode;
  }
  
  public int hashCode()
  {
    Iterator localIterator = adj.iterator();
    long l;
    for (int i = 17; localIterator.hasNext(); i = (int)(l ^ l >>> 32) + i * 31) {
      l = ((Location)localIterator.next()).getTime();
    }
    return i;
  }
  
  public String toString()
  {
    String str = String.valueOf(adj);
    return String.valueOf(str).length() + 27 + "LocationResult[locations: " + str + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzf.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */