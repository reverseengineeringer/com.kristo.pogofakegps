package com.kristo.pogofakegps;

import android.content.SharedPreferences;
import android.location.Location;
import com.google.android.gms.maps.LocationSource.OnLocationChangedListener;
import java.util.TimerTask;

class MainActivity$9
  extends TimerTask
{
  MainActivity$9(MainActivity paramMainActivity) {}
  
  public void run()
  {
    if (MainActivity.access$000(this$0) != null)
    {
      boolean bool = this$0.pref.getBoolean("enable_locations", false);
      double d1 = Double.valueOf(this$0.pref.getString("lat", "300")).doubleValue();
      double d2 = Double.valueOf(this$0.pref.getString("long", "300")).doubleValue();
      if (bool)
      {
        Location localLocation = new Location("gps");
        localLocation.setLatitude(d1);
        localLocation.setLongitude(d2);
        localLocation.setAltitude(0.0D);
        localLocation.setTime(System.currentTimeMillis());
        localLocation.setAccuracy(1.0F);
        MainActivity.access$000(this$0).onLocationChanged(localLocation);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */