.class Lcom/kristo/pogofakegps/DeviceTilt$1;
.super Ljava/lang/Object;
.source "DeviceTilt.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

.field final synthetic val$mValuesAccel:[F

.field final synthetic val$mValuesMagnet:[F


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/DeviceTilt;[F[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/DeviceTilt;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kristo/pogofakegps/DeviceTilt$1;->this$0:Lcom/kristo/pogofakegps/DeviceTilt;

    iput-object p2, p0, Lcom/kristo/pogofakegps/DeviceTilt$1;->val$mValuesAccel:[F

    iput-object p3, p0, Lcom/kristo/pogofakegps/DeviceTilt$1;->val$mValuesMagnet:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 45
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 49
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/kristo/pogofakegps/DeviceTilt$1;->val$mValuesAccel:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/kristo/pogofakegps/DeviceTilt$1;->val$mValuesMagnet:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
