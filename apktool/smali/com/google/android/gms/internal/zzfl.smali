.class public Lcom/google/android/gms/internal/zzfl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zzajv:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzajz:Lcom/google/android/gms/internal/zzgn;

.field private final zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfl;->zzajz:Lcom/google/android/gms/internal/zzgn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfl;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfl;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public zzbd(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzl;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfl;->zzajz:Lcom/google/android/gms/internal/zzgn;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzfl;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzfl;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method public zzbe(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzl;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfl;->zzajz:Lcom/google/android/gms/internal/zzgn;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzfl;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzfl;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method public zzlp()Lcom/google/android/gms/internal/zzfl;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzfl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfl;->zzajz:Lcom/google/android/gms/internal/zzgn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfl;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfl;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzfl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method
