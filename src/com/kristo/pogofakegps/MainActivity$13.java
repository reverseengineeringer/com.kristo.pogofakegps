package com.kristo.pogofakegps;

import android.app.Dialog;
import android.location.Address;
import android.location.Geocoder;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CameraPosition.Builder;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;

class MainActivity$13
  implements View.OnClickListener
{
  MainActivity$13(MainActivity paramMainActivity, EditText paramEditText, Dialog paramDialog) {}
  
  public void onClick(View paramView)
  {
    for (;;)
    {
      try
      {
        paramView = this$0.geocoder.getFromLocationName(val$searchP.getText().toString(), 1);
        if (paramView.size() <= 0) {
          continue;
        }
        paramView = new LatLng(((Address)paramView.get(0)).getLatitude(), ((Address)paramView.get(0)).getLongitude());
        this$0.ooh = new LatLng(latitude, longitude);
        if (!this$0.zoom_on_location.booleanValue()) {
          continue;
        }
        paramView = new CameraPosition.Builder().target(paramView).zoom(this$0.zoom_level).build();
        MainActivity.access$100(this$0).animateCamera(CameraUpdateFactory.newCameraPosition(paramView));
        this$0.addToRef(this$0.ooh, val$searchP.getText().toString());
        this$0.setLocation();
      }
      catch (Exception paramView)
      {
        float f;
        this$0.act_searchPos();
        Toast.makeText(this$0.getApplicationContext(), "Error", 0).show();
        continue;
        this$0.act_searchPos();
        Toast.makeText(this$0.getApplicationContext(), "Address Not Found", 0).show();
        continue;
      }
      val$dialog.cancel();
      return;
      f = access$100this$0).getCameraPosition().zoom;
      paramView = new CameraPosition.Builder().target(paramView).zoom(f).build();
      MainActivity.access$100(this$0).animateCamera(CameraUpdateFactory.newCameraPosition(paramView));
    }
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */