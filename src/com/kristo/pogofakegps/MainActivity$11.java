package com.kristo.pogofakegps;

import android.app.Dialog;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.CameraPosition.Builder;
import com.google.android.gms.maps.model.LatLng;

class MainActivity$11
  implements AdapterView.OnItemClickListener
{
  MainActivity$11(MainActivity paramMainActivity, Dialog paramDialog) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new LatLng(Double.parseDouble(this$0.pref.getString("latitude" + (paramInt + 1), "0")), Double.parseDouble(this$0.pref.getString("longitude" + (paramInt + 1), "0")));
    paramView = new CameraPosition.Builder().target(paramAdapterView).zoom(12.0F).build();
    MainActivity.access$100(this$0).animateCamera(CameraUpdateFactory.newCameraPosition(paramView));
    this$0.ooh = paramAdapterView;
    this$0.setLocation();
    val$dialog.cancel();
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */