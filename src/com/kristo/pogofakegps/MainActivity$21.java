package com.kristo.pogofakegps;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class MainActivity$21
  implements DialogInterface.OnClickListener
{
  MainActivity$21(MainActivity paramMainActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.kristo.pogofakegps"));
    this$0.startActivity(localIntent);
    paramDialogInterface.cancel();
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */