package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Result;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

public abstract interface zzqm
{
  public abstract ConnectionResult blockingConnect();
  
  public abstract ConnectionResult blockingConnect(long paramLong, TimeUnit paramTimeUnit);
  
  public abstract void connect();
  
  public abstract void disconnect();
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  @Nullable
  public abstract ConnectionResult getConnectionResult(@NonNull Api<?> paramApi);
  
  public abstract boolean isConnected();
  
  public abstract boolean isConnecting();
  
  public abstract boolean zza(zzqy paramzzqy);
  
  public abstract void zzaoc();
  
  public abstract void zzaoy();
  
  public abstract <A extends Api.zzb, R extends Result, T extends zzpr.zza<R, A>> T zzc(@NonNull T paramT);
  
  public abstract <A extends Api.zzb, T extends zzpr.zza<? extends Result, A>> T zzd(@NonNull T paramT);
  
  public static abstract interface zza
  {
    public abstract void zzc(int paramInt, boolean paramBoolean);
    
    public abstract void zzd(ConnectionResult paramConnectionResult);
    
    public abstract void zzm(Bundle paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */