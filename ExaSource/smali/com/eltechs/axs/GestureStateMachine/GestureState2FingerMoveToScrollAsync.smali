.class public Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState2FingerMoveToScrollAsync.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field public static FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field public static FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field public static FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field private static final timerPeriodMs:J = 0x28L


# instance fields
.field private final cancelIfFingerReleased:Z

.field private final doAdjustPointerPosition:Z

.field private final moveThresholdPixels:F

.field private final movementUnitsInOnePixelX:F

.field private final movementUnitsInOnePixelY:F

.field private movementX:Lcom/eltechs/axs/MovementAccumulator;

.field private movementY:Lcom/eltechs/axs/MovementAccumulator;

.field private final pointerMargin:I

.field private savedFingers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;"
        }
    .end annotation
.end field

.field private final scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

.field private timer:Lcom/eltechs/axs/helpers/InfiniteTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$1_fix;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$1_fix;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 17
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$2_fix;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$2_fix;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 19
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$3_fix;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$3_fix;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 21
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$4_fix;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$4_fix;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;FFFZIZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 39
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

    .line 40
    iput p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementUnitsInOnePixelX:F

    .line 41
    iput p4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementUnitsInOnePixelY:F

    .line 42
    iput p5, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->moveThresholdPixels:F

    .line 43
    iput-boolean p6, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->doAdjustPointerPosition:Z

    .line 44
    iput p7, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->pointerMargin:I

    .line 45
    iput-boolean p8, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->cancelIfFingerReleased:Z

    return-void
.end method

.method private changeMovementUnits(Lcom/eltechs/axs/MovementAccumulator;F)V
    .locals 4

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/eltechs/axs/MovementAccumulator;->getMovementStartTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-virtual {p1}, Lcom/eltechs/axs/MovementAccumulator;->getMovementUnitsAccumulated()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/MovementAccumulator;->stop(F)V

    :cond_0
    return-void
.end method

.method private scrollImpl(Lcom/eltechs/axs/MovementAccumulator$Direction;Lcom/eltechs/axs/MovementAccumulator$Direction;ZZ)V
    .locals 4

    .line 82
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    .line 83
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_2

    .line 85
    sget-object p3, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$6_fix;->$SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I

    invoke-virtual {p1}, Lcom/eltechs/axs/MovementAccumulator$Direction;->ordinal()I

    move-result p1

    aget p1, p3, p1

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->RIGHT:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->LEFT:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    :cond_2
    :goto_0
    if-eqz p4, :cond_5

    .line 95
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$6_fix;->$SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I

    invoke-virtual {p2}, Lcom/eltechs/axs/MovementAccumulator$Direction;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_1

    .line 100
    :cond_3
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    goto :goto_1

    .line 97
    :cond_4
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    .line 104
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

    invoke-interface {p1, v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;->setScrolling(Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;)V

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 5

    .line 49
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$5_fix;

    const-wide/16 v1, 0x28

    invoke-direct {v0, p0, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync$5_fix;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;J)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->start()Landroid/os/CountDownTimer;

    .line 58
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 61
    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 64
    new-instance v0, Lcom/eltechs/axs/MovementAccumulator;

    iget v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementUnitsInOnePixelX:F

    iget v4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->moveThresholdPixels:F

    invoke-direct {v0, v3, v4}, Lcom/eltechs/axs/MovementAccumulator;-><init>(FF)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    .line 65
    new-instance v0, Lcom/eltechs/axs/MovementAccumulator;

    iget v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementUnitsInOnePixelY:F

    iget v4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->moveThresholdPixels:F

    invoke-direct {v0, v3, v4}, Lcom/eltechs/axs/MovementAccumulator;-><init>(FF)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/Finger;

    invoke-virtual {v3}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/axs/Finger;

    invoke-virtual {v4}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/eltechs/axs/MovementAccumulator;->reset(F)V

    .line 67
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->reset(F)V

    .line 68
    iget-boolean v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->doAdjustPointerPosition:Z

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    iget v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->pointerMargin:I

    invoke-static {v0, v1}, Lcom/eltechs/axs/GestureStateMachine/Helpers;->adjustPointerPosition(Lcom/eltechs/axs/xserver/ViewFacade;I)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

    invoke-interface {v0}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;->notifyStart()V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    sget-object v2, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;->setScrolling(Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;)V

    .line 76
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

    invoke-interface {v0}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;->notifyStop()V

    .line 78
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->cancel()V

    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public notifyMovedIn(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0

    .line 145
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyMovedOut(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0

    .line 147
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0

    .line 138
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyTimer()V
    .locals 9

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/Finger;

    invoke-virtual {v3}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eltechs/axs/Finger;

    invoke-virtual {v5}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v5

    add-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->processFingerMovement(ZFJ)V

    .line 121
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/Finger;

    invoke-virtual {v3}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v3

    iget-object v7, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/eltechs/axs/Finger;

    invoke-virtual {v7}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v7

    add-float/2addr v3, v7

    div-float/2addr v3, v5

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->processFingerMovement(ZFJ)V

    .line 122
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v0}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v1}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v2}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v2

    sget-object v3, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v2}, Lcom/eltechs/axs/MovementAccumulator;->getMovementUnitsAccumulated()F

    move-result v2

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 125
    :goto_0
    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v3}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v3

    sget-object v8, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    if-eq v3, v8, :cond_2

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v3}, Lcom/eltechs/axs/MovementAccumulator;->getMovementUnitsAccumulated()F

    move-result v3

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 128
    :goto_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->scrollImpl(Lcom/eltechs/axs/MovementAccumulator$Direction;Lcom/eltechs/axs/MovementAccumulator$Direction;ZZ)V

    if-eqz v2, :cond_3

    .line 130
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->changeMovementUnits(Lcom/eltechs/axs/MovementAccumulator;F)V

    :cond_3
    if-eqz v3, :cond_4

    .line 133
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->savedFingers:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->changeMovementUnits(Lcom/eltechs/axs/MovementAccumulator;F)V

    :cond_4
    return-void
.end method

.method public notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 141
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method
