.class Lcom/kristo/pogofakegps/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->favRename(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kristo/pogofakegps/MainActivity;

.field final synthetic val$localDialog:Landroid/app/Dialog;

.field final synthetic val$paramInt:I


# direct methods
.method constructor <init>(Lcom/kristo/pogofakegps/MainActivity;Landroid/app/Dialog;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/kristo/pogofakegps/MainActivity;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$17;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput-object p2, p0, Lcom/kristo/pogofakegps/MainActivity$17;->val$localDialog:Landroid/app/Dialog;

    iput p3, p0, Lcom/kristo/pogofakegps/MainActivity$17;->val$paramInt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "paramAnonymousView"    # Landroid/view/View;

    .prologue
    .line 1113
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$17;->val$localDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 1116
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$17;->val$localDialog:Landroid/app/Dialog;

    const v2, 0x7f0b006a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1117
    .local v0, "mEdit":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$17;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v1, v1, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "favName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/kristo/pogofakegps/MainActivity$17;->val$paramInt:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1118
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$17;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v1, v1, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1119
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$17;->val$localDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 1120
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$17;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v1}, Lcom/kristo/pogofakegps/MainActivity;->showFav()V

    .line 1121
    return-void
.end method
