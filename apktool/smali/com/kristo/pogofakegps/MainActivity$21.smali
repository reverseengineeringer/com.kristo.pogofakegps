.class Lcom/kristo/pogofakegps/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 1228
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$21;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.kristo.pogofakegps"

    .line 1232
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1233
    .local v0, "go":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$21;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v1, v0}, Lcom/kristo/pogofakegps/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1234
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1235
    return-void
.end method
