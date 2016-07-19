.class Lcom/kristo/pogofakegps/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->act_setPos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/MainActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$lat1:Landroid/widget/EditText;

.field final synthetic val$lng1:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/MainActivity;

    .prologue
    .line 986
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput-object p2, p0, Lcom/kristo/pogofakegps/MainActivity$14;->val$lat1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kristo/pogofakegps/MainActivity$14;->val$lng1:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/kristo/pogofakegps/MainActivity$14;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 991
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->val$lat1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    const/16 v5, 0x2e

    .line 992
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 991
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 993
    .local v12, "on1":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->val$lng1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    const/16 v5, 0x2e

    .line 994
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 993
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 995
    .local v14, "on2":D
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, v12, v4

    if-ltz v3, :cond_0

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v3, v12, v4

    if-gtz v3, :cond_0

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v3, v14, v4

    if-ltz v3, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v3, v14, v4

    if-lez v3, :cond_1

    .line 997
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v3}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Incorrect LatLng range"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 999
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1000
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v3}, Lcom/kristo/pogofakegps/MainActivity;->act_setPos()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .end local v12    # "on1":D
    .end local v14    # "on2":D
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    .line 1050
    return-void

    .line 1002
    .restart local v12    # "on1":D
    .restart local v14    # "on2":D
    :cond_1
    :try_start_1
    new-instance v17, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v17

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1003
    .local v17, "temp":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v4, v6, v7, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v4, v3, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    .line 1004
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v3, v3, Lcom/kristo/pogofakegps/MainActivity;->zoom_on_location:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1005
    new-instance v3, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 1006
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget v4, v4, Lcom/kristo/pogofakegps/MainActivity;->zoom_level:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    .line 1007
    .local v9, "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    # getter for: Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v3}, Lcom/kristo/pogofakegps/MainActivity;->access$100(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    .line 1008
    invoke-static {v9}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    .line 1007
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1020
    :goto_1
    const-string v16, "Unknown Location"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1022
    .local v16, "result":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v3, v3, Lcom/kristo/pogofakegps/MainActivity;->geocoder:Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v4, v4, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v6, v6, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v11

    .line 1024
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v11, :cond_4

    const/4 v3, 0x1

    move v4, v3

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 1025
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 1026
    .local v2, "address":Landroid/location/Address;
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1027
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v16

    .line 1038
    .end local v2    # "address":Landroid/location/Address;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_2
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v4, v4, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lcom/kristo/pogofakegps/MainActivity;->addToRef(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v3}, Lcom/kristo/pogofakegps/MainActivity;->setLocation()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1042
    .end local v9    # "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v12    # "on1":D
    .end local v14    # "on2":D
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "temp":Lcom/google/android/gms/maps/model/LatLng;
    :catch_0
    move-exception v10

    .line 1043
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v3}, Lcom/kristo/pogofakegps/MainActivity;->act_setPos()V

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v3}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Number Format Exception"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1047
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1012
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "on1":D
    .restart local v14    # "on2":D
    .restart local v17    # "temp":Lcom/google/android/gms/maps/model/LatLng;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    # getter for: Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v3}, Lcom/kristo/pogofakegps/MainActivity;->access$100(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    iget v0, v3, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    move/from16 v18, v0

    .line 1013
    .local v18, "zz":F
    new-instance v3, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 1014
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    .line 1015
    .restart local v9    # "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kristo/pogofakegps/MainActivity$14;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    # getter for: Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v3}, Lcom/kristo/pogofakegps/MainActivity;->access$100(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    .line 1016
    invoke-static {v9}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    .line 1015
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 1024
    .end local v18    # "zz":F
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v16    # "result":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_2

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1029
    .restart local v2    # "address":Landroid/location/Address;
    :cond_6
    :try_start_5
    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1030
    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v16

    goto :goto_4

    .line 1034
    .end local v2    # "address":Landroid/location/Address;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_1
    move-exception v10

    .line 1036
    .local v10, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4
.end method
