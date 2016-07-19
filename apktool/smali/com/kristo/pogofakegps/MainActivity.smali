.class public Lcom/kristo/pogofakegps/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lcom/google/android/gms/maps/LocationSource;


# static fields
.field public static c:Landroid/content/Context;

.field protected static mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# instance fields
.field alert:Landroid/app/AlertDialog;

.field buildGoogleApiClient_done:Ljava/lang/Boolean;

.field checking:Z

.field editor:Landroid/content/SharedPreferences$Editor;

.field favId:I

.field firstStart:I

.field geocoder:Landroid/location/Geocoder;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field historyId:I

.field initProv_done:Ljava/lang/Boolean;

.field ivPin:Landroid/widget/ImageView;

.field private mListener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

.field map_set_up:Z

.field mockProviderIntent:Landroid/content/Intent;

.field mock_checking:Ljava/lang/Boolean;

.field noHistory:Z

.field ooh:Lcom/google/android/gms/maps/model/LatLng;

.field pref:Landroid/content/SharedPreferences;

.field root_location:Z

.field setLocation:Landroid/widget/Button;

.field stop:Landroid/widget/Button;

.field stopped:Z

.field terrain_map:Z

.field tiltIntent:Landroid/content/Intent;

.field timer:Ljava/util/Timer;

.field zoom_level:I

.field zoom_on_location:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 153
    iput-boolean v1, p0, Lcom/kristo/pogofakegps/MainActivity;->terrain_map:Z

    .line 154
    iput-boolean v1, p0, Lcom/kristo/pogofakegps/MainActivity;->root_location:Z

    .line 155
    iput-boolean v1, p0, Lcom/kristo/pogofakegps/MainActivity;->map_set_up:Z

    .line 156
    iput-boolean v2, p0, Lcom/kristo/pogofakegps/MainActivity;->noHistory:Z

    .line 157
    iput-boolean v1, p0, Lcom/kristo/pogofakegps/MainActivity;->stopped:Z

    .line 160
    iput-boolean v1, p0, Lcom/kristo/pogofakegps/MainActivity;->checking:Z

    .line 161
    iput v1, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    .line 162
    iput v1, p0, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    .line 166
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->initProv_done:Ljava/lang/Boolean;

    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->buildGoogleApiClient_done:Ljava/lang/Boolean;

    .line 172
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->zoom_on_location:Ljava/lang/Boolean;

    .line 173
    const/16 v0, 0xa

    iput v0, p0, Lcom/kristo/pogofakegps/MainActivity;->zoom_level:I

    return-void
.end method

