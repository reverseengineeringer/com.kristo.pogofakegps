.class public Lcom/google/android/gms/internal/zzff;
.super Lcom/google/android/gms/internal/zzkg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field final zzbgj:Lcom/google/android/gms/internal/zzll;

.field final zzbjf:Lcom/google/android/gms/internal/zzfh;

.field private final zzbjg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzll;Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzbgj:Lcom/google/android/gms/internal/zzll;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzff;->zzbjf:Lcom/google/android/gms/internal/zzfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzff;->zzbjg:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfg;->zza(Lcom/google/android/gms/internal/zzff;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzbjf:Lcom/google/android/gms/internal/zzfh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfh;->abort()V

    return-void
.end method

.method public zzew()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzbjf:Lcom/google/android/gms/internal/zzfh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzbjg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfh;->zzba(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzff$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzff$1;-><init>(Lcom/google/android/gms/internal/zzff;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzff$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzff$1;-><init>(Lcom/google/android/gms/internal/zzff;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
