.class Lcom/kristo/pogofakegps/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 841
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$10;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput-object p2, p0, Lcom/kristo/pogofakegps/MainActivity$10;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 846
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$10;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 847
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$10;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 848
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$10;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput v2, v0, Lcom/kristo/pogofakegps/MainActivity;->historyId:I

    .line 849
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$10;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 851
    return-void
.end method
