.class final Lcom/google/android/gms/internal/zzaol$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzams;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Time;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaol;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaol;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
