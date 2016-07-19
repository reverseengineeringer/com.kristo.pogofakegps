package com.kristo.pogofakegps;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class MainActivity$6
  implements DialogInterface.OnClickListener
{
  MainActivity$6(MainActivity paramMainActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
    this$0.startActivity(localIntent);
    paramDialogInterface.cancel();
    this$0.checking = false;
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */