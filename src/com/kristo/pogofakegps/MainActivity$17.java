package com.kristo.pogofakegps;

import android.app.Dialog;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class MainActivity$17
  implements View.OnClickListener
{
  MainActivity$17(MainActivity paramMainActivity, Dialog paramDialog, int paramInt) {}
  
  public void onClick(View paramView)
  {
    val$localDialog.cancel();
    paramView = (EditText)val$localDialog.findViewById(2131427434);
    this$0.editor.putString("favName" + (val$paramInt + 1), paramView.getText().toString());
    this$0.editor.commit();
    val$localDialog.cancel();
    this$0.showFav();
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */