.class public final Lcom/google/android/gms/internal/zzah$zzc;
.super Lcom/google/android/gms/internal/zzaow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaow",
        "<",
        "Lcom/google/android/gms/internal/zzah$zzc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzut:[Lcom/google/android/gms/internal/zzah$zzc;


# instance fields
.field public zzcb:Ljava/lang/String;

.field public zzuu:J

.field public zzuv:J

.field public zzuw:Z

.field public zzux:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaow;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzah$zzc;->zzaf()Lcom/google/android/gms/internal/zzah$zzc;

    return-void
.end method

.method public static zzae()[Lcom/google/android/gms/internal/zzah$zzc;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzah$zzc;->zzut:[Lcom/google/android/gms/internal/zzah$zzc;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzapa;->bij:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzah$zzc;->zzut:[Lcom/google/android/gms/internal/zzah$zzc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzah$zzc;

    sput-object v0, Lcom/google/android/gms/internal/zzah$zzc;->zzut:[Lcom/google/android/gms/internal/zzah$zzc;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzah$zzc;->zzut:[Lcom/google/android/gms/internal/zzah$zzc;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzah$zzc;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzah$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuu:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzah$zzc;->zzuu:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuv:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzah$zzc;->zzuv:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuw:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzah$zzc;->zzuw:Z

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzux:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzah$zzc;->zzux:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzah$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoy;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuu:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuu:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuv:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuv:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuw:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzux:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzux:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoy;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuu:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuu:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzb(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuv:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuv:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzb(IJ)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuw:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuw:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzj(IZ)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzux:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzux:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzb(IJ)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public zzaf()Lcom/google/android/gms/internal/zzah$zzc;
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuu:J

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuv:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuw:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzux:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->bik:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzah$zzc;->zzl(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzah$zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzah$zzc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuu:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuv:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->P()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuw:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzux:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method protected zzy()I
    .locals 8

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaow;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzcb:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuu:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuu:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuv:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuv:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuw:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzuw:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzk(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzux:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzah$zzc;->zzux:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method
