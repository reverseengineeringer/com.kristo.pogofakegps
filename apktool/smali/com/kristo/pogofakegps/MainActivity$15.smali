.class Lcom/kristo/pogofakegps/MainActivity$15;
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
    .line 1066
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$15;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iput-object p2, p0, Lcom/kristo/pogofakegps/MainActivity$15;->val$localDialog:Landroid/app/Dialog;

    iput p3, p0, Lcom/kristo/pogofakegps/MainActivity$15;->val$paramInt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "paramAnonymousView"    # Landroid/view/View;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$15;->val$localDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1070
    iget-object v0, p0, Lcom/kristo/pogofakegps/MainActivity$15;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    iget v1, p0, Lcom/kristo/pogofakegps/MainActivity$15;->val$paramInt:I

    invoke-virtual {v0, v1}, Lcom/kristo/pogofakegps/MainActivity;->favRename(I)V

    .line 1071
    return-void
.end method
