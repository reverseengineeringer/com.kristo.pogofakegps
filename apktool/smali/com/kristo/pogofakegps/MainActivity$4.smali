.class Lcom/kristo/pogofakegps/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->onResume()V
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
    .line 561
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$4;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "paramAnonymousDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "paramAnonymousInt"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$4;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "s_root_location_dont_show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 566
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$4;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v0, v0, Lcom/kristo/pogofakegps/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 568
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$4;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v1, p0, Lcom/kristo/pogofakegps/MainActivity$4;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget-object v1, v1, Lcom/kristo/pogofakegps/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "s_root_location"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/kristo/pogofakegps/MainActivity;->root_location:Z

    .line 569
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 570
    return-void
.end method
