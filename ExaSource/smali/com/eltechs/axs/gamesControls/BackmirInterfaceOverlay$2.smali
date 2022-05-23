.class Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$2;
.super Ljava/lang/Object;
.source "BackmirInterfaceOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

.field final synthetic val$keep:Z

.field final synthetic val$keyCodesX:Lcom/eltechs/axs/KeyCodesX;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;ZLcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$2;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    iput-boolean p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$2;->val$keep:Z

    iput-object p3, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$2;->val$keyCodesX:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 269
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$2;->val$keep:Z

    if-nez p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$2;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    iget-object p1, p1, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$2;->val$keyCodesX:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyType(B)V

    :cond_0
    return-void
.end method
