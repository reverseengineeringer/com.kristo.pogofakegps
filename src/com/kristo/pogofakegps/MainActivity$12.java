package com.kristo.pogofakegps;

import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Toast;

class MainActivity$12
  implements AdapterView.OnItemLongClickListener
{
  MainActivity$12(MainActivity paramMainActivity, Dialog paramDialog) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Toast.makeText(this$0.getApplicationContext(), "Added to favourites", 1).show();
    val$dialog.cancel();
    this$0.addToFav(paramInt);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */