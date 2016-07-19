package com.kristo.pogofakegps;

import android.app.Dialog;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;

class MainActivity$16
  implements View.OnClickListener
{
  MainActivity$16(MainActivity paramMainActivity, Dialog paramDialog, int paramInt) {}
  
  public void onClick(View paramView)
  {
    val$localDialog.cancel();
    int i = val$paramInt + 1;
    for (;;)
    {
      if (i >= this$0.favId)
      {
        paramView = this$0;
        favId -= 1;
        this$0.editor.putInt("favId", this$0.favId);
        this$0.editor.commit();
        this$0.showFav();
        return;
      }
      this$0.editor.putString("favName" + i, this$0.pref.getString("favName" + (i + 1), "null"));
      this$0.editor.putString("favLat" + i, this$0.pref.getString("favLat" + (i + 1), "null"));
      this$0.editor.putString("favLong" + i, this$0.pref.getString("favLong" + (i + 1), "null"));
      this$0.editor.commit();
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */