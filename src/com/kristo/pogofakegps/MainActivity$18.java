package com.kristo.pogofakegps;

import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;

class MainActivity$18
  implements AdapterView.OnItemLongClickListener
{
  MainActivity$18(MainActivity paramMainActivity, Dialog paramDialog) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    val$localDialog.cancel();
    this$0.favOption(paramInt);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */