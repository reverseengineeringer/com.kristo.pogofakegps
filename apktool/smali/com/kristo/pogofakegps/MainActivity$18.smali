.class Lcom/kristo/pogofakegps/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->showFav()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/MainActivity;

.field final synthetic val$localDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/MainActivity;

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$18;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput-object p2, p0, Lcom/kristo/pogofakegps/MainActivity$18;->val$localDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
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
    .line 1152
    .local p1, "paramAnonymousAdapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$18;->val$localDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1153
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$18;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v0, p3}, Lcom/kristo/pogofakegps/MainActivity;->favOption(I)V

    .line 1154
    const/4 v0, 0x0

    return v0
.end method
