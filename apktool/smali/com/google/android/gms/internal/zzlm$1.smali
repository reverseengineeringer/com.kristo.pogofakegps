.class Lcom/google/android/gms/internal/zzlm$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlm;->zzvb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcpb:Lcom/google/android/gms/internal/zzlm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlm$1;->zzcpb:Lcom/google/android/gms/internal/zzlm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm$1;->zzcpb:Lcom/google/android/gms/internal/zzlm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlm;->zzcow:Lcom/google/android/gms/internal/zzjs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm$1;->zzcpb:Lcom/google/android/gms/internal/zzlm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlm;->zzcow:Lcom/google/android/gms/internal/zzjs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlm$1;->zzcpb:Lcom/google/android/gms/internal/zzlm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzlm;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjs;->zzj(Landroid/view/View;)V

    :cond_0
    return-void
.end method
