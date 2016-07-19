.class public Lcom/kristo/pogofakegps/DeviceTilt;
.super Landroid/app/Service;
.source "DeviceTilt.java"


# instance fields
.field localSharedPreferences:Landroid/content/SharedPreferences;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    const/4 v1, 0x3

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/DeviceTilt;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/SensorManager;

    .line 38
    .local v13, "sensorManager":Landroid/hardware/SensorManager;
    new-array v4, v1, [F

    .line 39
    .local v4, "mValuesMagnet":[F
    new-array v3, v1, [F

    .line 40
    .local v3, "mValuesAccel":[F
    new-array v5, v1, [F

    .line 41
    .local v5, "mValuesOrientation":[F
    const/16 v0, 0x9

    new-array v2, v0, [F

    .line 43
    .local v2, "mRotationMatrix":[F
    new-instance v12, Lcom/kristo/pogofakegps/DeviceTilt$1;

    invoke-direct {v12, p0, v3, v4}, Lcom/kristo/pogofakegps/DeviceTilt$1;-><init>(Lcom/kristo/pogofakegps/DeviceTilt;[F[F)V

    .line 63
    .local v12, "mEventListener":Landroid/hardware/SensorEventListener;
    invoke-virtual {p0, v13, v12}, Lcom/kristo/pogofakegps/DeviceTilt;->setListners(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/DeviceTilt;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MyPref"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kristo/pogofakegps/DeviceTilt;->localSharedPreferences:Landroid/content/SharedPreferences;

    .line 66
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kristo/pogofakegps/DeviceTilt;->timer:Ljava/util/Timer;

    .line 67
    iget-object v6, p0, Lcom/kristo/pogofakegps/DeviceTilt;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/kristo/pogofakegps/DeviceTilt$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kristo/pogofakegps/DeviceTilt$2;-><init>(Lcom/kristo/pogofakegps/DeviceTilt;[F[F[F[F)V

    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0xc8

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 102
    return-void
.end method

.method public setListners(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V
    .locals 2
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "mEventListener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v1, 0x3

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 109
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 111
    return-void
.end method
