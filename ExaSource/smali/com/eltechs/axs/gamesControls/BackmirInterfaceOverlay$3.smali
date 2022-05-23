.class Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$3;
.super Ljava/lang/Object;
.source "BackmirInterfaceOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createMouseModeButton(Landroid/app/Activity;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$3;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$3;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    check-cast p1, Landroid/widget/Button;

    invoke-static {p2, p1, v0}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->access$000(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;Landroid/widget/Button;Z)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$3;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    check-cast p1, Landroid/widget/Button;

    invoke-static {p2, p1, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->access$000(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;Landroid/widget/Button;Z)V

    :goto_0
    return v0
.end method
