.class public Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerDjfml;
.super Ljava/lang/Object;
.source "GestureMachineConfigurerDjfml.java"


# static fields
.field private static final dragNDropThresholdInches:F = 0.0f

.field private static final finger2FlashMaxTimeMs:I = 0x40

.field private static final finger2SpeedCheckTimeMs:I = 0x12c

.field private static final finger2StandingMaxMoveInches:F = 0.01f

.field private static final fingerAimingMaxMoveInches:F = 0.004f

.field private static final fingerSpeedCheckTimeMs:I = 0x12c

.field private static final fingerStandingMaxMoveInches:F = 0.004f

.field private static final fingerTapMaxMoveInches:F = 0.2f

.field private static final fingerTapMaxTimeMs:I = 0xc8

.field private static final maxTapTimeMs:I = 0x64

.field private static final mouseActionSleepMs:I = 0x5

.field private static final scrollPeriodMs:J = 0x1eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;ILjava/lang/Runnable;)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
    .locals 36

    .line 58
    new-instance v11, Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v11, v7, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;)V

    .line 59
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    invoke-direct {v8}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;-><init>()V

    .line 60
    new-instance v12, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;

    invoke-direct {v12, v11}, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 61
    new-instance v13, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;

    invoke-direct {v13, v11}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    move/from16 v0, p3

    int-to-float v9, v0

    .line 63
    new-instance v14, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    const v0, 0x3b83126f    # 0.004f

    mul-float v4, v9, v0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v5, v9, v0

    const/16 v2, 0x2710

    const/high16 v6, 0x43480000    # 200.0f

    move-object v0, v14

    move-object v1, v11

    move v3, v4

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFFFF)V

    .line 65
    new-instance v15, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;

    const v0, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v9

    const/16 v6, 0x2710

    const/high16 v1, 0x42800000    # 64.0f

    invoke-direct {v15, v11, v6, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFF)V

    .line 67
    new-instance v10, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v1, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerDjfml$1;

    invoke-direct {v1}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerDjfml$1;-><init>()V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 74
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v4, 0x5

    invoke-direct {v2, v3, v5, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v0, v1, v2, v8}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    invoke-direct {v10, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 75
    new-instance v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v1, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerDjfml$2;

    invoke-direct {v1}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerDjfml$2;-><init>()V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 82
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v6

    move-object/from16 p2, v10

    const/4 v10, 0x3

    invoke-direct {v2, v6, v10, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v0, v1, v2, v8}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    invoke-direct {v3, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 83
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v1, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerDjfml$3;

    invoke-direct {v1}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerDjfml$3;-><init>()V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 90
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v10

    invoke-direct {v2, v10, v5, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v0, v1, v2, v8}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    invoke-direct {v6, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 91
    new-instance v16, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 94
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    .line 95
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v10

    .line 96
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-result-object v4

    invoke-direct {v0, v1, v10, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;

    .line 98
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    const/4 v10, 0x5

    invoke-direct {v1, v4, v5, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v4, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerDjfml$4;

    invoke-direct {v4}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerDjfml$4;-><init>()V

    invoke-direct {v2, v0, v1, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    mul-float v9, v9, v0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object v1, v11

    move-object/from16 v18, v3

    move-object v3, v8

    const/4 v7, 0x1

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;ZF)V

    .line 104
    new-instance v9, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMove;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 106
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v2

    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    invoke-direct {v9, v11, v8, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMove;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;)V

    .line 109
    new-instance v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 111
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    .line 112
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v2

    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    invoke-direct {v5, v11, v8, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;)V

    .line 114
    new-instance v4, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 117
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v2

    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;

    .line 119
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2, v7, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v4, v11, v8, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;)V

    .line 122
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    const/16 v0, 0x64

    invoke-direct {v8, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 124
    new-instance v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    const/16 v0, 0x12c

    invoke-direct {v3, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 126
    new-instance v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    invoke-direct {v2, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 128
    new-instance v1, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;

    move-object/from16 v0, p4

    invoke-direct {v1, v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 129
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;

    sget-object v7, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {v0, v11, v7}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V

    .line 130
    new-instance v7, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;

    invoke-direct {v7, v11}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 131
    new-instance v10, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollSync;

    move-object/from16 v19, v2

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;

    move-object/from16 p4, v0

    .line 133
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getViewToXServerTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v0

    const v20, 0x3d4ccccd    # 0.05f

    mul-float v21, v0, v20

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getViewToXServerTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->getScaleY(Landroid/graphics/Matrix;)F

    move-result v0

    mul-float v20, v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x1e

    const/16 v27, 0x1

    move-object/from16 v28, p4

    move-object v0, v10

    move-object/from16 v29, v1

    move-object v1, v11

    move-object/from16 v30, v19

    move-object/from16 v31, v3

    move/from16 v3, v21

    move-object/from16 v32, v4

    move/from16 v4, v20

    move-object/from16 v33, v5

    move/from16 v5, v22

    move-object/from16 v34, v6

    move/from16 v6, v23

    move-object/from16 v35, v7

    const/16 v17, 0x1

    move/from16 v7, v24

    move-object/from16 v20, v8

    move-object/from16 v19, v9

    move-wide/from16 v8, v25

    move-object/from16 v21, v11

    move-object/from16 p1, v13

    const/16 v22, 0x3

    const/16 v23, 0x5

    move-object/from16 v11, p2

    move-object v13, v10

    move/from16 v10, v27

    invoke-direct/range {v0 .. v10}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollSync;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;FFFZIJZ)V

    .line 137
    new-instance v0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    invoke-direct {v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;-><init>()V

    const/16 v1, 0x12

    .line 138
    new-array v1, v1, [Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    aput-object v14, v1, v17

    const/4 v2, 0x2

    aput-object v15, v1, v2

    aput-object v11, v1, v22

    const/4 v2, 0x4

    move-object/from16 v3, v18

    aput-object v3, v1, v2

    move-object/from16 v2, v34

    aput-object v2, v1, v23

    const/4 v4, 0x6

    aput-object v16, v1, v4

    const/4 v4, 0x7

    aput-object v19, v1, v4

    const/16 v4, 0x8

    move-object/from16 v5, v33

    aput-object v5, v1, v4

    const/16 v4, 0x9

    move-object/from16 v6, v32

    aput-object v6, v1, v4

    const/16 v4, 0xa

    aput-object v20, v1, v4

    const/16 v4, 0xb

    move-object/from16 v7, v31

    aput-object v7, v1, v4

    const/16 v4, 0xc

    move-object/from16 v8, v30

    aput-object v8, v1, v4

    const/16 v4, 0xd

    move-object/from16 v9, v29

    aput-object v9, v1, v4

    const/16 v4, 0xe

    move-object/from16 v10, v28

    aput-object v10, v1, v4

    const/16 v4, 0xf

    move-object/from16 v9, v35

    aput-object v9, v1, v4

    const/16 v4, 0x10

    aput-object v13, v1, v4

    const/16 v4, 0x11

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setStatesList([Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 158
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v1, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 159
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v12, v1, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 160
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v14, v1, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 161
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v14, v1, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 162
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v14, v1, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 163
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED_AND_GONE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v14, v1, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 164
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v14, v1, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 165
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v14, v1, v15}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 166
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v5, v1, v15}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 167
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v15, v1, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 168
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v15, v1, v6}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 169
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_SCROLL:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v15, v1, v13}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 170
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v15, v1, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 171
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v3, v1, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 172
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v2, v1, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 173
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v6, v1, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 174
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v6, v1, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 175
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollSync;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v13, v1, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 176
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollSync;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v13, v1, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 177
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v7, v1, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 178
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v10, v1, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 179
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v7, v1, v9}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 180
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v2, v29

    invoke-virtual {v0, v7, v1, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 181
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v8, v1, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 182
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v8, v1, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 183
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v8, v1, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 184
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v9, v1, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 185
    invoke-virtual {v0, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setInitialState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 186
    invoke-virtual {v0, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setDefaultState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 187
    invoke-virtual {v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->configurationCompleted()V

    move-object/from16 v1, v21

    .line 188
    invoke-virtual {v1, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->setMachine(Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;)V

    return-object v1
.end method
