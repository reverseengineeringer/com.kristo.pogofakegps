.class public Lcom/kristo/pogofakegps/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# instance fields
.field c:Landroid/content/Context;

.field enable_tilt:Z

.field et_refresh_time:Landroid/widget/EditText;

.field localSharedPreferences:Landroid/content/SharedPreferences;

.field progress:Landroid/app/ProgressDialog;

.field refresh_rate:I

.field root_location:Z

.field sb_refresh_per:Landroid/widget/SeekBar;

.field sb_tilt:Landroid/widget/SeekBar;

.field sb_zoom:Landroid/widget/SeekBar;

.field sw_root:Landroid/widget/Switch;

.field sw_terrain:Landroid/widget/Switch;

.field sw_tilt:Landroid/widget/Switch;

.field sw_zom:Landroid/widget/Switch;

.field terrain_map:Z

.field tilt_sensitivity:I

.field tilt_side:D

.field tilt_up:D

.field timer:Ljava/util/Timer;

.field timer_counter:I

.field zero_tilt:Landroid/widget/Button;

.field zoom_level:I

.field zoom_on_location:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-wide v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->tilt_up:D

    .line 42
    iput-wide v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->tilt_side:D

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->timer_counter:I

    return-void
.end method

.method private push_settings_to_prefs()V
    .locals 5

    .prologue
    .line 51
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity;->localSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "s_zoom_on_loc"

    iget-object v3, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_zom:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v2, "s_zoom_level"

    iget-object v3, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sb_zoom:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    const-string v2, "s_root_location"

    iget-object v3, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_root:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    const-string v2, "s_terrain_map"

    iget-object v3, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_terrain:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string v2, "s_tilt_sensitivity"

    iget-object v3, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sb_tilt:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v2, "s_enable_tilt"

    iget-object v3, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_tilt:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity;->et_refresh_time:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "refresh_rate":I
    const/16 v2, 0x19

    if-gt v1, v2, :cond_1

    .line 62
    const/16 v1, 0x19

    .line 66
    :cond_0
    :goto_0
    const-string v2, "s_refresh_rate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string v2, "Refresh_rate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void

    .line 63
    :cond_1
    const/16 v2, 0xbb8

    if-lt v1, v2, :cond_0

    .line 64
    const/16 v1, 0xbb8

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 215
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/kristo/pogofakegps/SettingsActivity;->push_settings_to_prefs()V

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 242
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/SettingsActivity;->setContentView(I)V

    .line 77
    iput-object p0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->c:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Lcom/kristo/pogofakegps/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MyPref"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->localSharedPreferences:Landroid/content/SharedPreferences;

    .line 79
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "s_zoom_on_loc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->zoom_on_location:Z

    .line 80
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "s_zoom_level"

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->zoom_level:I

    .line 81
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "s_root_location"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->root_location:Z

    .line 82
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "s_refresh_rate"

    const/16 v2, 0x898

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->refresh_rate:I

    .line 83
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "s_terrain_map"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->terrain_map:Z

    .line 84
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "s_enable_tilt"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->enable_tilt:Z

    .line 85
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->localSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "s_tilt_sensitivity"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->tilt_sensitivity:I

    .line 87
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->et_refresh_time:Landroid/widget/EditText;

    .line 88
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->et_refresh_time:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kristo/pogofakegps/SettingsActivity;->refresh_rate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sb_tilt:Landroid/widget/SeekBar;

    .line 91
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sb_tilt:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/kristo/pogofakegps/SettingsActivity;->tilt_sensitivity:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 93
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_tilt:Landroid/widget/Switch;

    .line 94
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_tilt:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/kristo/pogofakegps/SettingsActivity;->enable_tilt:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 96
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_terrain:Landroid/widget/Switch;

    .line 97
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_terrain:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/kristo/pogofakegps/SettingsActivity;->terrain_map:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 99
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->zero_tilt:Landroid/widget/Button;

    .line 101
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_root:Landroid/widget/Switch;

    .line 102
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_root:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/kristo/pogofakegps/SettingsActivity;->root_location:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 103
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_zom:Landroid/widget/Switch;

    .line 104
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sw_zom:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/kristo/pogofakegps/SettingsActivity;->zoom_on_location:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/kristo/pogofakegps/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sb_zoom:Landroid/widget/SeekBar;

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sb_zoom:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/kristo/pogofakegps/SettingsActivity;->zoom_level:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/kristo/pogofakegps/SettingsActivity;->setupActionBar()V

    .line 116
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->zero_tilt:Landroid/widget/Button;

    new-instance v1, Lcom/kristo/pogofakegps/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/kristo/pogofakegps/SettingsActivity$1;-><init>(Lcom/kristo/pogofakegps/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity;->sb_zoom:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/kristo/pogofakegps/SettingsActivity;->zoom_level:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 228
    :pswitch_0
    invoke-direct {p0}, Lcom/kristo/pogofakegps/SettingsActivity;->push_settings_to_prefs()V

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
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
