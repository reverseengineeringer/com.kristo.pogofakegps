.class Lcom/kristo/pogofakegps/DeviceTilt$2;
.super Ljava/util/TimerTask;
.source "DeviceTilt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/DeviceTilt;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/DeviceTilt;

.field final synthetic val$mRotationMatrix:[F

.field final synthetic val$mValuesAccel:[F

.field final synthetic val$mValuesMagnet:[F

.field final synthetic val$mValuesOrientation:[F


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/DeviceTilt;[F[F[F[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/DeviceTilt;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->this$0:Lcom/kristo/pogofakegps/DeviceTilt;

    iput-object p2, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mRotationMatrix:[F

    iput-object p3, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesAccel:[F

    iput-object p4, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesMagnet:[F

    iput-object p5, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesOrientation:[F

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 72
    iget-object v2, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mRotationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesAccel:[F

    iget-object v5, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesMagnet:[F

    invoke-static {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 73
    iget-object v2, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mRotationMatrix:[F

    iget-object v3, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesOrientation:[F

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesOrientation:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesOrientation:[F

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesOrientation:[F

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "test":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->this$0:Lcom/kristo/pogofakegps/DeviceTilt;

    iget-object v2, v2, Lcom/kristo/pogofakegps/DeviceTilt;->localSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "tilt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v2, "tilt_north_south"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesOrientation:[F

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v2, "tilt_east_west"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kristo/pogofakegps/DeviceTilt$2;->val$mValuesOrientation:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method
