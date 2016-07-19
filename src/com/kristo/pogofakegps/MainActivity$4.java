package com.kristo.pogofakegps;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

class MainActivity$4
  implements DialogInterface.OnClickListener
{
  MainActivity$4(MainActivity paramMainActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this$0.editor.putBoolean("s_root_location_dont_show", true);
    this$0.editor.commit();
    this$0.root_location = this$0.pref.getBoolean("s_root_location", false);
    paramDialogInterface.cancel();
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */