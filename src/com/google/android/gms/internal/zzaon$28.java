package com.google.android.gms.internal;

import java.io.IOException;

final class zzaon$28
  extends zzank<Number>
{
  public void zza(zzaor paramzzaor, Number paramNumber)
    throws IOException
  {
    paramzzaor.zza(paramNumber);
  }
  
  public Number zzg(zzaop paramzzaop)
    throws IOException
  {
    if (paramzzaop.h() == zzaoq.bhH)
    {
      paramzzaop.nextNull();
      return null;
    }
    try
    {
      byte b = (byte)paramzzaop.nextInt();
      return Byte.valueOf(b);
    }
    catch (NumberFormatException paramzzaop)
    {
      throw new zzanh(paramzzaop);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzaon.28
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */