.class Lcom/kristo/pogofakegps/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->act_searchPos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/MainActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$searchP:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/MainActivity;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput-object p2, p0, Lcom/kristo/pogofakegps/MainActivity$13;->val$searchP:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kristo/pogofakegps/MainActivity$13;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 931
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v11, v11, Lcom/kristo/pogofakegps/MainActivity;->geocoder:Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kristo/pogofakegps/MainActivity$13;->val$searchP:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    .line 932
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    .line 931
    invoke-virtual {v11, v12, v13}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 933
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 934
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Address;

    invoke-virtual {v11}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    .line 935
    .local v6, "lat1":D
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Address;

    invoke-virtual {v11}, Landroid/location/Address;->getLongitude()D

    move-result-wide v8

    .line 936
    .local v8, "long1":D
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 937
    .local v5, "temp":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    new-instance v12, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v14, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v0, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v12, v11, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    .line 938
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v11, v11, Lcom/kristo/pogofakegps/MainActivity;->zoom_on_location:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 939
    new-instance v11, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v11}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 940
    invoke-virtual {v11, v5}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget v12, v12, Lcom/kristo/pogofakegps/MainActivity;->zoom_level:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    .line 941
    .local v3, "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    # getter for: Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v11}, Lcom/kristo/pogofakegps/MainActivity;->access$100(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v11

    .line 942
    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v12

    .line 941
    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 952
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v12, v12, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kristo/pogofakegps/MainActivity$13;->val$searchP:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/kristo/pogofakegps/MainActivity;->addToRef(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v11}, Lcom/kristo/pogofakegps/MainActivity;->setLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v3    # "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v5    # "temp":Lcom/google/android/gms/maps/model/LatLng;
    .end local v6    # "lat1":D
    .end local v8    # "long1":D
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->cancel()V

    .line 968
    return-void

    .line 946
    .restart local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v5    # "temp":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v6    # "lat1":D
    .restart local v8    # "long1":D
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    # getter for: Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v11}, Lcom/kristo/pogofakegps/MainActivity;->access$100(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v11

    iget v10, v11, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 947
    .local v10, "zz":F
    new-instance v11, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v11}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 948
    invoke-virtual {v11, v5}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    .line 949
    .restart local v3    # "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    # getter for: Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v11}, Lcom/kristo/pogofakegps/MainActivity;->access$100(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v11

    .line 950
    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v12

    .line 949
    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 961
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v3    # "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v5    # "temp":Lcom/google/android/gms/maps/model/LatLng;
    .end local v6    # "lat1":D
    .end local v8    # "long1":D
    .end local v10    # "zz":F
    :catch_0
    move-exception v4

    .line 962
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v11}, Lcom/kristo/pogofakegps/MainActivity;->act_searchPos()V

    .line 964
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v11}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "Error"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 965
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 955
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v11}, Lcom/kristo/pogofakegps/MainActivity;->act_searchPos()V

    .line 957
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kristo/pogofakegps/MainActivity$13;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v11}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "Address Not Found"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 958
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
