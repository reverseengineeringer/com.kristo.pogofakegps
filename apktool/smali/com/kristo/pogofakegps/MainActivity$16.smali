.class Lcom/kristo/pogofakegps/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->favOption(I)V
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
    .line 1074
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput-object p2, p0, Lcom/kristo/pogofakegps/MainActivity$16;->val$localDialog:Landroid/app/Dialog;

    iput p3, p0, Lcom/kristo/pogofakegps/MainActivity$16;->val$paramInt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "paramAnonymousView"    # Landroid/view/View;

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->val$localDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 1078
    iget v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->val$paramInt:I

    add-int/lit8 v0, v1, 0x1

    .line 1081
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget v1, v1, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    if-lt v0, v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget v2, v1, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    .line 1084
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v1, v1, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "favId"

    iget-object v3, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget v3, v3, Lcom/kristo/pogofakegps/MainActivity;->favId:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1085
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v1, v1, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1086
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-virtual {v1}, Lcom/kristo/pogofakegps/MainActivity;->showFav()V

    .line 1087
    return-void

    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v1, v1, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "favName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v3, v3, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "favName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    .line 1090
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1089
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1091
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v1, v1, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "favLat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v3, v3, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "favLat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    .line 1092
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1091
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1093
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v1, v1, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "favLong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v3, v3, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "favLong"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    .line 1094
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1093
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1095
    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$16;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v1, v1, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1096
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
