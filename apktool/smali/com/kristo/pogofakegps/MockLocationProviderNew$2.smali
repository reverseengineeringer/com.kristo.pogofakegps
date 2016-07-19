.class Lcom/kristo/pogofakegps/MockLocationProviderNew$2;
.super Ljava/util/TimerTask;
.source "MockLocationProviderNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MockLocationProviderNew;->startFaking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

.field final synthetic val$mRotationMatrix:[F

.field final synthetic val$mValuesAccel:[F

.field final synthetic val$mValuesMagnet:[F

.field final synthetic val$mValuesOrientation:[F


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/MockLocationProviderNew;[F[F[F[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/MockLocationProviderNew;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    iput-object p2, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mRotationMatrix:[F

    iput-object p3, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mValuesAccel:[F

    iput-object p4, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mValuesMagnet:[F

    iput-object p5, p0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mValuesOrientation:[F

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->counter:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/kristo/pogofakegps/MockLocationProviderNew;->counter:I

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->tilt_enabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->counter:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->peri:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/kristo/pogofakegps/MockLocationProviderNew;->counter:I

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mRotationMatrix:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mValuesAccel:[F

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mValuesMagnet:[F

    move-object/from16 v27, v0

    invoke-static/range {v24 .. v27}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mRotationMatrix:[F

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mValuesOrientation:[F

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->localSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 159
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-wide v10, 0x40a7a20000000000L    # 3025.0

    .line 160
    .local v10, "max_refresh_time":D
    const-wide/high16 v12, 0x4039000000000000L    # 25.0

    .line 162
    .local v12, "min_refresh_time":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mValuesOrientation:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->tilt_side_origin:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 163
    .local v20, "walk_side":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->val$mValuesOrientation:[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->tilt_up_origin:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 171
    .local v22, "walk_up":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->timer_refresh:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v26, v10, v12

    div-double v24, v24, v26

    mul-double v24, v24, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->tilt_sensitivity:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4069000000000000L    # 200.0

    div-double v24, v24, v26

    const-wide v26, 0x3f2a36e2eb1c432dL    # 2.0E-4

    mul-double v16, v24, v26

    .line 172
    .local v16, "up_add":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->timer_refresh:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v26, v10, v12

    div-double v24, v24, v26

    mul-double v24, v24, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->tilt_sensitivity:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4069000000000000L    # 200.0

    div-double v24, v24, v26

    const-wide v26, 0x3f2a36e2eb1c432dL    # 2.0E-4

    mul-double v18, v24, v26

    .line 175
    .local v18, "up_down":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->d1:D

    move-wide/from16 v26, v0

    add-double v26, v26, v16

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/kristo/pogofakegps/MockLocationProviderNew;->d1:D

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->d2:D

    move-wide/from16 v26, v0

    add-double v26, v26, v18

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/kristo/pogofakegps/MockLocationProviderNew;->d2:D

    .line 180
    const-string v24, "lat"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->d1:D

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v24, "long"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->d2:D

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "max_refresh_time":D
    .end local v12    # "min_refresh_time":D
    .end local v16    # "up_add":D
    .end local v18    # "up_down":D
    .end local v20    # "walk_side":D
    .end local v22    # "walk_up":D
    :cond_0
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    .line 186
    .local v15, "rand":Ljava/util/Random;
    const/16 v24, 0x64

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 187
    .local v9, "n1":I
    const/16 v24, 0x64

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 188
    .local v14, "n2":I
    int-to-double v0, v9

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4049000000000000L    # 50.0

    sub-double v24, v24, v26

    const-wide v26, 0x3e7ad7f29abcaf48L    # 1.0E-7

    mul-double v16, v24, v26

    .line 189
    .restart local v16    # "up_add":D
    int-to-double v0, v14

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4049000000000000L    # 50.0

    sub-double v24, v24, v26

    const-wide v26, 0x3e7ad7f29abcaf48L    # 1.0E-7

    mul-double v6, v24, v26

    .line 194
    .local v6, "add_side":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->d1:D

    move-wide/from16 v26, v0

    add-double v26, v26, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew$2;->this$0:Lcom/kristo/pogofakegps/MockLocationProviderNew;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/kristo/pogofakegps/MockLocationProviderNew;->d2:D

    move-wide/from16 v28, v0

    add-double v28, v28, v6

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    # invokes: Lcom/kristo/pogofakegps/MockLocationProviderNew;->setLocation(DD)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kristo/pogofakegps/MockLocationProviderNew;->access$000(Lcom/kristo/pogofakegps/MockLocationProviderNew;DD)V

    .line 197
    return-void
.end method
