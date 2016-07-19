package com.kristo.pogofakegps;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class MainActivity$7
  implements DialogInterface.OnClickListener
{
  MainActivity$7(MainActivity paramMainActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    this$0.checking = false;
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */