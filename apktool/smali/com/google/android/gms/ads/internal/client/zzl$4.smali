.class Lcom/google/android/gms/ads/internal/client/zzl$4;
.super Lcom/google/android/gms/ads/internal/client/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzl;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;)Lcom/google/android/gms/ads/internal/client/zzs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/zzl$zza",
        "<",
        "Lcom/google/android/gms/ads/internal/client/zzs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzakw:Ljava/lang/String;

.field final synthetic zzaky:Landroid/content/Context;

.field final synthetic zzavg:Lcom/google/android/gms/internal/zzgn;

.field final synthetic zzavh:Lcom/google/android/gms/ads/internal/client/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavh:Lcom/google/android/gms/ads/internal/client/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzaky:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzakw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavg:Lcom/google/android/gms/internal/zzgn;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/ads/internal/client/zzl$1;)V

    return-void
.end method


# virtual methods
.method public synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzc(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/ads/internal/client/zzs;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzaky:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzakw:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavg:Lcom/google/android/gms/internal/zzgn;

    const v3, 0x8d3c40

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzx;->createAdLoaderBuilder(Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;I)Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzin()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzio()Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object v0

    return-object v0
.end method

.method public zzio()Lcom/google/android/gms/ads/internal/client/zzs;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavh:Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzc(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzaky:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzakw:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavg:Lcom/google/android/gms/internal/zzgn;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzd;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;)Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzavh:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$4;->zzaky:Landroid/content/Context;

    const-string v2, "native_ad"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzaj;-><init>()V

    goto :goto_0
.end method
