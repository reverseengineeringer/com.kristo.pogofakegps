.class public Lcom/kristo/pogofakegps/MockLocationProviderNew;
.super Landroid/app/Service;
.source "MockLocationProviderNew.java"


# instance fields
.field counter:I

.field d1:D

.field d2:D

.field highAccuracy:Z

.field localSharedPreferences:Landroid/content/SharedPreferences;

.field locationManager:Landroid/location/LocationManager;

.field peri:I

.field root_location:Z

.field tilt_enabled:Z

.field tilt_sensitivity:I

.field tilt_side_origin:D

.field tilt_up_origin:D

.field timer:Ljava/util/Timer;

.field timer_refresh:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->highAccuracy:Z

    .line 42
    iput v0, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->counter:I

    return-void
.end method

.method static synthetic access$000(Lcom/kristo/pogofakegps/MockLocationProviderNew;DD)V
    .locals 1
    .param p0, "x0"    # Lcom/kristo/pogofakegps/MockLocationProviderNew;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->setLocation(DD)V

    return-void
.end method

.method private pauseThread()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method private setLocation(DD)V
    .locals 5
    .param p1, "paramDouble1"    # D
    .param p3, "paramDouble2"    # D
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "localLocation":Landroid/location/Location;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 60
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 61
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 62
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 63
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 67
    iget-boolean v1, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->root_location:Z

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2, v0}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 73
    iget-object v1, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2, v0}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 88
    .end local v0    # "localLocation":Landroid/location/Location;
    :goto_0
    return-void

    .line 80
    .restart local v0    # "localLocation":Landroid/location/Location;
    :cond_1
    iget-object v1, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2, v0}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 81
    iget-object v1, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2, v0}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v0    # "localLocation":Landroid/location/Location;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startFaking()V
    .locals 19

    .prologue
    .line 92
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "high_accuracy"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->highAccuracy:Z

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "MyPref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->localSharedPreferences:Landroid/content/SharedPreferences;

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "lat"

    const-string v4, "11.11"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->d1:D

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "long"

    const-string v4, "11.11"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->d2:D

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "s_refresh_rate"

    const/16 v4, 0x1f4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->timer_refresh:I

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "s_enable_tilt"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->tilt_enabled:Z

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "s_tilt_sensitivity"

    const/16 v4, 0x32

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->tilt_sensitivity:I

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "s_root_location"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->root_location:Z

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tilt_up_origin"

    const-string v4, "0.0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->tilt_up_origin:D

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tilt_side_origin"

    const-string v4, "0.0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->tilt_side_origin:D

    .line 103
    const-string v2, "sensor"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/hardware/SensorManager;

    .line 105
    .local v18, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v16, v0

    .line 106
    .local v16, "mValuesMagnet":[F
    const/4 v2, 0x3

    new-array v15, v2, [F

    .line 107
    .local v15, "mValuesAccel":[F
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v17, v0

    .line 108
    .local v17, "mValuesOrientation":[F
    const/16 v2, 0x9

    new-array v14, v2, [F

    .line 110
    .local v14, "mRotationMatrix":[F
    new-instance v13, Lcom/kristo/pogofakegps/MockLocationProviderNew$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v13, v0, v15, v1}, Lcom/kristo/pogofakegps/MockLocationProviderNew$1;-><init>(Lcom/kristo/pogofakegps/MockLocationProviderNew;[F[F)V

    .line 127
    .local v13, "mEventListener":Landroid/hardware/SensorEventListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->setListners(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 136
    const/16 v2, 0x96

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->timer_refresh:I

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->peri:I

    .line 138
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->timer:Ljava/util/Timer;

    .line 139
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;

    move-object/from16 v3, p0

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;-><init>(Lcom/kristo/pogofakegps/MockLocationProviderNew;[F[F[F[F)V

    const-wide/16 v6, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->timer_refresh:I

    int-to-long v8, v3

    move-object v4, v10

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 199
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->pauseThread()V

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->stopForeground(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->stopSelf()V

    .line 221
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 232
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->locationManager:Landroid/location/LocationManager;

    .line 233
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 239
    :try_start_0
    invoke-direct {p0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "paramIntent"    # Landroid/content/Intent;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I

    .prologue
    const/4 v1, 0x1

    .line 248
    if-eqz p1, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->stop()V

    .line 275
    :goto_0
    return v1

    .line 253
    :cond_0
    if-eqz p1, :cond_1

    .line 255
    const-string v0, "type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    invoke-direct {p0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->pauseThread()V

    .line 262
    invoke-direct {p0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->startFaking()V

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-direct {p0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->pauseThread()V

    goto :goto_0

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->pauseThread()V

    .line 274
    invoke-direct {p0}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->startFaking()V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListners(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V
    .locals 2
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "mEventListener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v1, 0x3

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 206
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 208
    return-void
.end method
