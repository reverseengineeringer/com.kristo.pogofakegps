.class Lcom/kristo/pogofakegps/SettingsActivity$1$2;
.super Ljava/util/TimerTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/SettingsActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

.field final synthetic val$mRotationMatrix:[F

.field final synthetic val$mValuesAccel:[F

.field final synthetic val$mValuesMagnet:[F

.field final synthetic val$mValuesOrientation:[F


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/SettingsActivity$1;[F[F[F[F)V
    .locals 0
    .param p1, "this$1"    # Lcom/kristo/pogofakegps/SettingsActivity$1;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iput-object p2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mRotationMatrix:[F

    iput-object p3, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mValuesAccel:[F

    iput-object p4, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mValuesMagnet:[F

    iput-object p5, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mValuesOrientation:[F

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    .line 162
    const-string v2, "Timer!!"

    const-string v3, "In Timer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget v2, v2, Lcom/kristo/pogofakegps/SettingsActivity;->timer_counter:I

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    div-double/2addr v2, v8

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 164
    .local v1, "pp":I
    const-string v2, "Timer!!"

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

    .line 166
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mRotationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mValuesAccel:[F

    iget-object v5, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mValuesMagnet:[F

    invoke-static {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 167
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mRotationMatrix:[F

    iget-object v3, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mValuesOrientation:[F

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 173
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-wide v4, v2, Lcom/kristo/pogofakegps/SettingsActivity;->tilt_up:D

    iget-object v3, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mValuesOrientation:[F

    const/4 v6, 0x1

    aget v3, v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/kristo/pogofakegps/SettingsActivity;->tilt_up:D

    .line 174
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-wide v4, v2, Lcom/kristo/pogofakegps/SettingsActivity;->tilt_side:D

    iget-object v3, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->val$mValuesOrientation:[F

    const/4 v6, 0x2

    aget v3, v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/kristo/pogofakegps/SettingsActivity;->tilt_side:D

    .line 178
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 179
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget v3, v2, Lcom/kristo/pogofakegps/SettingsActivity;->timer_counter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/kristo/pogofakegps/SettingsActivity;->timer_counter:I

    .line 180
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget v2, v2, Lcom/kristo/pogofakegps/SettingsActivity;->timer_counter:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 182
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity;->localSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "tilt_up_origin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v4, v4, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-wide v4, v4, Lcom/kristo/pogofakegps/SettingsActivity;->tilt_up:D

    div-double/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v2, "tilt_side_origin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v4, v4, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-wide v4, v4, Lcom/kristo/pogofakegps/SettingsActivity;->tilt_side:D

    div-double/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/kristo/pogofakegps/SettingsActivity;->timer_counter:I

    .line 187
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 188
    iget-object v2, p0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;->this$1:Lcom/kristo/pogofakegps/SettingsActivity$1;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v2, v2, Lcom/kristo/pogofakegps/SettingsActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 192
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
