.class public Lcom/google/android/gms/internal/zzlv;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzbgj:Lcom/google/android/gms/internal/zzll;

.field private final zzbyk:Lcom/google/android/gms/internal/zzid;

.field private final zzcqp:Ljava/lang/String;

.field private zzcqq:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzll;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzlv;->zzdg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzcqp:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlv;->zzcqq:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlv;->zzbgj:Lcom/google/android/gms/internal/zzll;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->zzbyk:Lcom/google/android/gms/internal/zzid;

    return-void
.end method

.method private zzdg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v1, "JavascriptAdWebViewClient::onLoadResource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzlv;->zzdf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzlm;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v1, "JavascriptAdWebViewClient::onPageFinished: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlv;->zzcqq:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzbyk:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzid;->zzqa()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlv;->zzcqq:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v1, "JavascriptAdWebViewClient::shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzlv;->zzdf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shouldOverrideUrlLoading: received passback url"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzlm;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method protected zzdf(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlv;->zzdg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v2, "passback"

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Passback received"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlv;->zzbyk:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzid;->zzqb()V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzlv;->zzcqp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/net/URI;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlv;->zzcqp:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Passback received"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlv;->zzbyk:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzid;->zzqb()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
