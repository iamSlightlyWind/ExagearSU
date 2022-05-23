.class public Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerHybrid;
.super Ljava/lang/Object;
.source "GestureMachineConfigurerHybrid.java"


# static fields
.field private static final clickAlignThresholdInches:F = 0.3f

.field private static final doubleClickMaxDistance:F = 0.15f

.field private static final doubleClickMaxIntervalMs:I = 0xc8

.field private static final finger2FlashMaxTimeMs:I = 0x40

.field private static final finger2SpeedCheckTimeMs:I = 0x12c

.field private static final finger2StandingMaxMoveInches:F = 0.01f

.field private static final fingerAimingMaxMoveInches:F = 0.12f

.field private static final fingerSpeedCheckTimeMs:I = 0x190

.field private static final fingerStandingMaxMoveInches:F = 0.12f

.field private static final fingerTapMaxMoveInches:F = 0.12f

.field private static final fingerTapMaxTimeMs:I = 0x190

.field private static final maxTapTimeMs:I = 0x64

.field private static final mouseActionSleepMs:I = 0x32

.field private static final pixelsInScrollUnit:F = 66.0f

.field private static final pointerMarginXPixels:I = 0x32

.field private static final pointerOffsetAimInchesX:F = 0.0f

.field private static final pointerOffsetAimInchesY:F = 0.0f

