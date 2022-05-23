.class Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;
.super Ljava/lang/Object;
.source "BackmirInterfaceOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 244
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    iput-boolean p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->val$keep:Z

    iput-object p3, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->val$keyCodesX:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    check-cast p1, Landroid/widget/Button;

    invoke-static {p2, p1, v0}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->access$000(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;Landroid/widget/Button;Z)V

    .line 258
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->val$keep:Z

    if-eqz p1, :cond_2

    .line 259
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    iget-object p1, p1, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->val$keyCodesX:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyRelease(B)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    check-cast p1, Landroid/widget/Button;

    invoke-static {p2, p1, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->access$000(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;Landroid/widget/Button;Z)V

    .line 250
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->val$keep:Z

    if-eqz p1, :cond_2

    .line 251
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    iget-object p1, p1, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;->val$keyCodesX:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyPress(B)V

    :cond_2
    :goto_0
    return v0
.end method
