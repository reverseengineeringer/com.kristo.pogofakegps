.class public Lcom/google/android/gms/clearcut/zzb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private pR:Ljava/lang/String;

.field private pS:I

.field private pT:Ljava/lang/String;

.field private pU:Ljava/lang/String;

.field private pW:I

.field private final qb:Lcom/google/android/gms/clearcut/zzb$zzc;

.field private qc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private qg:Z

.field private final qh:Lcom/google/android/gms/internal/zzapg$zzd;

.field private qi:Z

.field final synthetic qj:Lcom/google/android/gms/clearcut/zzb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/zzb;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$zzc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$zzc;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zza(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pS:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzb(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pR:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pT:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zze(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pW:I

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qc:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qd:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qe:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qf:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qg:Z

    new-instance v0, Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapg$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qi:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pT:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biF:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biG:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzh(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zza;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzg(Lcom/google/android/gms/clearcut/zzb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/clearcut/zza;->zzbk(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biX:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzi(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzapg$zzd;->biF:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/clearcut/zzb$zzd;->zzae(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biR:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biM:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qb:Lcom/google/android/gms/clearcut/zzb$zzc;

    return-void
.end method


# virtual methods
.method public zzamv()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 13

    const/4 v12, 0x0

    new-instance v11, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zzb;->zzk(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/zzb;->zzl(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pS:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pR:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pT:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pU:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/zzb;->zzj(Lcom/google/android/gms/clearcut/zzb;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pW:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qb:Lcom/google/android/gms/clearcut/zzb$zzc;

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zzb;->zze(Ljava/util/ArrayList;)[I

    move-result-object v6

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zzb;->zzf(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zzb;->zze(Ljava/util/ArrayList;)[I

    move-result-object v8

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zzb;->zzg(Ljava/util/ArrayList;)[[B

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qg:Z

    move-object v1, v11

    move-object v2, v0

    move-object v5, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/zzapg$zzd;Lcom/google/android/gms/clearcut/zzb$zzc;Lcom/google/android/gms/clearcut/zzb$zzc;[I[Ljava/lang/String;[I[[BZ)V

    return-object v11
.end method

.method public zze(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qi:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qi:Z

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/zzb$zza;->zzamv()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qk:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zzb;->zzm(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzb;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->asm:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->asi:I

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/clearcut/zzb$zzb;->zzg(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzn(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/zzb$zza;->zzamv()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/clearcut/zzc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->sg:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/PendingResults;->immediatePendingResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0
.end method

.method public zzew(I)Lcom/google/android/gms/clearcut/zzb$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biI:I

    return-object p0
.end method

.method public zzex(I)Lcom/google/android/gms/clearcut/zzb$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzapg$zzd;->zzahl:I

    return-object p0
.end method
