.class Lcom/google/android/gms/internal/zzfh$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfh;->zza(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjl:Ljava/lang/String;

.field final synthetic zzbjm:Ljava/lang/String;

.field final synthetic zzbjo:I

.field final synthetic zzbjq:Lcom/google/android/gms/internal/zzfh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjq:Lcom/google/android/gms/internal/zzfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjm:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheComplete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjm:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "totalBytes"

    iget v2, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjo:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjq:Lcom/google/android/gms/internal/zzfh;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzfh;->zza(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