.method static synthetic access$000(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/kristo/pogofakegps/MainActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->mListener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/kristo/pogofakegps/MainActivity;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method private static checkRootMethod1()Z
    .locals 2

    .prologue
    .line 395
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 396
    .local v0, "buildTags":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkRootMethod2()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 400
    const/16 v4, 0x9

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "/system/app/Superuser.apk"

    aput-object v4, v1, v3

    const-string v4, "/sbin/su"

    aput-object v4, v1, v2

    const/4 v4, 0x2

    const-string v5, "/system/bin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "/system/xbin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "/data/local/xbin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "/data/local/bin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "/system/sd/xbin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "/system/bin/failsafe/su"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "/data/local/su"

    aput-object v5, v1, v4

    .line 402
    .local v1, "paths":[Ljava/lang/String;
    array-length v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 403
    .local v0, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 405
    .end local v0    # "path":Ljava/lang/String;
    :goto_1
    return v2

    .line 402
    .restart local v0    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 405
    goto :goto_1
.end method

.method private static checkRootMethod3()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 409
    const/4 v1, 0x0

    .line 411
    .local v1, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/xbin/which"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "su"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 412
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 413
    .local v0, "in":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_1

    .line 418
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .end local v0    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return v3

    .restart local v0    # "in":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_2
    move v3, v4

    goto :goto_0

    .line 415
    .end local v0    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 418
    .local v2, "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_3
    move v3, v4

    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_4
    throw v3
.end method

.method private initComponents()V
    .locals 8

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 757
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/ads/AdView;

    .line 758
    .local v7, "adView":Lcom/google/android/gms/ads/AdView;
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 759
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "7D7FA34484F9CB70F71CDA63CBEE49D8"

    .line 760
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v6

    .line 763
    .local v6, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {v7, v6}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 764
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->setLocation:Landroid/widget/Button;

    .line 765
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->setLocation:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->stop:Landroid/widget/Button;

    .line 767
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->stop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MyPref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    .line 770
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 771
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    .line 772
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "favId"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    .line 773
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "s_root_location"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kristo/pogofakegps/MainActivity;->root_location:Z

    .line 774
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->stop:Landroid/widget/Button;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 775
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->stop:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 776
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->setLocation:Landroid/widget/Button;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 777
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->setLocation:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 781
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_locations"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 782
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->timer:Ljava/util/Timer;

    .line 783
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/kristo/pogofakegps/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/kristo/pogofakegps/MainActivity$9;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    const-wide/16 v2, 0xfa0

    const-wide/16 v4, 0x96

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 811
    return-void
.end method

.method public static isDeviceRooted()Z
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Lcom/kristo/pogofakegps/MainActivity;->checkRootMethod1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kristo/pogofakegps/MainActivity;->checkRootMethod2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kristo/pogofakegps/MainActivity;->checkRootMethod3()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 3

    .prologue
    .line 1248
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/kristo/pogofakegps/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1250
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1251
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setMode(Landroid/content/Context;III)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 259
    const-string v8, "appops"

    .line 260
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 261
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 264
    .local v1, "appOpsManagerClass":Ljava/lang/Class;
    const/4 v8, 0x4

    :try_start_0
    new-array v5, v8, [Ljava/lang/Class;

    .line 265
    .local v5, "types":[Ljava/lang/Class;
    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    .line 266
    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    .line 267
    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    .line 268
    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    .line 269
    const-string v8, "setMode"

    .line 270
    invoke-virtual {v1, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 272
    .local v4, "setModeMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x4

    new-array v2, v8, [Ljava/lang/Object;

    .line 273
    .local v2, "args":[Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 274
    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 275
    const/4 v8, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 276
    const/4 v8, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 277
    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 293
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v4    # "setModeMethod":Ljava/lang/reflect/Method;
    .end local v5    # "types":[Ljava/lang/Class;
    :goto_0
    return v6

    .line 281
    :catch_0
    move-exception v3

    .line 282
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    move v6, v7

    .line 293
    goto :goto_0

    .line 285
    :catch_1
    move-exception v3

    .line 286
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 289
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 290
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public act_searchPos()V
    .locals 4

    .prologue
    .line 913
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 914
    .local v0, "dialog":Landroid/app/Dialog;
    const v3, 0x7f04001b

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 915
    const-string v3, "Search Location"

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 918
    const v3, 0x7f0b0064

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 920
    .local v2, "searchP":Landroid/widget/EditText;
    const v3, 0x7f0b0066

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 922
    .local v1, "dialogButton2":Landroid/widget/Button;
    new-instance v3, Lcom/kristo/pogofakegps/MainActivity$13;

    invoke-direct {v3, p0, v2, v0}, Lcom/kristo/pogofakegps/MainActivity$13;-><init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 972
    return-void
.end method

.method public act_setPos()V
    .locals 5

    .prologue
    .line 976
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 977
    .local v0, "dialog":Landroid/app/Dialog;
    const v4, 0x7f040020

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 978
    const-string v4, "Enter Coordinate"

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 981
    const v4, 0x7f0b006f

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 982
    .local v2, "lat1":Landroid/widget/EditText;
    const v4, 0x7f0b0071

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 984
    .local v3, "lng1":Landroid/widget/EditText;
    const v4, 0x7f0b0066

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 986
    .local v1, "dialogButton1":Landroid/widget/Button;
    new-instance v4, Lcom/kristo/pogofakegps/MainActivity$14;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/kristo/pogofakegps/MainActivity$14;-><init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1055
    return-void
.end method

.method public activate(Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;)V
    .locals 0
    .param p1, "onLocationChangedListener"    # Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity;->mListener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    .line 1382
    return-void
.end method

.method public addToFav(I)V
    .locals 5
    .param p1, "paramInt"    # I

    .prologue
    .line 814
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "favName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    .line 815
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 816
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "favLat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latitude"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    .line 817
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 816
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 818
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "favLong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "longitude"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    .line 819
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 820
    iget v0, p0, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    .line 821
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "favId"

    iget v2, p0, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 822
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 823
    return-void
.end method

.method public addToRef(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V
    .locals 6
    .param p1, "tt"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 746
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 747
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 748
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "startlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 749
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "startlong"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 750
    iget v0, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    .line 751
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "id"

    iget v2, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 752
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 754
    return-void
.end method

.method protected declared-synchronized buildGoogleApiClient()V
    .locals 2

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->buildGoogleApiClient_done:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 465
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 466
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 467
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lcom/kristo/pogofakegps/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 470
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->buildGoogleApiClient_done:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->mListener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    .line 1387
    return-void
.end method

.method public enableMock()V
    .locals 5

    .prologue
    .line 590
    const-string v1, "Hello"

    .line 591
    .local v1, "msg":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 592
    const-string v1, "Set mock location app to PoGo Fake GPS to use this app"

    .line 597
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kristo/pogofakegps/MainActivity;->checking:Z

    .line 598
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 600
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 602
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Developer Options"

    new-instance v4, Lcom/kristo/pogofakegps/MainActivity$6;

    invoke-direct {v4, p0}, Lcom/kristo/pogofakegps/MainActivity$6;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    .line 603
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 616
    const-string v2, "Cancel"

    new-instance v3, Lcom/kristo/pogofakegps/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/kristo/pogofakegps/MainActivity$7;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 628
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->alert:Landroid/app/AlertDialog;

    .line 629
    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 631
    return-void

    .line 594
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_0
    const-string v1, "Enable mock location in developer options to use this app"

    goto :goto_0
.end method

.method protected favOption(I)V
    .locals 4
    .param p1, "paramInt"    # I

    .prologue
    .line 1060
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1061
    .local v2, "localDialog":Landroid/app/Dialog;
    const v3, 0x7f04001d

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1062
    const-string v3, "Favourites"

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1063
    const v3, 0x7f0b0068

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1064
    .local v0, "localButton1":Landroid/widget/Button;
    const v3, 0x7f0b0069

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1065
    .local v1, "localButton2":Landroid/widget/Button;
    new-instance v3, Lcom/kristo/pogofakegps/MainActivity$15;

    invoke-direct {v3, p0, v2, p1}, Lcom/kristo/pogofakegps/MainActivity$15;-><init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    new-instance v3, Lcom/kristo/pogofakegps/MainActivity$16;

    invoke-direct {v3, p0, v2, p1}, Lcom/kristo/pogofakegps/MainActivity$16;-><init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1101
    return-void
.end method

.method protected favRename(I)V
    .locals 3
    .param p1, "paramInt"    # I

    .prologue
    .line 1105
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1106
    .local v0, "localDialog":Landroid/app/Dialog;
    const v1, 0x7f04001e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1107
    const-string v1, "Rename"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1108
    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/kristo/pogofakegps/MainActivity$17;

    invoke-direct {v2, p0, v0, p1}, Lcom/kristo/pogofakegps/MainActivity$17;-><init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1124
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 1358
    :try_start_0
    sget-object v0, Lcom/kristo/pogofakegps/MainActivity;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->mockProviderIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1359
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    sget-object v1, Lcom/kristo/pogofakegps/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1364
    return-void

    .line 1360
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishActivity(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 1375
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->finishActivity(I)V

    .line 1376
    return-void
.end method

.method public initProv()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->initProv_done:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->initProv_done:Ljava/lang/Boolean;

    .line 640
    return-void
.end method

.method public isMockLocationEnabled()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 643
    const/4 v1, 0x0

    .line 646
    .local v1, "isMockLocation":Z
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    .line 647
    sget-object v6, Lcom/kristo/pogofakegps/MainActivity;->c:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 648
    .local v3, "opsManager":Landroid/app/AppOpsManager;
    const-string v6, "android:mock_location"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const-string v8, "com.kristo.pogofakegps"

    invoke-virtual {v3, v6, v7, v8}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    move v1, v4

    .end local v3    # "opsManager":Landroid/app/AppOpsManager;
    :goto_0
    move v2, v1

    .line 659
    .end local v1    # "isMockLocation":Z
    .local v2, "isMockLocation":I
    :goto_1
    return v2

    .end local v2    # "isMockLocation":I
    .restart local v1    # "isMockLocation":Z
    .restart local v3    # "opsManager":Landroid/app/AppOpsManager;
    :cond_0
    move v1, v5

    .line 648
    goto :goto_0

    .line 652
    .end local v3    # "opsManager":Landroid/app/AppOpsManager;
    :cond_1
    sget-object v6, Lcom/kristo/pogofakegps/MainActivity;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mock_location"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    :goto_2
    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_2

    .line 655
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v1

    .line 656
    .restart local v2    # "isMockLocation":I
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1300
    :goto_0
    return-void

    .line 1259
    :pswitch_0
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    .line 1260
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->zoom_on_location:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1261
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    .line 1262
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    iget v2, p0, Lcom/kristo/pogofakegps/MainActivity;->zoom_level:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v7

    .line 1263
    .local v7, "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 1264
    invoke-static {v7}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 1263
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1275
    :goto_1
    const-string v10, "Unknown Location"

    .line 1277
    .local v10, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->geocoder:Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 1278
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v9, :cond_2

    move v2, v12

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v12

    :goto_3
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1279
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 1280
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1281
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1292
    .end local v0    # "address":Landroid/location/Address;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    :goto_4
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, v1, v10}, Lcom/kristo/pogofakegps/MainActivity;->addToRef(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->setLocation()V

    goto :goto_0

    .line 1268
    .end local v7    # "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v10    # "result":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v11, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 1269
    .local v11, "zz":F
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    .line 1270
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v7

    .line 1271
    .restart local v7    # "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 1272
    invoke-static {v7}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 1271
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_1

    .end local v11    # "zz":F
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v10    # "result":Ljava/lang/String;
    :cond_2
    move v2, v13

    .line 1278
    goto :goto_2

    :cond_3
    move v1, v13

    goto :goto_3

    .line 1283
    .restart local v0    # "address":Landroid/location/Address;
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1284
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_4

    .line 1288
    .end local v0    # "address":Landroid/location/Address;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v8

    .line 1290
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1297
    .end local v7    # "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->finish()V

    goto/16 :goto_0

    .line 1256
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0062
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 1335
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 1330
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1344
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/MainActivity;->setContentView(I)V

    .line 180
    new-instance v0, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->geocoder:Landroid/location/Geocoder;

    .line 181
    sput-object p0, Lcom/kristo/pogofakegps/MainActivity;->c:Landroid/content/Context;

    .line 182
    invoke-direct {p0}, Lcom/kristo/pogofakegps/MainActivity;->initComponents()V

    .line 184
    invoke-direct {p0}, Lcom/kristo/pogofakegps/MainActivity;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please connect to the internet and try again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->finish()V

    .line 255
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 908
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 498
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 500
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "arg0"    # Landroid/location/Location;

    .prologue
    .line 1306
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 13
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 299
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v8, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 303
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/kristo/pogofakegps/MainActivity;->terrain_map:Z

    if-eqz v8, :cond_2

    .line 305
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 308
    :cond_2
    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v8}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v8}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 309
    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v9, v8, v12

    invoke-static {p0, v8, v11}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 313
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8, p0}, Lcom/google/android/gms/maps/GoogleMap;->setLocationSource(Lcom/google/android/gms/maps/LocationSource;)V

    .line 315
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 317
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v9, "startlat"

    const-string v10, "0"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 318
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v9, "startlat"

    const-string v10, "0"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 319
    .local v2, "la1":D
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v9, "startlong"

    const-string v10, "0"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 320
    .local v4, "lo1":D
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 321
    .local v7, "temp":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v8, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v8, v7}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 322
    .local v1, "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 324
    .end local v1    # "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v2    # "la1":D
    .end local v4    # "lo1":D
    .end local v7    # "temp":Lcom/google/android/gms/maps/model/LatLng;
    :cond_4
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v9, "first"

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/kristo/pogofakegps/MainActivity;->firstStart:I

    .line 325
    iget v8, p0, Lcom/kristo/pogofakegps/MainActivity;->firstStart:I

    if-nez v8, :cond_0

    .line 327
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "address"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Click and Hold"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "latitude"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "0.0"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 329
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "longitude"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "0.0"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 330
    iget v8, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    .line 331
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "id"

    iget v10, p0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 332
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "first"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 334
    iget-object v8, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    invoke-static {}, Lcom/kristo/pogofakegps/MainActivity;->isDeviceRooted()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 337
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    move-object v8, v0

    .line 338
    check-cast v8, Landroid/app/AlertDialog$Builder;

    const-string v9, "Welcome rooted user. Please read the instructions in the Play Store for detailed instructions to use this app. This is still a very unstable build. I am adding new features day by day and fixing bugs as they come up. Please leave a 5* review so that we  can build a stable fake location app together. A 1* review won\'t help either of us. Thank you and enjoy!"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v8, v0

    .line 342
    check-cast v8, Landroid/app/AlertDialog$Builder;

    const-string v9, "Welcome to PoGo Fake GPS"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v8, v0

    .line 343
    check-cast v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object v8, v0

    .line 344
    check-cast v8, Landroid/app/AlertDialog$Builder;

    const-string v9, "Cancel"

    new-instance v10, Lcom/kristo/pogofakegps/MainActivity$1;

    invoke-direct {v10, p0}, Lcom/kristo/pogofakegps/MainActivity$1;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v8, v0

    .line 353
    check-cast v8, Landroid/app/AlertDialog$Builder;

    const-string v9, "Play Store"

    new-instance v10, Lcom/kristo/pogofakegps/MainActivity$2;

    invoke-direct {v10, p0}, Lcom/kristo/pogofakegps/MainActivity$2;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    check-cast v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 368
    :cond_5
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v6, "localObject":Landroid/app/AlertDialog$Builder;
    move-object v8, v6

    .line 369
    check-cast v8, Landroid/app/AlertDialog$Builder;

    const-string v9, "Welcome. Unrooted users like yourself won\'t be able to set fake locations on certain apps. This app works better with rooted users. Please read the instructions in the Play Store for detailed instructions to use this app. This is still a very unstable build. I am adding new features day by day and fixing bugs as they come up. Please leave a 5* review so that we  can build a stable fake location app together. A 1* review won\'t help either of us. Thank you and enjoy!"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v8, v6

    .line 374
    check-cast v8, Landroid/app/AlertDialog$Builder;

    const-string v9, "Welcome to PoGo Fake GPS"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v8, v6

    .line 375
    check-cast v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object v8, v6

    .line 376
    check-cast v8, Landroid/app/AlertDialog$Builder;

    const-string v9, "Close"

    new-instance v10, Lcom/kristo/pogofakegps/MainActivity$3;

    invoke-direct {v10, p0}, Lcom/kristo/pogofakegps/MainActivity$3;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    check-cast v6, Landroid/app/AlertDialog$Builder;

    .end local v6    # "localObject":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 1197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1242
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 1199
    :pswitch_0
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->act_setPos()V

    goto :goto_0

    .line 1202
    :pswitch_1
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->act_searchPos()V

    goto :goto_0

    .line 1205
    :pswitch_2
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->show_history()V

    goto :goto_0

    .line 1208
    :pswitch_3
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->showFav()V

    goto :goto_0

    .line 1211
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kristo/pogofakegps/SettingsActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1212
    .local v2, "myIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/kristo/pogofakegps/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1216
    .end local v2    # "myIntent":Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1218
    .local v1, "builder2":Landroid/app/AlertDialog$Builder;
    const-string v4, "Please Rate"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1219
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1220
    const-string v4, "No"

    new-instance v5, Lcom/kristo/pogofakegps/MainActivity$20;

    invoke-direct {v5, p0}, Lcom/kristo/pogofakegps/MainActivity$20;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1227
    const-string v4, "YES"

    new-instance v5, Lcom/kristo/pogofakegps/MainActivity$21;

    invoke-direct {v5, p0}, Lcom/kristo/pogofakegps/MainActivity$21;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1239
    .local v0, "alert1":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1197
    :pswitch_data_0
    .packed-switch 0x7f0b008a
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 1312
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 1318
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 433
    packed-switch p1, :pswitch_data_0

    .line 459
    :goto_0
    return-void

    .line 435
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->buildGoogleApiClient()V

    .line 439
    sget-object v0, Lcom/kristo/pogofakegps/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    sget-object v0, Lcom/kristo/pogofakegps/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->set_up_map()V

    goto :goto_0

    .line 447
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 450
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GPS permission is required to run this app"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 505
    iget-boolean v2, p0, Lcom/kristo/pogofakegps/MainActivity;->checking:Z

    if-eqz v2, :cond_0

    .line 506
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 586
    :goto_0
    return-void

    .line 519
    :cond_0
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 521
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v2, v5

    invoke-static {p0, v2, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 524
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->buildGoogleApiClient()V

    .line 529
    sget-object v2, Lcom/kristo/pogofakegps/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 530
    sget-object v2, Lcom/kristo/pogofakegps/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 533
    :cond_2
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->set_up_map()V

    .line 535
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->mock_checking:Ljava/lang/Boolean;

    .line 537
    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "s_zoom_level"

    const/16 v4, 0xb

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/kristo/pogofakegps/MainActivity;->zoom_level:I

    .line 538
    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "s_zoom_on_loc"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->zoom_on_location:Ljava/lang/Boolean;

    .line 539
    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "s_root_location"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kristo/pogofakegps/MainActivity;->root_location:Z

    .line 540
    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "s_terrain_map"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kristo/pogofakegps/MainActivity;->terrain_map:Z

    .line 541
    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "s_root_location_dont_show"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 543
    .local v1, "show_root_loc_message":Z
    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/kristo/pogofakegps/MainActivity;->terrain_map:Z

    if-eqz v2, :cond_5

    .line 545
    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 552
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/kristo/pogofakegps/MainActivity;->root_location:Z

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 553
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "localObject":Landroid/app/AlertDialog$Builder;
    move-object v2, v0

    .line 554
    check-cast v2, Landroid/app/AlertDialog$Builder;

    const-string v3, "Root location is experimental. This app might crash on setting locations. For this to work you need to be rooted, you need to have Xposed installed with Mock Mock Location module enabled. PoGo Fake GPS must then also be set as mock location app in developer settings."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v2, v0

    .line 557
    check-cast v2, Landroid/app/AlertDialog$Builder;

    const-string v3, "WARNING! Root Location Enabled"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v2, v0

    .line 558
    check-cast v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object v2, v0

    .line 559
    check-cast v2, Landroid/app/AlertDialog$Builder;

    const-string v3, "Don\'t show again"

    new-instance v4, Lcom/kristo/pogofakegps/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/kristo/pogofakegps/MainActivity$4;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v2, v0

    .line 572
    check-cast v2, Landroid/app/AlertDialog$Builder;

    const-string v3, "Proceed"

    new-instance v4, Lcom/kristo/pogofakegps/MainActivity$5;

    invoke-direct {v4, p0}, Lcom/kristo/pogofakegps/MainActivity$5;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 581
    check-cast v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "localObject":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 585
    :cond_4
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    goto/16 :goto_0

    .line 547
    :cond_5
    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/kristo/pogofakegps/MainActivity;->terrain_map:Z

    if-nez v2, :cond_3

    .line 549
    iget-object v2, p0, Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 475
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 476
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 1324
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 481
    sget-object v0, Lcom/kristo/pogofakegps/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    sget-object v0, Lcom/kristo/pogofakegps/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Lcom/kristo/pogofakegps/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method public setLocation()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 670
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->isMockLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    sget-object v7, Lcom/kristo/pogofakegps/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v7, v9}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    .line 673
    :cond_0
    iget-boolean v1, p0, Lcom/kristo/pogofakegps/MainActivity;->root_location:Z

    if-eqz v1, :cond_2

    .line 675
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v7, "Setting location root mode"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 676
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 684
    :cond_1
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "enable_locations"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 685
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "lat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v9, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 686
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "long"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v9, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 687
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 690
    new-instance v1, Landroid/content/Intent;

    sget-object v7, Lcom/kristo/pogofakegps/MainActivity;->c:Landroid/content/Context;

    const-class v8, Lcom/kristo/pogofakegps/MockLocationProviderNew;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->mockProviderIntent:Landroid/content/Intent;

    .line 691
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->mockProviderIntent:Landroid/content/Intent;

    const-string v7, "type"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    sget-object v1, Lcom/kristo/pogofakegps/MainActivity;->c:Landroid/content/Context;

    iget-object v7, p0, Lcom/kristo/pogofakegps/MainActivity;->mockProviderIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 693
    sget-object v1, Lcom/kristo/pogofakegps/MainActivity;->c:Landroid/content/Context;

    iget-object v7, p0, Lcom/kristo/pogofakegps/MainActivity;->mockProviderIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 695
    new-instance v6, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v6, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 696
    .local v6, "mockLocation":Landroid/location/Location;
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v6, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 697
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v6, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 698
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    .line 699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/location/Location;->setTime(J)V

    .line 700
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v6, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 709
    sget-object v1, Lcom/kristo/pogofakegps/MainActivity;->c:Landroid/content/Context;

    const-string v7, "location"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 710
    .local v0, "locMgr":Landroid/location/LocationManager;
    new-instance v5, Lcom/kristo/pogofakegps/MainActivity$8;

    invoke-direct {v5, p0}, Lcom/kristo/pogofakegps/MainActivity$8;-><init>(Lcom/kristo/pogofakegps/MainActivity;)V

    .line 738
    .local v5, "lis":Landroid/location/LocationListener;
    const-string v1, "gps"

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 739
    const-string v1, "network"

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 740
    const-string v1, "passive"

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 741
    .end local v0    # "locMgr":Landroid/location/LocationManager;
    .end local v5    # "lis":Landroid/location/LocationListener;
    .end local v6    # "mockLocation":Landroid/location/Location;
    :goto_0
    return-void

    .line 678
    :cond_2
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->isMockLocationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->enableMock()V

    goto :goto_0
.end method

.method public set_up_map()V
    .locals 3

    .prologue
    .line 423
    iget-boolean v1, p0, Lcom/kristo/pogofakegps/MainActivity;->map_set_up:Z

    if-nez v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b005f

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 426
    .local v0, "mapFragment":Lcom/google/android/gms/maps/SupportMapFragment;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 427
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kristo/pogofakegps/MainActivity;->map_set_up:Z

    .line 429
    .end local v0    # "mapFragment":Lcom/google/android/gms/maps/SupportMapFragment;
    :cond_0
    return-void
.end method

.method public showFav()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 1127
    iget v0, p0, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    if-nez v0, :cond_0

    .line 1129
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No Favourites"

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1178
    :goto_0
    return-void

    .line 1132
    :cond_0
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1133
    .local v7, "localDialog":Landroid/app/Dialog;
    const v0, 0x7f04001c

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1134
    const-string v0, "Favourites"

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1135
    const v0, 0x7f0b0067

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 1136
    .local v9, "localListView":Landroid/widget/ListView;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v2, "localArrayList":Ljava/util/ArrayList;
    const/4 v6, 0x1

    .line 1140
    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "favId"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lt v6, v0, :cond_1

    .line 1142
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x1090004

    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v11

    const-string v1, "coord"

    aput-object v1, v4, v12

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1145
    new-instance v0, Lcom/kristo/pogofakegps/MainActivity$18;

    invoke-direct {v0, p0, v7}, Lcom/kristo/pogofakegps/MainActivity$18;-><init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1157
    new-instance v0, Lcom/kristo/pogofakegps/MainActivity$19;

    invoke-direct {v0, p0, v7}, Lcom/kristo/pogofakegps/MainActivity$19;-><init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1177
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1180
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 1181
    .local v8, "localHashMap":Ljava/util/HashMap;
    const-string v0, "title"

    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "favName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const-string v0, "coord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "favLat"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    .line 1182
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "favLong"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1182
    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    add-int/lit8 v6, v6, 0x1

    .line 1188
    goto/16 :goto_1

    .line 1142
    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public show_history()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 826
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "id"

    invoke-interface {v1, v3, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "No History"

    invoke-static {v1, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 828
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 902
    :goto_0
    return-void

    .line 834
    :cond_0
    new-instance v8, Landroid/app/Dialog;

    invoke-direct {v8, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 835
    .local v8, "dialog":Landroid/app/Dialog;
    const v1, 0x7f04001f

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 836
    const-string v1, "History"

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 838
    const v1, 0x7f0b006c

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 839
    .local v10, "lvHist":Landroid/widget/ListView;
    const v1, 0x7f0b006d

    .line 840
    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 841
    .local v6, "bHistClear":Landroid/widget/Button;
    new-instance v1, Lcom/kristo/pogofakegps/MainActivity$10;

    invoke-direct {v1, p0, v8}, Lcom/kristo/pogofakegps/MainActivity$10;-><init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "id"

    invoke-interface {v1, v3, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v9, v1, :cond_1

    .line 856
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 858
    .local v7, "datum":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    iget-object v3, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string v1, "coord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "latitude"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "0"

    invoke-interface {v4, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "longitude"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "0"

    .line 860
    invoke-interface {v4, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 859
    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 864
    .end local v7    # "datum":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x1090004

    new-array v4, v13, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v12

    const/4 v1, 0x1

    const-string v5, "coord"

    aput-object v5, v4, v1

    new-array v5, v13, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 868
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 869
    new-instance v1, Lcom/kristo/pogofakegps/MainActivity$11;

    invoke-direct {v1, p0, v8}, Lcom/kristo/pogofakegps/MainActivity$11;-><init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v10, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 891
    new-instance v1, Lcom/kristo/pogofakegps/MainActivity$12;

    invoke-direct {v1, p0, v8}, Lcom/kristo/pogofakegps/MainActivity$12;-><init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v10, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 901
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 864
    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method
