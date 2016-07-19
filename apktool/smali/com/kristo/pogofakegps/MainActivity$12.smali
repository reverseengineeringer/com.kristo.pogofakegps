.class Lcom/kristo/pogofakegps/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->show_history()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/MainActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/MainActivity;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$12;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput-object p2, p0, Lcom/kristo/pogofakegps/MainActivity$12;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "paramAnonymousView"    # Landroid/view/View;
    .param p3, "paramAnonymousInt"    # I
    .param p4, "paramAnonymousLong"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 895
    .local p1, "paramAnonymousAdapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$12;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v0}, Lcom/kristo/pogofakegps/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Added to favourites"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 896
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$12;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 897
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$12;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v0, p3}, Lcom/kristo/pogofakegps/MainActivity;->addToFav(I)V

    .line 898
    const/4 v0, 0x0

    return v0
.end method
