.class public Lcom/google/android/gms/location/ActivityRecognitionRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/ActivityRecognitionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private act:J

.field private acu:Z

.field private acv:Landroid/os/WorkSource;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private acw:[I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private acx:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private cf:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zza;

    invoke-direct {v0}, Lcom/google/android/gms/location/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJZLandroid/os/WorkSource;Ljava/lang/String;[IZLjava/lang/String;)V
    .locals 0
    .param p5    # Landroid/os/WorkSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->act:J

    iput-boolean p4, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->acu:Z

    iput-object p5, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->acv:Landroid/os/WorkSource;

    iput-object p6, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->mTag:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->acw:[I

    iput-boolean p8, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->acx:Z

    iput-object p9, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->cf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->act:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zza;->zza(Lcom/google/android/gms/location/ActivityRecognitionRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbnb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->acu:Z

    return v0
.end method

.method public zzbnc()Landroid/os/WorkSource;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->acv:Landroid/os/WorkSource;

    return-object v0
.end method

.method public zzbnd()[I
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->acw:[I

    return-object v0
.end method

.method public zzbne()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->acx:Z

    return v0
.end method
