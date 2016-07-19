.class Lcom/kristo/pogofakegps/MainActivity$7;
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
    .line 617
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$7;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 621
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 622
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$7;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kristo/pogofakegps/MainActivity;->checking:Z

    .line 624
    return-void
.end method
