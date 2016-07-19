package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public abstract class FastSafeParcelableJsonResponse
  extends FastJsonResponse
  implements SafeParcelable
{
  public final int describeContents()
  {
    return 0;
  }
  
  public Object zzht(String paramString)
  {
    return null;
  }
  
  public boolean zzhu(String paramString)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */