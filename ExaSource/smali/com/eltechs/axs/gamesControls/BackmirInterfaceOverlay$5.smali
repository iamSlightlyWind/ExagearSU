.class Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$5;
.super Ljava/lang/Object;
.source "BackmirInterfaceOverlay.java"

# interfaces
.implements Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;


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

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;Landroid/widget/Button;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$5;->this$0:Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;

    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$5;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mouseModeChanged(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V
    .locals 0

    .line 308
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    if-ne p2, p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$5;->val$button:Landroid/widget/Button;

    const-string p2, "\u5de6\u952e"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$5;->val$button:Landroid/widget/Button;

    const-string p2, "\u53f3\u952e"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
