.class Lcom/kristo/pogofakegps/MainActivity$9;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/MainActivity;


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/MainActivity;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$9;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 787
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$9;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    # getter for: Lcom/kristo/pogofakegps/MainActivity;->mListener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;
    invoke-static {v6}, Lcom/kristo/pogofakegps/MainActivity;->access$000(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 790
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$9;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v6, v6, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "enable_locations"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 791
    .local v5, "set_location":Z
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$9;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v6, v6, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "lat"

    const-string v8, "300"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 792
    .local v0, "d1":D
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$9;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v6, v6, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "long"

    const-string v8, "300"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 793
    .local v2, "d2":D
    if-eqz v5, :cond_0

    .line 794
    new-instance v4, Landroid/location/Location;

    const-string v6, "gps"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 795
    .local v4, "mockLocation":Landroid/location/Location;
    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 796
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 797
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setAltitude(D)V

    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 799
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    .line 800
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$9;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    # getter for: Lcom/kristo/pogofakegps/MainActivity;->mListener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;
    invoke-static {v6}, Lcom/kristo/pogofakegps/MainActivity;->access$000(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 808
    .end local v0    # "d1":D
    .end local v2    # "d2":D
    .end local v4    # "mockLocation":Landroid/location/Location;
    .end local v5    # "set_location":Z
    :cond_0
    return-void
.end method
