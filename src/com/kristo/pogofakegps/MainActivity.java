package com.kristo.pogofakegps;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.Toast;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.LocationSource;
import com.google.android.gms.maps.LocationSource.OnLocationChangedListener;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.UiSettings;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CameraPosition.Builder;
import com.google.android.gms.maps.model.LatLng;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity
  extends FragmentActivity
  implements View.OnClickListener, GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, LocationListener, OnMapReadyCallback, LocationSource
{
  public static Context c;
  protected static GoogleApiClient mGoogleApiClient;
  AlertDialog alert;
  Boolean buildGoogleApiClient_done = Boolean.valueOf(false);
  boolean checking = false;
  SharedPreferences.Editor editor;
  int favId = 0;
  int firstStart;
  Geocoder geocoder;
  private GoogleMap googleMap;
  int historyId = 0;
  Boolean initProv_done = Boolean.valueOf(false);
  ImageView ivPin;
  private LocationSource.OnLocationChangedListener mListener;
  boolean map_set_up = false;
  Intent mockProviderIntent;
  Boolean mock_checking;
  boolean noHistory = true;
  LatLng ooh;
  SharedPreferences pref;
  boolean root_location = false;
  Button setLocation;
  Button stop;
  boolean stopped = false;
  boolean terrain_map = false;
  Intent tiltIntent;
  Timer timer;
  int zoom_level = 10;
  Boolean zoom_on_location = Boolean.valueOf(true);
  
  private static boolean checkRootMethod1()
  {
    String str = Build.TAGS;
    return (str != null) && (str.contains("test-keys"));
  }
  
  private static boolean checkRootMethod2()
  {
    String[] arrayOfString = new String[9];
    arrayOfString[0] = "/system/app/Superuser.apk";
    arrayOfString[1] = "/sbin/su";
    arrayOfString[2] = "/system/bin/su";
    arrayOfString[3] = "/system/xbin/su";
    arrayOfString[4] = "/data/local/xbin/su";
    arrayOfString[5] = "/data/local/bin/su";
    arrayOfString[6] = "/system/sd/xbin/su";
    arrayOfString[7] = "/system/bin/failsafe/su";
    arrayOfString[8] = "/data/local/su";
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      if (new File(arrayOfString[i]).exists()) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private static boolean checkRootMethod3()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      localProcess = Runtime.getRuntime().exec(new String[] { "/system/xbin/which", "su" });
      localObject1 = localProcess;
      localObject3 = localProcess;
      String str = new BufferedReader(new InputStreamReader(localProcess.getInputStream())).readLine();
      return str != null;
    }
    catch (Throwable localThrowable)
    {
      Process localProcess;
      if (localObject1 != null) {
        ((Process)localObject1).destroy();
      }
      return false;
    }
    finally
    {
      if (localThrowable != null) {
        localThrowable.destroy();
      }
    }
  }
  
  private void initComponents()
  {
    ((AdView)findViewById(2131427424)).loadAd(new AdRequest.Builder().addTestDevice(AdRequest.DEVICE_ID_EMULATOR).addTestDevice("7D7FA34484F9CB70F71CDA63CBEE49D8").build());
    setLocation = ((Button)findViewById(2131427426));
    setLocation.setOnClickListener(this);
    stop = ((Button)findViewById(2131427427));
    stop.setOnClickListener(this);
    pref = getApplicationContext().getSharedPreferences("MyPref", 0);
    editor = pref.edit();
    historyId = pref.getInt("id", 0);
    favId = pref.getInt("favId", 0);
    root_location = pref.getBoolean("s_root_location", false);
    stop.setBackgroundColor(-65536);
    stop.setTextColor(-16777216);
    setLocation.setBackgroundColor(-16711936);
    setLocation.setTextColor(-16777216);
    editor.putBoolean("enable_locations", false);
    timer = new Timer();
    timer.schedule(new TimerTask()
    {
      public void run()
      {
        if (mListener != null)
        {
          boolean bool = pref.getBoolean("enable_locations", false);
          double d1 = Double.valueOf(pref.getString("lat", "300")).doubleValue();
          double d2 = Double.valueOf(pref.getString("long", "300")).doubleValue();
          if (bool)
          {
            Location localLocation = new Location("gps");
            localLocation.setLatitude(d1);
            localLocation.setLongitude(d2);
            localLocation.setAltitude(0.0D);
            localLocation.setTime(System.currentTimeMillis());
            localLocation.setAccuracy(1.0F);
            mListener.onLocationChanged(localLocation);
          }
        }
      }
    }, 4000L, 150L);
  }
  
  public static boolean isDeviceRooted()
  {
    return (checkRootMethod1()) || (checkRootMethod2()) || (checkRootMethod3());
  }
  
  private boolean isNetworkAvailable()
  {
    return ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo() != null;
  }
  
  private static boolean setMode(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    AppOpsManager localAppOpsManager = (AppOpsManager)paramContext.getSystemService("appops");
    Class localClass = localAppOpsManager.getClass();
    try
    {
      localClass.getMethod("setMode", new Class[] { Integer.TYPE, Integer.TYPE, String.class, Integer.TYPE }).invoke(localAppOpsManager, new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), paramContext.getPackageName(), Integer.valueOf(paramInt3) });
      return true;
    }
    catch (NoSuchMethodException paramContext)
    {
      paramContext.printStackTrace();
      return false;
    }
    catch (InvocationTargetException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  public void act_searchPos()
  {
    final Dialog localDialog = new Dialog(this);
    localDialog.setContentView(2130968603);
    localDialog.setTitle("Search Location");
    final EditText localEditText = (EditText)localDialog.findViewById(2131427428);
    ((Button)localDialog.findViewById(2131427430)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        for (;;)
        {
          try
          {
            paramAnonymousView = geocoder.getFromLocationName(localEditText.getText().toString(), 1);
            if (paramAnonymousView.size() <= 0) {
              continue;
            }
            paramAnonymousView = new LatLng(((Address)paramAnonymousView.get(0)).getLatitude(), ((Address)paramAnonymousView.get(0)).getLongitude());
            ooh = new LatLng(latitude, longitude);
            if (!zoom_on_location.booleanValue()) {
              continue;
            }
            paramAnonymousView = new CameraPosition.Builder().target(paramAnonymousView).zoom(zoom_level).build();
            googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(paramAnonymousView));
            addToRef(ooh, localEditText.getText().toString());
            setLocation();
          }
          catch (Exception paramAnonymousView)
          {
            float f;
            act_searchPos();
            Toast.makeText(getApplicationContext(), "Error", 0).show();
            continue;
            act_searchPos();
            Toast.makeText(getApplicationContext(), "Address Not Found", 0).show();
            continue;
          }
          localDialog.cancel();
          return;
          f = googleMap.getCameraPosition().zoom;
          paramAnonymousView = new CameraPosition.Builder().target(paramAnonymousView).zoom(f).build();
          googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(paramAnonymousView));
        }
      }
    });
    localDialog.show();
  }
  
  public void act_setPos()
  {
    final Dialog localDialog = new Dialog(this);
    localDialog.setContentView(2130968608);
    localDialog.setTitle("Enter Coordinate");
    final EditText localEditText1 = (EditText)localDialog.findViewById(2131427439);
    final EditText localEditText2 = (EditText)localDialog.findViewById(2131427441);
    ((Button)localDialog.findViewById(2131427430)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        for (;;)
        {
          try
          {
            d1 = Double.parseDouble(localEditText1.getText().toString().replace(',', '.'));
            d2 = Double.parseDouble(localEditText2.getText().toString().replace(',', '.'));
            if ((d1 >= -90.0D) && (d1 <= 90.0D) && (d2 >= -180.0D) && (d2 <= 180.0D)) {
              continue;
            }
            Toast.makeText(getApplicationContext(), "Incorrect LatLng range", 0).show();
            act_setPos();
          }
          catch (Exception paramAnonymousView)
          {
            double d1;
            double d2;
            act_setPos();
            Toast.makeText(getApplicationContext(), "Number Format Exception", 0).show();
            continue;
            f = googleMap.getCameraPosition().zoom;
            paramAnonymousView = new CameraPosition.Builder().target(paramAnonymousView).zoom(f).build();
            googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(paramAnonymousView));
            continue;
            i = 0;
            continue;
            j = 0;
            continue;
            paramAnonymousView = str;
            if (((Address)localObject).getCountryName() == null) {
              continue;
            }
            paramAnonymousView = ((Address)localObject).getCountryName();
            continue;
          }
          localDialog.cancel();
          return;
          paramAnonymousView = new LatLng(d1, d2);
          ooh = new LatLng(latitude, longitude);
          if (!zoom_on_location.booleanValue()) {
            continue;
          }
          paramAnonymousView = new CameraPosition.Builder().target(paramAnonymousView).zoom(zoom_level).build();
          googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(paramAnonymousView));
          str = "Unknown Location";
          try
          {
            localObject = geocoder.getFromLocation(ooh.latitude, ooh.longitude, 1);
            if (localObject == null) {
              continue;
            }
            i = 1;
            if (((List)localObject).size() <= 0) {
              continue;
            }
            j = 1;
            paramAnonymousView = str;
            if ((j & i) != 0)
            {
              localObject = (Address)((List)localObject).get(0);
              if (((Address)localObject).getLocality() == null) {
                continue;
              }
              paramAnonymousView = ((Address)localObject).getLocality();
            }
          }
          catch (IOException paramAnonymousView)
          {
            Object localObject;
            int i;
            int j;
            float f;
            paramAnonymousView.printStackTrace();
            paramAnonymousView = str;
            continue;
          }
          addToRef(ooh, paramAnonymousView);
          setLocation();
        }
      }
    });
    localDialog.show();
  }
  
  public void activate(LocationSource.OnLocationChangedListener paramOnLocationChangedListener)
  {
    mListener = paramOnLocationChangedListener;
  }
  
  public void addToFav(int paramInt)
  {
    editor.putString("favName" + (favId + 1), pref.getString("address" + (paramInt + 1), "null"));
    editor.putString("favLat" + (favId + 1), pref.getString("latitude" + (paramInt + 1), "null"));
    editor.putString("favLong" + (favId + 1), pref.getString("longitude" + (paramInt + 1), "null"));
    favId += 1;
    editor.putInt("favId", favId);
    editor.commit();
  }
  
  public void addToRef(LatLng paramLatLng, String paramString)
  {
    editor.putString("address" + (historyId + 1), paramString);
    editor.putString("latitude" + (historyId + 1), latitude + "");
    editor.putString("longitude" + (historyId + 1), longitude + "");
    editor.putString("startlat", latitude + "");
    editor.putString("startlong", longitude + "");
    historyId += 1;
    editor.putInt("id", historyId);
    editor.commit();
  }
  
  protected void buildGoogleApiClient()
  {
    try
    {
      if (!buildGoogleApiClient_done.booleanValue()) {
        mGoogleApiClient = new GoogleApiClient.Builder(this).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(LocationServices.API).build();
      }
      buildGoogleApiClient_done = Boolean.valueOf(true);
      return;
    }
    finally {}
  }
  
  public void deactivate()
  {
    mListener = null;
  }
  
  public void enableMock()
  {
    if (Build.VERSION.SDK_INT >= 23) {}
    for (String str = "Set mock location app to PoGo Fake GPS to use this app";; str = "Enable mock location in developer options to use this app")
    {
      checking = true;
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setMessage(str).setCancelable(false).setPositiveButton("Developer Options", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          Intent localIntent = new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
          startActivity(localIntent);
          paramAnonymousDialogInterface.cancel();
          checking = false;
        }
      });
      localBuilder.setNegativeButton("Cancel", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.cancel();
          checking = false;
        }
      });
      alert = localBuilder.create();
      alert.show();
      return;
    }
  }
  
  protected void favOption(final int paramInt)
  {
    final Dialog localDialog = new Dialog(this);
    localDialog.setContentView(2130968605);
    localDialog.setTitle("Favourites");
    Button localButton1 = (Button)localDialog.findViewById(2131427432);
    Button localButton2 = (Button)localDialog.findViewById(2131427433);
    localButton1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        localDialog.cancel();
        favRename(paramInt);
      }
    });
    localButton2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        localDialog.cancel();
        int i = paramInt + 1;
        for (;;)
        {
          if (i >= favId)
          {
            paramAnonymousView = MainActivity.this;
            favId -= 1;
            editor.putInt("favId", favId);
            editor.commit();
            showFav();
            return;
          }
          editor.putString("favName" + i, pref.getString("favName" + (i + 1), "null"));
          editor.putString("favLat" + i, pref.getString("favLat" + (i + 1), "null"));
          editor.putString("favLong" + i, pref.getString("favLong" + (i + 1), "null"));
          editor.commit();
          i += 1;
        }
      }
    });
    localDialog.show();
  }
  
  protected void favRename(final int paramInt)
  {
    final Dialog localDialog = new Dialog(this);
    localDialog.setContentView(2130968606);
    localDialog.setTitle("Rename");
    ((Button)localDialog.findViewById(2131427435)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        localDialog.cancel();
        paramAnonymousView = (EditText)localDialog.findViewById(2131427434);
        editor.putString("favName" + (paramInt + 1), paramAnonymousView.getText().toString());
        editor.commit();
        localDialog.cancel();
        showFav();
      }
    });
    localDialog.show();
  }
  
  public void finish()
  {
    try
    {
      c.stopService(mockProviderIntent);
      LocationServices.FusedLocationApi.setMockMode(mGoogleApiClient, false);
      super.finish();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void finishActivity(int paramInt)
  {
    super.finishActivity(paramInt);
  }
  
  public void initProv()
  {
    if (!initProv_done.booleanValue()) {}
    initProv_done = Boolean.valueOf(true);
  }
  
  public boolean isMockLocationEnabled()
  {
    boolean bool;
    try
    {
      if (Build.VERSION.SDK_INT >= 23)
      {
        if (((AppOpsManager)c.getSystemService("appops")).checkOp("android:mock_location", android.os.Process.myUid(), "com.kristo.pogofakegps") != 0) {
          break label78;
        }
        bool = true;
      }
      else
      {
        bool = Settings.Secure.getString(c.getContentResolver(), "mock_location").equals("0");
        if (!bool) {}
        for (bool = true;; bool = false) {
          break;
        }
      }
      return bool;
    }
    catch (Exception localException)
    {
      return false;
    }
    for (;;)
    {
      label78:
      bool = false;
    }
  }
  
  public void onClick(View paramView)
  {
    String str;
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131427426: 
      ooh = googleMap.getCameraPosition().target;
      if (zoom_on_location.booleanValue())
      {
        paramView = new CameraPosition.Builder().target(ooh).zoom(zoom_level).build();
        googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(paramView));
        str = "Unknown Location";
      }
      for (;;)
      {
        try
        {
          localObject = geocoder.getFromLocation(ooh.latitude, ooh.longitude, 1);
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
        addToRef(ooh, paramView);
        setLocation();
        return;
        f = googleMap.getCameraPosition().zoom;
        paramView = new CameraPosition.Builder().target(ooh).zoom(f).build();
        googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(paramView));
        break;
        i = 0;
        continue;
        j = 0;
        continue;
        paramView = str;
        if (((Address)localObject).getCountryName() != null) {
          paramView = ((Address)localObject).getCountryName();
        }
      }
    }
    finish();
  }
  
  public void onConnected(Bundle paramBundle)
  {
    if ((ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0) && (ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0)) {}
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult) {}
  
  public void onConnectionSuspended(int paramInt) {}
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968602);
    geocoder = new Geocoder(getApplicationContext(), Locale.getDefault());
    c = this;
    initComponents();
    if (!isNetworkAvailable())
    {
      Toast.makeText(getApplicationContext(), "Please connect to the internet and try again", 1).show();
      finish();
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131558400, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onLocationChanged(Location paramLocation) {}
  
  public void onMapReady(GoogleMap paramGoogleMap)
  {
    if (googleMap != null) {}
    do
    {
      return;
      googleMap = paramGoogleMap;
      if ((googleMap != null) && (terrain_map)) {
        googleMap.setMapType(2);
      }
      if ((ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0) && (ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0))
      {
        ActivityCompat.requestPermissions(this, new String[] { "android.permission.ACCESS_FINE_LOCATION" }, 1);
        return;
      }
      googleMap.setMyLocationEnabled(true);
      googleMap.setLocationSource(this);
      googleMap.getUiSettings().setZoomControlsEnabled(false);
      if (!pref.getString("startlat", "0").equals("0"))
      {
        paramGoogleMap = new LatLng(Double.parseDouble(pref.getString("startlat", "0")), Double.parseDouble(pref.getString("startlong", "0")));
        paramGoogleMap = new CameraPosition.Builder().target(paramGoogleMap).zoom(12.0F).build();
        googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(paramGoogleMap));
      }
      firstStart = pref.getInt("first", 0);
    } while (firstStart != 0);
    editor.putString("address" + (historyId + 1), "Click and Hold");
    editor.putString("latitude" + (historyId + 1), "0.0");
    editor.putString("longitude" + (historyId + 1), "0.0");
    historyId += 1;
    editor.putInt("id", historyId);
    editor.commit();
    editor.putInt("first", 1);
    editor.commit();
    if (isDeviceRooted())
    {
      paramGoogleMap = new AlertDialog.Builder(this);
      ((AlertDialog.Builder)paramGoogleMap).setMessage("Welcome rooted user. Please read the instructions in the Play Store for detailed instructions to use this app. This is still a very unstable build. I am adding new features day by day and fixing bugs as they come up. Please leave a 5* review so that we  can build a stable fake location app together. A 1* review won't help either of us. Thank you and enjoy!");
      ((AlertDialog.Builder)paramGoogleMap).setTitle("Welcome to PoGo Fake GPS");
      ((AlertDialog.Builder)paramGoogleMap).setCancelable(true);
      ((AlertDialog.Builder)paramGoogleMap).setNegativeButton("Cancel", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.cancel();
        }
      });
      ((AlertDialog.Builder)paramGoogleMap).setPositiveButton("Play Store", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.kristo.pogofakegps"));
          startActivity(localIntent);
          paramAnonymousDialogInterface.cancel();
        }
      });
      ((AlertDialog.Builder)paramGoogleMap).create().show();
      return;
    }
    paramGoogleMap = new AlertDialog.Builder(this);
    ((AlertDialog.Builder)paramGoogleMap).setMessage("Welcome. Unrooted users like yourself won't be able to set fake locations on certain apps. This app works better with rooted users. Please read the instructions in the Play Store for detailed instructions to use this app. This is still a very unstable build. I am adding new features day by day and fixing bugs as they come up. Please leave a 5* review so that we  can build a stable fake location app together. A 1* review won't help either of us. Thank you and enjoy!");
    ((AlertDialog.Builder)paramGoogleMap).setTitle("Welcome to PoGo Fake GPS");
    ((AlertDialog.Builder)paramGoogleMap).setCancelable(true);
    ((AlertDialog.Builder)paramGoogleMap).setNegativeButton("Close", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
      }
    });
    ((AlertDialog.Builder)paramGoogleMap).create().show();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131427466: 
      act_setPos();
      return true;
    case 2131427467: 
      act_searchPos();
      return true;
    case 2131427469: 
      show_history();
      return true;
    case 2131427468: 
      showFav();
      return true;
    case 2131427470: 
      startActivityForResult(new Intent(getApplicationContext(), SettingsActivity.class), 0);
      return true;
    }
    paramMenuItem = new AlertDialog.Builder(this);
    paramMenuItem.setMessage("Please Rate");
    paramMenuItem.setCancelable(true);
    paramMenuItem.setNegativeButton("No", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
      }
    });
    paramMenuItem.setPositiveButton("YES", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.kristo.pogofakegps"));
        startActivity(localIntent);
        paramAnonymousDialogInterface.cancel();
      }
    });
    paramMenuItem.create().show();
    return true;
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    if ((paramArrayOfInt.length > 0) && (paramArrayOfInt[0] == 0))
    {
      buildGoogleApiClient();
      if (!mGoogleApiClient.isConnected()) {
        mGoogleApiClient.connect();
      }
      set_up_map();
      return;
    }
    ActivityCompat.requestPermissions(this, new String[] { "android.permission.ACCESS_FINE_LOCATION" }, 1);
    Toast.makeText(getApplicationContext(), "GPS permission is required to run this app", 0).show();
  }
  
  protected void onResume()
  {
    if (checking)
    {
      super.onResume();
      return;
    }
    if ((ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0) && (ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0))
    {
      ActivityCompat.requestPermissions(this, new String[] { "android.permission.ACCESS_FINE_LOCATION" }, 1);
      super.onResume();
      return;
    }
    buildGoogleApiClient();
    if (!mGoogleApiClient.isConnected()) {
      mGoogleApiClient.connect();
    }
    set_up_map();
    mock_checking = Boolean.valueOf(false);
    zoom_level = pref.getInt("s_zoom_level", 11);
    zoom_on_location = Boolean.valueOf(pref.getBoolean("s_zoom_on_loc", true));
    root_location = pref.getBoolean("s_root_location", false);
    terrain_map = pref.getBoolean("s_terrain_map", false);
    boolean bool = pref.getBoolean("s_root_location_dont_show", false);
    if ((googleMap != null) && (terrain_map)) {
      googleMap.setMapType(2);
    }
    for (;;)
    {
      if ((root_location) && (!bool))
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
        ((AlertDialog.Builder)localBuilder).setMessage("Root location is experimental. This app might crash on setting locations. For this to work you need to be rooted, you need to have Xposed installed with Mock Mock Location module enabled. PoGo Fake GPS must then also be set as mock location app in developer settings.");
        ((AlertDialog.Builder)localBuilder).setTitle("WARNING! Root Location Enabled");
        ((AlertDialog.Builder)localBuilder).setCancelable(true);
        ((AlertDialog.Builder)localBuilder).setNegativeButton("Don't show again", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            editor.putBoolean("s_root_location_dont_show", true);
            editor.commit();
            root_location = pref.getBoolean("s_root_location", false);
            paramAnonymousDialogInterface.cancel();
          }
        });
        ((AlertDialog.Builder)localBuilder).setPositiveButton("Proceed", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.cancel();
          }
        });
        ((AlertDialog.Builder)localBuilder).create().show();
      }
      super.onResume();
      return;
      if ((googleMap != null) && (!terrain_map)) {
        googleMap.setMapType(1);
      }
    }
  }
  
  protected void onStart()
  {
    super.onStart();
  }
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
  
  protected void onStop()
  {
    super.onStop();
    if (mGoogleApiClient == null) {}
    while (!mGoogleApiClient.isConnected()) {
      return;
    }
    mGoogleApiClient.disconnect();
  }
  
  public void setLocation()
  {
    if (isMockLocationEnabled()) {
      LocationServices.FusedLocationApi.setMockMode(mGoogleApiClient, true);
    }
    if (root_location) {
      Toast.makeText(getApplicationContext(), "Setting location root mode", 0).show();
    }
    while (isMockLocationEnabled())
    {
      editor.putBoolean("enable_locations", true);
      editor.putString("lat", ooh.latitude + "");
      editor.putString("long", ooh.longitude + "");
      editor.commit();
      mockProviderIntent = new Intent(c, MockLocationProviderNew.class);
      mockProviderIntent.putExtra("type", 2);
      c.stopService(mockProviderIntent);
      c.startService(mockProviderIntent);
      Object localObject = new Location("gps");
      ((Location)localObject).setLatitude(ooh.latitude);
      ((Location)localObject).setLongitude(ooh.longitude);
      ((Location)localObject).setAltitude(0.0D);
      ((Location)localObject).setTime(System.currentTimeMillis());
      ((Location)localObject).setAccuracy(1.0F);
      localObject = (LocationManager)c.getSystemService("location");
      LocationListener local8 = new LocationListener()
      {
        public void onLocationChanged(Location paramAnonymousLocation) {}
        
        public void onProviderDisabled(String paramAnonymousString) {}
        
        public void onProviderEnabled(String paramAnonymousString) {}
        
        public void onStatusChanged(String paramAnonymousString, int paramAnonymousInt, Bundle paramAnonymousBundle) {}
      };
      ((LocationManager)localObject).requestLocationUpdates("gps", 0L, 0.0F, local8);
      ((LocationManager)localObject).requestLocationUpdates("network", 0L, 0.0F, local8);
      ((LocationManager)localObject).requestLocationUpdates("passive", 0L, 0.0F, local8);
      return;
    }
    enableMock();
  }
  
  public void set_up_map()
  {
    if (!map_set_up)
    {
      ((SupportMapFragment)getSupportFragmentManager().findFragmentById(2131427423)).getMapAsync(this);
      map_set_up = true;
    }
  }
  
  public void showFav()
  {
    if (favId == 0)
    {
      Toast.makeText(getApplicationContext(), "No Favourites", 1).show();
      return;
    }
    final Dialog localDialog = new Dialog(this);
    localDialog.setContentView(2130968604);
    localDialog.setTitle("Favourites");
    ListView localListView = (ListView)localDialog.findViewById(2131427431);
    ArrayList localArrayList = new ArrayList();
    int i = 1;
    for (;;)
    {
      if (i >= pref.getInt("favId", 0) + 1)
      {
        localListView.setAdapter(new SimpleAdapter(this, localArrayList, 17367044, new String[] { "title", "coord" }, new int[] { 16908308, 16908309 }));
        localListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
        {
          public boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            localDialog.cancel();
            favOption(paramAnonymousInt);
            return false;
          }
        });
        localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
          public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            paramAnonymousAdapterView = new LatLng(Double.parseDouble(pref.getString("favLat" + (paramAnonymousInt + 1), "0")), Double.parseDouble(pref.getString("favLong" + (paramAnonymousInt + 1), "0")));
            paramAnonymousView = new CameraPosition.Builder().target(paramAnonymousAdapterView).zoom(12.0F).build();
            googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(paramAnonymousView));
            ooh = paramAnonymousAdapterView;
            setLocation();
            localDialog.cancel();
          }
        });
        localDialog.show();
        return;
      }
      HashMap localHashMap = new HashMap(2);
      localHashMap.put("title", pref.getString("favName" + i, "0"));
      localHashMap.put("coord", pref.getString(new StringBuilder("favLat").append(i).toString(), "0") + "," + pref.getString(new StringBuilder("favLong").append(i).toString(), "0"));
      localArrayList.add(localHashMap);
      i += 1;
    }
  }
  
  public void show_history()
  {
    if (pref.getInt("id", 0) == 0)
    {
      Toast.makeText(getApplicationContext(), "No History", 0).show();
      return;
    }
    final Dialog localDialog = new Dialog(this);
    localDialog.setContentView(2130968607);
    localDialog.setTitle("History");
    ListView localListView = (ListView)localDialog.findViewById(2131427436);
    ((Button)localDialog.findViewById(2131427437)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        editor.putInt("id", 0);
        editor.commit();
        historyId = 0;
        localDialog.cancel();
      }
    });
    ArrayList localArrayList = new ArrayList();
    int i = 1;
    while (i < pref.getInt("id", 0) + 1)
    {
      HashMap localHashMap = new HashMap(2);
      localHashMap.put("title", pref.getString("address" + i, "0"));
      localHashMap.put("coord", pref.getString(new StringBuilder().append("latitude").append(i).toString(), "0") + "," + pref.getString(new StringBuilder().append("longitude").append(i).toString(), "0"));
      localArrayList.add(localHashMap);
      i += 1;
    }
    localListView.setAdapter(new SimpleAdapter(this, localArrayList, 17367044, new String[] { "title", "coord" }, new int[] { 16908308, 16908309 }));
    localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = new LatLng(Double.parseDouble(pref.getString("latitude" + (paramAnonymousInt + 1), "0")), Double.parseDouble(pref.getString("longitude" + (paramAnonymousInt + 1), "0")));
        paramAnonymousView = new CameraPosition.Builder().target(paramAnonymousAdapterView).zoom(12.0F).build();
        googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(paramAnonymousView));
        ooh = paramAnonymousAdapterView;
        setLocation();
        localDialog.cancel();
      }
    });
    localListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
    {
      public boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        Toast.makeText(getApplicationContext(), "Added to favourites", 1).show();
        localDialog.cancel();
        addToFav(paramAnonymousInt);
        return false;
      }
    });
    localDialog.show();
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.MainActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */