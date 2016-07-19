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
import java.io.IOException;
import java.util.List;

class MainActivity$14
  implements View.OnClickListener
{
  MainActivity$14(MainActivity paramMainActivity, EditText paramEditText1, EditText paramEditText2, Dialog paramDialog) {}
  
  public void onClick(View paramView)
  {
    for (;;)
    {
      try
      {
        d1 = Double.parseDouble(val$lat1.getText().toString().replace(',', '.'));
        d2 = Double.parseDouble(val$lng1.getText().toString().replace(',', '.'));
        if ((d1 >= -90.0D) && (d1 <= 90.0D) && (d2 >= -180.0D) && (d2 <= 180.0D)) {
          continue;
        }
        Toast.makeText(this$0.getApplicationContext(), "Incorrect LatLng range", 0).show();
        this$0.act_setPos();
      }
      catch (Exception paramView)
      {
        double d1;
        double d2;
        this$0.act_setPos();
        Toast.makeText(this$0.getApplicationContext(), "Number Format Exception", 0).show();
        continue;
        f = access$100this$0).getCameraPosition().zoom;
        paramView = new CameraPosition.Builder().target(paramView).zoom(f).build();
        MainActivity.access$100(this$0).animateCamera(CameraUpdateFactory.newCameraPosition(paramView));
        continue;
        i = 0;
        continue;
        j = 0;
        continue;
        paramView = str;
        if (((Address)localObject).getCountryName() == null) {
          continue;
        }
        paramView = ((Address)localObject).getCountryName();
        continue;
      }
      val$dialog.cancel();
      return;
      paramView = new LatLng(d1, d2);
      this$0.ooh = new LatLng(latitude, longitude);
      if (!this$0.zoom_on_location.booleanValue()) {
        continue;
      }
      paramView = new CameraPosition.Builder().target(paramView).zoom(this$0.zoom_level).build();
      MainActivity.access$100(this$0).animateCamera(CameraUpdateFactory.newCameraPosition(paramView));
      str = "Unknown Location";
      try
      {
        localObject = this$0.geocoder.getFromLocation(this$0.ooh.latitude, this$0.ooh.longitude, 1);
        if (localObject == null) {
          continue;
        }
        i = 1;
        if (((List)localObject).size() <= 0) {
          continue;
        }
        j = 1;
        paramView = str;
        if ((j & i) != 0)
        {
          localObject = (Address)((List)localObject).get(0);
          if (((Address)localObject).getLocality() == null) {
            continue;
          }
          paramView = ((Address)localObject).getLocality();
        }
      }
      catch (IOException paramView)
      {
        Object localObject;
        int i;
        int j;
        float f;
        paramView.printStackTrace();
        paramView = str;
        continue;
      }
      this$0.addToRef(this$0.ooh, paramView);
      this$0.setLocation();
    }
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */