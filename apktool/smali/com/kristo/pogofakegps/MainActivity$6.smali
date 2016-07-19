.class Lcom/kristo/pogofakegps/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->enableMock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/MainActivity;


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/MainActivity;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$6;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, "callSettingsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$6;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v1, v0}, Lcom/kristo/pogofakegps/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 611
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 612
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$6;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/kristo/pogofakegps/MainActivity;->checking:Z

    .line 614
    return-void
.end method
