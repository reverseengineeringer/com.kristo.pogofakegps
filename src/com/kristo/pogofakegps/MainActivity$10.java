package com.kristo.pogofakegps;

import android.app.Dialog;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;

class MainActivity$10
  implements View.OnClickListener
{
  MainActivity$10(MainActivity paramMainActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView)
  {
    this$0.editor.putInt("id", 0);
    this$0.editor.commit();
    this$0.historyId = 0;
    val$dialog.cancel();
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */