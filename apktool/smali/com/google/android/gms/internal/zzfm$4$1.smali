.class Lcom/google/android/gms/internal/zzfm$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfm$4;->zza(Lcom/google/android/gms/internal/zzdn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbke:Lcom/google/android/gms/internal/zzdn;

.field final synthetic zzbkf:Lcom/google/android/gms/internal/zzfm$4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfm$4;Lcom/google/android/gms/internal/zzdn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfm$4$1;->zzbkf:Lcom/google/android/gms/internal/zzfm$4;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfm$4$1;->zzbke:Lcom/google/android/gms/internal/zzdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfn;->zzbkn:Lcom/google/android/gms/internal/zzdo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfn;->zzbkn:Lcom/google/android/gms/internal/zzdo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfm$4$1;->zzbke:Lcom/google/android/gms/internal/zzdn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzdn;)V

    :cond_0
    return-void
.end method
