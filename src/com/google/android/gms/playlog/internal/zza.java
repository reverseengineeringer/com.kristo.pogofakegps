package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zza
  implements Parcelable.Creator<PlayLoggerContext>
{
  static void zza(PlayLoggerContext paramPlayLoggerContext, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzcm(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, packageName, false);
    zzb.zzc(paramParcel, 3, ash);
    zzb.zzc(paramParcel, 4, asi);
    zzb.zza(paramParcel, 5, asj, false);
    zzb.zza(paramParcel, 6, ask, false);
    zzb.zza(paramParcel, 7, asl);
    zzb.zza(paramParcel, 8, asm, false);
    zzb.zza(paramParcel, 9, asn);
    zzb.zzc(paramParcel, 10, aso);
    zzb.zzaj(paramParcel, paramInt);
  }
  
  public PlayLoggerContext zzpw(Parcel paramParcel)
  {
    String str1 = null;
    int i = 0;
    int n = com.google.android.gms.common.internal.safeparcel.zza.zzcl(paramParcel);
    boolean bool2 = true;
    boolean bool1 = false;
    String str2 = null;
    String str3 = null;
    int j = 0;
    int k = 0;
    String str4 = null;
    int m = 0;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = com.google.android.gms.common.internal.safeparcel.zza.zzck(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(i1))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.zza.zzb(paramParcel, i1);
        break;
      case 1: 
        m = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, i1);
        break;
      case 2: 
        str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(paramParcel, i1);
        break;
      case 3: 
        k = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, i1);
        break;
      case 4: 
        j = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, i1);
        break;
      case 5: 
        str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(paramParcel, i1);
        break;
      case 6: 
        str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(paramParcel, i1);
        break;
      case 7: 
        bool2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(paramParcel, i1);
        break;
      case 8: 
        str1 = com.google.android.gms.common.internal.safeparcel.zza.zzq(paramParcel, i1);
        break;
      case 9: 
        bool1 = com.google.android.gms.common.internal.safeparcel.zza.zzc(paramParcel, i1);
        break;
      case 10: 
        i = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, i1);
      }
    }
    if (paramParcel.dataPosition() != n) {
      throw new zza.zza(37 + "Overread allowed size end=" + n, paramParcel);
    }
    return new PlayLoggerContext(m, str4, k, j, str3, str2, bool2, str1, bool1, i);
  }
  
  public PlayLoggerContext[] zzwz(int paramInt)
  {
    return new PlayLoggerContext[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.playlog.internal.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */