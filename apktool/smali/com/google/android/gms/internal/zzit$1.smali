.class final Lcom/google/android/gms/internal/zzit$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzit;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaky:Landroid/content/Context;

.field final synthetic zzcef:Lcom/google/android/gms/internal/zzis;

.field final synthetic zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzceh:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzis;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit$1;->zzcef:Lcom/google/android/gms/internal/zzis;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzit$1;->zzaky:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzit$1;->zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzit$1;->zzceh:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzit$1;->zzcy()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzcy()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit$1;->zzcef:Lcom/google/android/gms/internal/zzis;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcea:Lcom/google/android/gms/internal/zzix;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$1;->zzaky:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzit$1;->zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaw:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzit$1;->zzceh:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzix;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method
