.class Lcom/kristo/pogofakegps/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/SettingsActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 122
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/SettingsActivity;->c:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/SensorManager;

    .line 124
    .local v13, "sensorManager":Landroid/hardware/SensorManager;
    new-array v4, v6, [F

    .line 125
    .local v4, "mValuesMagnet":[F
    new-array v3, v6, [F

    .line 126
    .local v3, "mValuesAccel":[F
    new-array v5, v6, [F

    .line 127
    .local v5, "mValuesOrientation":[F
    const/16 v0, 0x9

    new-array v2, v0, [F

    .line 129
    .local v2, "mRotationMatrix":[F
    new-instance v12, Lcom/kristo/pogofakegps/SettingsActivity$1$1;

    invoke-direct {v12, p0, v3, v4}, Lcom/kristo/pogofakegps/SettingsActivity$1$1;-><init>(Lcom/kristo/pogofakegps/SettingsActivity$1;[F[F)V

    .line 146
    .local v12, "mEventListener":Landroid/hardware/SensorEventListener;
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    invoke-virtual {v0, v13, v12}, Lcom/kristo/pogofakegps/SettingsActivity;->setListners(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V

    .line 148
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v6, v6, Lcom/kristo/pogofakegps/SettingsActivity;->c:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/kristo/pogofakegps/SettingsActivity;->progress:Landroid/app/ProgressDialog;

    .line 149
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/SettingsActivity;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Do Not Move Device"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/SettingsActivity;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 151
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/SettingsActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 152
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/SettingsActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 153
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/SettingsActivity;->progress:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 154
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/SettingsActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 155
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/SettingsActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 157
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/kristo/pogofakegps/SettingsActivity;->timer:Ljava/util/Timer;

    .line 158
    iget-object v0, p0, Lcom/kristo/pogofakegps/SettingsActivity$1;->this$0:Lcom/kristo/pogofakegps/SettingsActivity;

    iget-object v6, v0, Lcom/kristo/pogofakegps/SettingsActivity;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/kristo/pogofakegps/SettingsActivity$1$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kristo/pogofakegps/SettingsActivity$1$2;-><init>(Lcom/kristo/pogofakegps/SettingsActivity$1;[F[F[F[F)V

    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x1f4

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 195
    return-void
.end method
