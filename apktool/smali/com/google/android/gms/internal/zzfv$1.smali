.class Lcom/google/android/gms/internal/zzfv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfv;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzblp:Ljava/lang/String;

.field final synthetic zzblq:Lorg/json/JSONObject;

.field final synthetic zzblr:Lcom/google/android/gms/internal/zzfv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfv;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfv$1;->zzblr:Lcom/google/android/gms/internal/zzfv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfv$1;->zzblp:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfv$1;->zzblq:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv$1;->zzblr:Lcom/google/android/gms/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfv;->zza(Lcom/google/android/gms/internal/zzfv;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfv$1;->zzblp:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfv$1;->zzblq:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
