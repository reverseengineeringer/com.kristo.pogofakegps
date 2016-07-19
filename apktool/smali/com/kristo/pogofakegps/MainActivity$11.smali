.class Lcom/kristo/pogofakegps/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->show_history()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/MainActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/MainActivity;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$11;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput-object p2, p0, Lcom/kristo/pogofakegps/MainActivity$11;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$11;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v6, v6, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "latitude"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 878
    .local v2, "la1":D
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$11;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v6, v6, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "longitude"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 880
    .local v4, "lo1":D
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 881
    .local v1, "temp":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v6, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v6}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 882
    invoke-virtual {v6, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 883
    .local v0, "cam":Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$11;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    # getter for: Lcom/kristo/pogofakegps/MainActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v6}, Lcom/kristo/pogofakegps/MainActivity;->access$100(Lcom/kristo/pogofakegps/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v6

    .line 884
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v7

    .line 883
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 885
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$11;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput-object v1, v6, Lcom/kristo/pogofakegps/MainActivity;->ooh:Lcom/google/android/gms/maps/model/LatLng;

    .line 886
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$11;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v6}, Lcom/kristo/pogofakegps/MainActivity;->setLocation()V

    .line 887
    iget-object v6, p0, Lcom/kristo/pogofakegps/MainActivity$11;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->cancel()V

    .line 889
    return-void
.end method
