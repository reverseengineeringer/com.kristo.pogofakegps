package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.purchase.InAppPurchaseResult;

@zzir
public class zzhz
  implements InAppPurchaseResult
{
  private final zzhv zzbxt;
  
  public zzhz(zzhv paramzzhv)
  {
    zzbxt = paramzzhv;
  }
  
  public void finishPurchase()
  {
    try
    {
      zzbxt.finishPurchase();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzb.zzd("Could not forward finishPurchase to InAppPurchaseResult", localRemoteException);
    }
  }
  
  public String getProductId()
  {
    try
    {
      String str = zzbxt.getProductId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      zzb.zzd("Could not forward getProductId to InAppPurchaseResult", localRemoteException);
    }
    return null;
  }
  
  public Intent getPurchaseData()
  {
    try
    {
      Intent localIntent = zzbxt.getPurchaseData();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      zzb.zzd("Could not forward getPurchaseData to InAppPurchaseResult", localRemoteException);
    }
    return null;
  }
  
  public int getResultCode()
  {
    try
    {
      int i = zzbxt.getResultCode();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      zzb.zzd("Could not forward getPurchaseData to InAppPurchaseResult", localRemoteException);
    }
    return 0;
  }
  
  public boolean isVerified()
  {
    try
    {
      boolean bool = zzbxt.isVerified();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      zzb.zzd("Could not forward isVerified to InAppPurchaseResult", localRemoteException);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */