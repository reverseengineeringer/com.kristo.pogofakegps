.class Lcom/google/android/gms/internal/zzra$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzra;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzqo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ve:Lcom/google/android/gms/internal/zzqo;

.field final synthetic vj:Lcom/google/android/gms/internal/zzra;

.field final synthetic zzap:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/internal/zzqo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzra$1;->ve:Lcom/google/android/gms/internal/zzqo;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzra$1;->zzap:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zza(Lcom/google/android/gms/internal/zzra;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra$1;->ve:Lcom/google/android/gms/internal/zzqo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zzb(Lcom/google/android/gms/internal/zzra;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zzb(Lcom/google/android/gms/internal/zzra;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra$1;->zzap:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqo;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zza(Lcom/google/android/gms/internal/zzra;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->ve:Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo;->onStart()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zza(Lcom/google/android/gms/internal/zzra;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->ve:Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo;->onStop()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
