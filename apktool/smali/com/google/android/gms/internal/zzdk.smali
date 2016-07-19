.class public Lcom/google/android/gms/internal/zzdk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field zzbdm:Z

.field private final zzbed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbee:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbef:Ljava/lang/String;

.field private zzbeg:Lcom/google/android/gms/internal/zzdi;

.field private zzbeh:Lcom/google/android/gms/internal/zzdk;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbed:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbee:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdk;->zzbdm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbee:Ljava/util/Map;

    const-string v1, "action"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbee:Ljava/util/Map;

    const-string v1, "ad_format"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs zza(Lcom/google/android/gms/internal/zzdi;J[Ljava/lang/String;)Z
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    array-length v2, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p4, v0

    new-instance v4, Lcom/google/android/gms/internal/zzdi;

    invoke-direct {v4, p2, p3, v3, p1}, Lcom/google/android/gms/internal/zzdi;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzdi;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdk;->zzbed:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/zzdi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbdm:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;J[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public zzas(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbdm:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzdk;->zzbef:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzc(J)Lcom/google/android/gms/internal/zzdi;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdk;->zzbdm:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzdi;

    invoke-direct {v1, p1, p2, v0, v0}, Lcom/google/android/gms/internal/zzdi;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzdi;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzdk;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzdk;->zzbeh:Lcom/google/android/gms/internal/zzdk;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbdm:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->zzsm()Lcom/google/android/gms/internal/zzde;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzde;->zzaq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdh;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdk;->zzbee:Ljava/util/Map;

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/internal/zzdh;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzkg()Lcom/google/android/gms/internal/zzdi;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzdk;->zzc(J)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    return-object v0
.end method

.method public zzkh()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbeg:Lcom/google/android/gms/internal/zzdi;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzki()Ljava/lang/String;
    .locals 10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdi;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdi;->zzkd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdi;->zzke()Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdi;->getTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbef:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbef:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public zzkj()Lcom/google/android/gms/internal/zzdi;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbeg:Lcom/google/android/gms/internal/zzdi;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zzm()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->zzsm()Lcom/google/android/gms/internal/zzde;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdk;->zzbeh:Lcom/google/android/gms/internal/zzdk;

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzbee:Ljava/util/Map;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzdk;->zzbee:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdk;->zzbeh:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdk;->zzm()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzde;->zza(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
