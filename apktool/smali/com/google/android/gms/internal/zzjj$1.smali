.class Lcom/google/android/gms/internal/zzjj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjj;->zza(Lcom/google/android/gms/internal/zzjy$zza;Lcom/google/android/gms/internal/zzdk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzake:Lcom/google/android/gms/internal/zzjy$zza;

.field final synthetic zzchn:Lcom/google/android/gms/internal/zzjj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzjy$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjj$1;->zzchn:Lcom/google/android/gms/internal/zzjj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjj$1;->zzake:Lcom/google/android/gms/internal/zzjy$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/google/android/gms/internal/zzjj$1;->zzchn:Lcom/google/android/gms/internal/zzjj;

    new-instance v0, Lcom/google/android/gms/internal/zzjy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjj$1;->zzake:Lcom/google/android/gms/internal/zzjy$zza;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzjy;-><init>(Lcom/google/android/gms/internal/zzjy$zza;Lcom/google/android/gms/internal/zzll;Lcom/google/android/gms/internal/zzgd;Lcom/google/android/gms/internal/zzgo;Ljava/lang/String;Lcom/google/android/gms/internal/zzgg;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/zzjj;->zzb(Lcom/google/android/gms/internal/zzjy;)V

    return-void
.end method
