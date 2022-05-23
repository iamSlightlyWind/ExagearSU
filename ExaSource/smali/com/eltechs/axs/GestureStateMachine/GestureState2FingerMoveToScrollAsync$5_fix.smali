.class Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$5_fix;
.super Lcom/eltechs/axs/helpers/InfiniteTimer;
.source "GestureState2FingerMoveToScrollAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->notifyBecomeActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;J)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$5_fix;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;

    invoke-direct {p0, p2, p3}, Lcom/eltechs/axs/helpers/InfiniteTimer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onTick(J)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$5_fix;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;

    invoke-virtual {p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getMachine()Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    move-result-object p1

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$5_fix;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->isActiveState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$5_fix;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;

    invoke-virtual {p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->notifyTimer()V

    :cond_0
    return-void
.end method
