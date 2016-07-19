package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class ActivityRecognitionResult
  extends AbstractSafeParcelable
{
  public static final ActivityRecognitionResultCreator CREATOR = new ActivityRecognitionResultCreator();
  long acA;
  int acB;
  List<DetectedActivity> acy;
  long acz;
  Bundle extras;
  private final int mVersionCode;
  
  public ActivityRecognitionResult(int paramInt1, List<DetectedActivity> paramList, long paramLong1, long paramLong2, int paramInt2, Bundle paramBundle)
  {
    mVersionCode = paramInt1;
    acy = paramList;
    acz = paramLong1;
    acA = paramLong2;
    acB = paramInt2;
    extras = paramBundle;
  }
  
  public ActivityRecognitionResult(DetectedActivity paramDetectedActivity, long paramLong1, long paramLong2)
  {
    this(paramDetectedActivity, paramLong1, paramLong2, 0, null);
  }
  
  public ActivityRecognitionResult(DetectedActivity paramDetectedActivity, long paramLong1, long paramLong2, int paramInt, Bundle paramBundle)
  {
    this(Collections.singletonList(paramDetectedActivity), paramLong1, paramLong2, paramInt, paramBundle);
  }
  
  public ActivityRecognitionResult(List<DetectedActivity> paramList, long paramLong1, long paramLong2)
  {
    this(paramList, paramLong1, paramLong2, 0, null);
  }
  
  public ActivityRecognitionResult(List<DetectedActivity> paramList, long paramLong1, long paramLong2, int paramInt, Bundle paramBundle)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      bool1 = true;
      zzab.zzb(bool1, "Must have at least 1 detected activity");
      if ((paramLong1 <= 0L) || (paramLong2 <= 0L)) {
        break label94;
      }
    }
    label94:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      zzab.zzb(bool1, "Must set times");
      mVersionCode = 2;
      acy = paramList;
      acz = paramLong1;
      acA = paramLong2;
      acB = paramInt;
      extras = paramBundle;
      return;
      bool1 = false;
      break;
    }
  }
  
  public static ActivityRecognitionResult extractResult(Intent paramIntent)
  {
    if (!hasResult(paramIntent)) {
      return null;
    }
    paramIntent = paramIntent.getExtras().get("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
    if ((paramIntent instanceof byte[])) {
      return (ActivityRecognitionResult)zzc.zza((byte[])paramIntent, CREATOR);
    }
    if ((paramIntent instanceof ActivityRecognitionResult)) {
      return (ActivityRecognitionResult)paramIntent;
    }
    return null;
  }
  
  public static boolean hasResult(Intent paramIntent)
  {
    if (paramIntent == null) {
      return false;
    }
    return paramIntent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
  }
  
  private static boolean zzc(Bundle paramBundle1, Bundle paramBundle2)
  {
    if ((paramBundle1 == null) && (paramBundle2 == null)) {
      return true;
    }
    if (((paramBundle1 == null) && (paramBundle2 != null)) || ((paramBundle1 != null) && (paramBundle2 == null))) {
      return false;
    }
    if (paramBundle1.size() != paramBundle2.size()) {
      return false;
    }
    Iterator localIterator = paramBundle1.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!paramBundle2.containsKey(str)) {
        return false;
      }
      if (paramBundle1.get(str) == null)
      {
        if (paramBundle2.get(str) != null) {
          return false;
        }
      }
      else if ((paramBundle1.get(str) instanceof Bundle))
      {
        if (!zzc(paramBundle1.getBundle(str), paramBundle2.getBundle(str))) {
          return false;
        }
      }
      else if (!paramBundle1.get(str).equals(paramBundle2.get(str))) {
        return false;
      }
    }
    return true;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (ActivityRecognitionResult)paramObject;
    } while ((acz == acz) && (acA == acA) && (acB == acB) && (zzaa.equal(acy, acy)) && (zzc(extras, extras)));
    return false;
  }
  
  public int getActivityConfidence(int paramInt)
  {
    Iterator localIterator = acy.iterator();
    while (localIterator.hasNext())
    {
      DetectedActivity localDetectedActivity = (DetectedActivity)localIterator.next();
      if (localDetectedActivity.getType() == paramInt) {
        return localDetectedActivity.getConfidence();
      }
    }
    return 0;
  }
  
  public long getElapsedRealtimeMillis()
  {
    return acA;
  }
  
  public DetectedActivity getMostProbableActivity()
  {
    return (DetectedActivity)acy.get(0);
  }
  
  public List<DetectedActivity> getProbableActivities()
  {
    return acy;
  }
  
  public long getTime()
  {
    return acz;
  }
  
  public int getVersionCode()
  {
    return mVersionCode;
  }
  
  public int hashCode()
  {
    return zzaa.hashCode(new Object[] { Long.valueOf(acz), Long.valueOf(acA), Integer.valueOf(acB), acy, extras });
  }
  
  public String toString()
  {
    String str = String.valueOf(acy);
    long l1 = acz;
    long l2 = acA;
    return String.valueOf(str).length() + 124 + "ActivityRecognitionResult [probableActivities=" + str + ", timeMillis=" + l1 + ", elapsedRealtimeMillis=" + l2 + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ActivityRecognitionResultCreator.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.ActivityRecognitionResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */