.class Lcom/kristo/pogofakegps/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kristo/pogofakegps/MainActivity;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
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
    .line 378
    iput-object p1, p0, Lcom/kristo/pogofakegps/MainActivity$3;->this$0:Lcom/kristo/pogofakegps/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "paramAnonymousDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "paramAnonymousInt"    # I

    .prologue
    .line 382
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 383
    return-void
.end method
