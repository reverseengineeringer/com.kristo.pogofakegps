.class Lcom/google/android/gms/internal/zzcj$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzle$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcj;->zzb(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzle$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzfx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzarr:Lcom/google/android/gms/internal/zzcj;

.field final synthetic zzars:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcj;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcj$5;->zzarr:Lcom/google/android/gms/internal/zzcj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcj$5;->zzars:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfx;)V
    .locals 2

    const-string v0, "AFMA_updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcj$5;->zzars:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzfx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcj$5;->zzb(Lcom/google/android/gms/internal/zzfx;)V

    return-void
.end method
