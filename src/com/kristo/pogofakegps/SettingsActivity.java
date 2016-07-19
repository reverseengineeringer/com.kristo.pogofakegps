package com.kristo.pogofakegps;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.Switch;
import java.util.Timer;
import java.util.TimerTask;

public class SettingsActivity
  extends Activity
{
  Context c;
  boolean enable_tilt;
  EditText et_refresh_time;
  SharedPreferences localSharedPreferences;
  ProgressDialog progress;
  int refresh_rate;
  boolean root_location;
  SeekBar sb_refresh_per;
  SeekBar sb_tilt;
  SeekBar sb_zoom;
  Switch sw_root;
  Switch sw_terrain;
  Switch sw_tilt;
  Switch sw_zom;
  boolean terrain_map;
  int tilt_sensitivity;
  double tilt_side = 0.0D;
  double tilt_up = 0.0D;
  Timer timer;
  int timer_counter = 0;
  Button zero_tilt;
  int zoom_level;
  boolean zoom_on_location;
  
  private void push_settings_to_prefs()
  {
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putBoolean("s_zoom_on_loc", sw_zom.isChecked());
    localEditor.putInt("s_zoom_level", sb_zoom.getProgress());
    localEditor.putBoolean("s_root_location", sw_root.isChecked());
    localEditor.putBoolean("s_terrain_map", sw_terrain.isChecked());
    localEditor.putInt("s_tilt_sensitivity", sb_tilt.getProgress());
    localEditor.putBoolean("s_enable_tilt", sw_tilt.isChecked());
    int j = Integer.parseInt(et_refresh_time.getText().toString());
    int i;
    if (j <= 25) {
      i = 25;
    }
    for (;;)
    {
      localEditor.putInt("s_refresh_rate", i);
      Log.i("Refresh_rate", i + "");
      localEditor.commit();
      return;
      i = j;
      if (j >= 3000) {
        i = 3000;
      }
    }
  }
  
  private void setupActionBar()
  {
    ActionBar localActionBar = getActionBar();
    if (localActionBar != null) {
      localActionBar.setDisplayHomeAsUpEnabled(true);
    }
  }
  
  public void onBackPressed()
  {
    push_settings_to_prefs();
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968620);
    c = this;
    localSharedPreferences = getApplicationContext().getSharedPreferences("MyPref", 0);
    zoom_on_location = localSharedPreferences.getBoolean("s_zoom_on_loc", false);
    zoom_level = localSharedPreferences.getInt("s_zoom_level", 11);
    root_location = localSharedPreferences.getBoolean("s_root_location", false);
    refresh_rate = localSharedPreferences.getInt("s_refresh_rate", 2200);
    terrain_map = localSharedPreferences.getBoolean("s_terrain_map", false);
    enable_tilt = localSharedPreferences.getBoolean("s_enable_tilt", false);
    tilt_sensitivity = localSharedPreferences.getInt("s_tilt_sensitivity", 50);
    et_refresh_time = ((EditText)findViewById(2131427460));
    et_refresh_time.setText(refresh_rate + "");
    sb_tilt = ((SeekBar)findViewById(2131427464));
    sb_tilt.setProgress(tilt_sensitivity);
    sw_tilt = ((Switch)findViewById(2131427462));
    sw_tilt.setChecked(enable_tilt);
    sw_terrain = ((Switch)findViewById(2131427461));
    sw_terrain.setChecked(terrain_map);
    zero_tilt = ((Button)findViewById(2131427465));
    sw_root = ((Switch)findViewById(2131427457));
    sw_root.setChecked(root_location);
    sw_zom = ((Switch)findViewById(2131427455));
    sw_zom.setChecked(zoom_on_location);
    sb_zoom = ((SeekBar)findViewById(2131427456));
    if (Build.VERSION.SDK_INT >= 24) {
      sb_zoom.setProgress(zoom_level, true);
    }
    for (;;)
    {
      setupActionBar();
      zero_tilt.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = (SensorManager)c.getSystemService("sensor");
          final float[] arrayOfFloat1 = new float[3];
          final float[] arrayOfFloat2 = new float[3];
          final float[] arrayOfFloat3 = new float[3];
          final float[] arrayOfFloat4 = new float[9];
          SensorEventListener local1 = new SensorEventListener()
          {
            public void onAccuracyChanged(Sensor paramAnonymous2Sensor, int paramAnonymous2Int) {}
            
            public void onSensorChanged(SensorEvent paramAnonymous2SensorEvent)
            {
              switch (sensor.getType())
              {
              default: 
                return;
              case 1: 
                System.arraycopy(values, 0, arrayOfFloat2, 0, 3);
                return;
              }
              System.arraycopy(values, 0, arrayOfFloat1, 0, 3);
            }
          };
          setListners(paramAnonymousView, local1);
          progress = new ProgressDialog(c);
          progress.setMessage("Do Not Move Device");
          progress.setProgressStyle(1);
          progress.setIndeterminate(false);
          progress.setProgress(0);
          progress.setMax(100);
          progress.setCancelable(false);
          progress.show();
          timer = new Timer();
          timer.schedule(new TimerTask()
          {
            public void run()
            {
              Log.i("Timer!!", "In Timer");
              int i = (int)((timer_counter + 1) / 6.0D * 100.0D);
              Log.i("Timer!!", i + "");
              SensorManager.getRotationMatrix(arrayOfFloat4, null, arrayOfFloat2, arrayOfFloat1);
              SensorManager.getOrientation(arrayOfFloat4, arrayOfFloat3);
              Object localObject = SettingsActivity.this;
              tilt_up += Double.valueOf(arrayOfFloat3[1]).doubleValue();
              localObject = SettingsActivity.this;
              tilt_side += Double.valueOf(arrayOfFloat3[2]).doubleValue();
              progress.setProgress(i);
              localObject = SettingsActivity.this;
              timer_counter += 1;
              if (timer_counter >= 6)
              {
                localObject = localSharedPreferences.edit();
                ((SharedPreferences.Editor)localObject).putString("tilt_up_origin", tilt_up / 6.0D + "");
                ((SharedPreferences.Editor)localObject).putString("tilt_side_origin", tilt_side / 6.0D + "");
                ((SharedPreferences.Editor)localObject).commit();
                timer_counter = 0;
                progress.cancel();
                timer.cancel();
              }
            }
          }, 1000L, 500L);
        }
      });
      return;
      sb_zoom.setProgress(zoom_level);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    push_settings_to_prefs();
    super.onBackPressed();
    return true;
  }
  
  public void setListners(SensorManager paramSensorManager, SensorEventListener paramSensorEventListener)
  {
    paramSensorManager.registerListener(paramSensorEventListener, paramSensorManager.getDefaultSensor(1), 3);
    paramSensorManager.registerListener(paramSensorEventListener, paramSensorManager.getDefaultSensor(2), 3);
  }
}

/* Location:
 * Qualified Name:     com.kristo.pogofakegps.SettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */