.class final Lcom/google/android/gms/common/internal/zzf$2;
.super Lcom/google/android/gms/common/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zzf;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xR:C

.field final synthetic xS:C


# direct methods
.method constructor <init>(CC)V
    .locals 0

    iput-char p1, p0, Lcom/google/android/gms/common/internal/zzf$2;->xR:C

    iput-char p2, p0, Lcom/google/android/gms/common/internal/zzf$2;->xS:C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zzf$2;->xR:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zzf$2;->xS:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
