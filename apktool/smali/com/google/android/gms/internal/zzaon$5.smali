.class final Lcom/google/android/gms/internal/zzaon$5;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzank",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaon$5;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaor;->zztb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaor;

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaon$5;->zzq(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzq(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhH:Lcom/google/android/gms/internal/zzaoq;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhG:Lcom/google/android/gms/internal/zzaoq;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