.field private static final scrollPeriodMs:J = 0x96L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;ILjava/lang/Runnable;)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
    .locals 35

    .line 62
    new-instance v9, Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v9, v7, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;)V

    .line 63
    new-instance v10, Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    invoke-direct {v10}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;-><init>()V

    .line 64
    new-instance v11, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;

    invoke-direct {v11, v9}, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 65
    new-instance v12, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;

    invoke-direct {v12, v9}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    move/from16 v0, p3

    int-to-float v8, v0

    .line 67
    new-instance v13, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    const v0, 0x3df5c28f    # 0.12f

    mul-float v5, v8, v0

    const/16 v2, 0x190

    const/high16 v6, 0x43c80000    # 400.0f

    move-object v0, v13

    move-object v1, v9

    move v3, v5

    move v4, v5

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFFFF)V

    .line 73
    new-instance v14, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;

    const v0, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v8

    const/16 v1, 0x12c

    const/high16 v2, 0x42800000    # 64.0f

    invoke-direct {v14, v9, v1, v0, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFF)V

    .line 78
    new-instance v15, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 81
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    invoke-direct {v15, v9, v0, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    .line 83
    new-instance v6, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 85
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 86
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    const/16 v5, 0x32

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v6, v0, v1, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    .line 88
    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    .line 89
    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 90
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v2, v0, v4, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    .line 91
    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 92
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v3, v0, v4, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    const v0, 0x3e99999a    # 0.3f

    mul-float v16, v8, v0

    .line 94
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v7, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    new-instance v17, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    move-object/from16 p1, v12

    move-object v12, v0

    move-object/from16 v0, v17

    move-object/from16 p2, v15

    const/4 v15, 0x1

    move-object/from16 v4, p0

    const/16 v15, 0x32

    move-object v5, v10

    move-object/from16 v18, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    new-instance v19, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 100
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 101
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 102
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v4, v0, v3, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    const v0, 0x3e19999a    # 0.15f

    mul-float v6, v8, v0

    move-object/from16 v0, v19

    move-object v3, v4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    const/16 v5, 0xc8

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    invoke-direct {v12, v9, v7}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 105
    new-instance v7, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v1, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerHybrid$1_fix;

    invoke-direct {v1}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerHybrid$1_fix;-><init>()V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 117
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v0, v1, v2, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    invoke-direct {v7, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 122
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    const/16 v0, 0x64

    invoke-direct {v6, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 124
    new-instance v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    invoke-direct {v5, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 126
    new-instance v4, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    const/16 v0, 0x190

    invoke-direct {v4, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 128
    new-instance v3, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 129
    new-instance v2, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;

    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {v2, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V

    .line 130
    new-instance v1, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;

    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {v1, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V

    .line 131
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;

    sget-object v15, Lcom/eltechs/axs/KeyCodesX;->KEY_RETURN:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {v0, v9, v15}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V

    .line 132
    new-instance v15, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;

    move-object/from16 p4, v0

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;

    move-object/from16 v18, v1

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    move-object/from16 v19, v2

    .line 136
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    .line 137
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v2

    move-object/from16 v20, v3

    .line 138
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-result-object v3

    move-object/from16 v21, v4

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;I)V

    invoke-direct {v15, v9, v10, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;)V

    .line 142
    new-instance v4, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 146
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    move-object/from16 v22, v3

    .line 147
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    move-object/from16 v23, v7

    const/4 v7, 0x3

    invoke-direct {v1, v3, v7}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    invoke-direct {v2, v0, v1, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    new-instance v24, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 149
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    .line 150
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v3, v0, v7}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 151
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v7

    move-object/from16 v25, v2

    move-object/from16 v17, v4

    const/16 v2, 0x32

    const/4 v4, 0x1

    invoke-direct {v0, v7, v4, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    move-object/from16 v7, p4

    move-object v4, v0

    move-object/from16 v0, v24

    move-object/from16 v2, v18

    move-object/from16 v27, v2

    move-object/from16 v26, v19

    move-object/from16 v18, v25

    move-object v2, v3

    move-object/from16 v28, v20

    move-object v3, v4

    move-object/from16 v7, v17

    move-object/from16 v29, v21

    move-object/from16 v4, p0

    move-object/from16 v17, v15

    move-object v15, v5

    move-object v5, v10

    move-object/from16 p0, v15

    move-object v15, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 154
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    .line 155
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    const/4 v6, 0x3

    invoke-direct {v1, v2, v6}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    invoke-direct {v3, v0, v1, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    const/16 v5, 0xc8

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    invoke-direct {v7, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 158
    new-instance v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;

    .line 160
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    new-instance v1, Lcom/eltechs/axs/geom/Rectangle;

    .line 161
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v3

    iget v3, v3, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 162
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v4

    iget v4, v4, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    move-object/from16 v16, v7

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v3, v4}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-direct {v2, v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/geom/Rectangle;)V

    const v0, 0x3ecccccd    # 0.4f

    mul-float v18, v8, v0

    const v3, 0x49742400    # 1000000.0f

    const v4, 0x49742400    # 1000000.0f

    const/4 v8, 0x1

    const/16 v19, 0xf

    const/16 v20, 0x1

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v30, v5

    move/from16 v5, v18

    const/16 v21, 0x3

    move v6, v8

    move-object/from16 v31, p4

    move-object/from16 v32, v16

    move-object/from16 v8, v23

    const/16 v16, 0x3

    move/from16 v7, v19

    move-object/from16 p4, v15

    move-object v15, v8

    move/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;FFFZIZ)V

    .line 165
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;

    .line 167
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    new-instance v1, Lcom/eltechs/axs/geom/Rectangle;

    .line 168
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v3

    iget v3, v3, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 169
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v4

    iget v4, v4, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v3, v4}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-direct {v2, v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/geom/Rectangle;)V

    const v3, 0x49742400    # 1000000.0f

    const v4, 0x49742400    # 1000000.0f

    const/4 v6, 0x1

    move-object v0, v8

    move-object v1, v9

    move/from16 v7, v19

    move-object/from16 v33, v8

    move/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;FFFZIZ)V

    .line 172
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;

    .line 174
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    new-instance v1, Lcom/eltechs/axs/geom/Rectangle;

    .line 175
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v3

    iget v3, v3, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 176
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v4

    iget v4, v4, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v3, v4}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-direct {v2, v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/geom/Rectangle;)V

    const v3, 0x49742400    # 1000000.0f

    const v4, 0x49742400    # 1000000.0f

    move-object v0, v8

    move-object v1, v9

    move/from16 v7, v19

    move-object/from16 v34, v8

    move/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;FFFZIZ)V

    .line 180
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 184
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    .line 185
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v3

    .line 186
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;I)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;

    .line 189
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v6, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;)V

    .line 191
    new-instance v1, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    invoke-direct {v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;-><init>()V

    const/16 v2, 0x14

    .line 192
    new-array v2, v2, [Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    aput-object v11, v2, v4

    aput-object v13, v2, v6

    aput-object v14, v2, v5

    aput-object p2, v2, v16

    const/4 v3, 0x4

    aput-object v12, v2, v3

    const/4 v3, 0x5

    aput-object v15, v2, v3

    const/4 v3, 0x6

    aput-object p4, v2, v3

    const/4 v3, 0x7

    aput-object p0, v2, v3

    const/16 v3, 0x8

    move-object/from16 v4, v29

    aput-object v4, v2, v3

    const/16 v3, 0x9

    move-object/from16 v5, v28

    aput-object v5, v2, v3

    const/16 v3, 0xa

    move-object/from16 v6, v26

    aput-object v6, v2, v3

    const/16 v3, 0xb

    move-object/from16 v7, v27

    aput-object v7, v2, v3

    const/16 v3, 0xc

    move-object/from16 v8, v31

    aput-object v8, v2, v3

    const/16 v3, 0xd

    aput-object v17, v2, v3

    const/16 v3, 0xe

    move-object/from16 v10, v32

    aput-object v10, v2, v3

    const/16 v3, 0xf

    move-object/from16 v16, v9

    move-object/from16 v9, v30

    aput-object v9, v2, v3

    const/16 v3, 0x10

    move-object/from16 v6, v33

    aput-object v6, v2, v3

    const/16 v3, 0x11

    move-object/from16 v5, v34

    aput-object v5, v2, v3

    const/16 v3, 0x12

    aput-object v0, v2, v3

    const/16 v3, 0x13

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setStatesList([Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 213
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 214
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v11, v2, v13}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 215
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v13, v2, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 216
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v10, v17

    invoke-virtual {v1, v13, v2, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 217
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v13, v2, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 218
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v3, p4

    invoke-virtual {v1, v13, v2, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 219
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v13, v2, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 220
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED_AND_GONE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v12, p2

    invoke-virtual {v1, v13, v2, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 221
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v14, v2, v15}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 222
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v14, v2, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 223
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v14, v2, v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 224
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_SCROLL:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v14, v2, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 225
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v10, v2, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 226
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v12, p0

    invoke-virtual {v1, v3, v2, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 227
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v3, v2, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 228
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v3, v2, v6}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 229
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v15, v2, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 230
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v6, v2, v9}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 231
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v5, v2, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 232
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToScrollAsync;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v5, v2, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 233
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v0, v2, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 234
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v0, v2, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 235
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v4, v0, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 236
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v4, v0, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 237
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v2, v28

    invoke-virtual {v1, v4, v0, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 238
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v7, v0, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 239
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v3, v26

    invoke-virtual {v1, v12, v0, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 240
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v12, v0, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 241
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v1, v12, v0, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 242
    invoke-virtual {v1, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setInitialState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    move-object/from16 v0, p1

    .line 243
    invoke-virtual {v1, v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setDefaultState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 244
    invoke-virtual {v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->configurationCompleted()V

    move-object/from16 v0, v16

    .line 245
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->setMachine(Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;)V

    return-object v0
.end method
