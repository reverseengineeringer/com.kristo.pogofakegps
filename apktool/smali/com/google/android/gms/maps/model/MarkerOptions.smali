.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzf;


# instance fields
.field private Fx:Ljava/lang/String;

.field private ahK:Lcom/google/android/gms/maps/model/LatLng;

.field private aiE:Ljava/lang/String;

.field private aiF:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private aiG:Z

.field private aiH:Z

.field private aiI:F

.field private aiJ:F

.field private aiK:F

.field private aim:F

.field private ain:Z

.field private aiv:F

.field private aiw:F

.field private mAlpha:F

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lcom/google/android/gms/maps/model/zzf;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiv:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiw:F

    iput-boolean v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ain:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiH:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiI:F

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiJ:F

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiK:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiv:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiw:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ain:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiH:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiI:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiJ:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiK:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ahK:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Fx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiE:Ljava/lang/String;

    if-nez p5, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiF:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiv:F

    iput p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiw:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiG:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ain:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiH:Z

    iput p11, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiI:F

    iput p12, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiJ:F

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiK:F

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aim:F

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/zzd$zza;->zzfc(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/zzd;)V

    goto :goto_0
.end method


# virtual methods
.method public alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return-object p0
.end method

.method public anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiv:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiw:F

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiG:Z

    return-object p0
.end method

.method public flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiH:Z

    return-object p0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiv:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiw:F

    return v0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiF:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getInfoWindowAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiJ:F

    return v0
.end method

.method public getInfoWindowAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiK:F

    return v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ahK:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiI:F

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiE:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Fx:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mVersionCode:I

    return v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aim:F

    return v0
.end method

.method public icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .param p1    # Lcom/google/android/gms/maps/model/BitmapDescriptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiF:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiJ:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiK:F

    return-object p0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiG:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiH:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ain:Z

    return v0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 2
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "latlng cannot be null - a position is required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ahK:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiI:F

    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiE:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Fx:Ljava/lang/String;

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ain:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzf;->zza(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aim:F

    return-object p0
.end method

.method zzbqh()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiF:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aiF:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzbpg()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
