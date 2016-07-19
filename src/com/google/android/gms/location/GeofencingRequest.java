package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GeofencingRequest
  extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<GeofencingRequest> CREATOR = new zzb();
  public static final int INITIAL_TRIGGER_DWELL = 4;
  public static final int INITIAL_TRIGGER_ENTER = 1;
  public static final int INITIAL_TRIGGER_EXIT = 2;
  private final List<ParcelableGeofence> acS;
  private final int acT;
  private final int mVersionCode;
  
  GeofencingRequest(int paramInt1, List<ParcelableGeofence> paramList, int paramInt2)
  {
    mVersionCode = paramInt1;
    acS = paramList;
    acT = paramInt2;
  }
  
  private GeofencingRequest(List<ParcelableGeofence> paramList, int paramInt)
  {
    this(1, paramList, paramInt);
  }
  
  public List<Geofence> getGeofences()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(acS);
    return localArrayList;
  }
  
  public int getInitialTrigger()
  {
    return acT;
  }
  
  public int getVersionCode()
  {
    return mVersionCode;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzb.zza(this, paramParcel, paramInt);
  }
  
  public List<ParcelableGeofence> zzbnf()
  {
    return acS;
  }
  
  public static final class Builder
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */