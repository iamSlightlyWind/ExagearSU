.class public Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerBackmir;
.super Ljava/lang/Object;
.source "GestureMachineConfigurerBackmir.java"


# static fields
.field private static final clickAlignThresholdInches:F = 0.3f

.field private static final doubleClickMaxDistance:F = 0.15f

.field private static final doubleClickMaxIntervalMs:I = 0xc8

.field private static final fingerAimingMaxMoveInches:F = 0.2f

.field private static final fingerSpeedCheckTimeMs:I = 0x190

.field private static final fingerStandingMaxMoveInches:F = 0.12f

.field private static final fingerTapMaxMoveInches:F = 0.2f

.field private static final fingerTapMaxTimeMs:I = 0x190

.field private static final maxTapTimeMs:I = 0x12c

.field private static final mouseActionSleepMs:I = 0x1e

.field private static final pixelsInScrollUnitX:F = 50.0f

.field private static final pixelsInScrollUnitY:F = 50.0f

.field private static final pointerMarginXPixels:I = 0x32

.field private static final scrollTimerPeriod:J = 0x96L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;ILcom/eltechs/axs/GestureStateMachine/GestureMouseMode;Ljava/lang/Runnable;)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
    .locals 33

    move-object/from16 v0, p4

    .line 59
    new-instance v10, Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v10, v8, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;)V

    .line 60
    new-instance v9, Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    invoke-direct {v9}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;-><init>()V

    .line 61
    new-instance v11, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;

    invoke-direct {v11, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 62
    new-instance v12, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;

    invoke-direct {v12, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    move/from16 v1, p3

    int-to-float v13, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v6, v13, v1

    .line 65
    new-instance v14, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    const v1, 0x3df5c28f    # 0.12f

    mul-float v4, v13, v1

    const/16 v3, 0x190

    const/high16 v7, 0x43c80000    # 400.0f

    move-object v1, v14

    move-object v2, v10

    move v5, v6

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFFFF)V

    .line 66
    new-instance v15, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;

    invoke-direct {v15, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 67
    new-instance v7, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 68
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 69
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    const/4 v6, 0x1

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v6, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v7, v1, v2, v9}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    .line 70
    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    .line 71
    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v3, v1, v6, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    .line 72
    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v4, v1, v6, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    const v1, 0x3e99999a    # 0.3f

    mul-float v16, v13, v1

    .line 74
    new-instance v17, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    move-object/from16 v1, v17

    const/16 v8, 0x1e

    move-object/from16 v5, p0

    const/4 v8, 0x1

    move-object v6, v9

    move-object/from16 v18, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    .line 75
    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    .line 76
    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    const/16 v4, 0x1e

    invoke-direct {v3, v1, v8, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    .line 77
    new-instance v5, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v5, v1, v8, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    const v1, 0x3e19999a    # 0.15f

    mul-float v19, v13, v1

    .line 79
    new-instance v7, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v6, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    new-instance v20, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    move-object/from16 v1, v20

    move-object v4, v5

    move-object/from16 v5, p0

    move-object/from16 p2, v6

    move-object v6, v9

    move-object v8, v7

    move/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    const/16 v6, 0xc8

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    move-object/from16 v4, v20

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    invoke-direct {v8, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 88
    new-instance v7, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 89
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 90
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    const/16 v6, 0x32

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5, v6}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v7, v1, v2, v9}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    .line 92
    new-instance v17, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 93
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 94
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v3, v1, v5, v6}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 95
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v4, v1, v5, v6}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    move-object/from16 v1, v17

    move-object/from16 v18, v8

    const/4 v8, 0x3

    move-object/from16 v5, p0

    const/16 v8, 0x32

    move-object v6, v9

    move-object/from16 v21, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    .line 97
    new-instance v22, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 98
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 99
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4, v8}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v5, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 100
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v5, v1, v4, v8}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    move-object/from16 v1, v22

    move-object v4, v5

    move-object/from16 v5, p0

    move/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    .line 103
    new-instance v7, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    const/16 v6, 0xc8

    move-object v1, v7

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v22

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    .line 106
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    invoke-direct {v8, v10, v7}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 109
    new-instance v7, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v6, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    new-instance v5, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 112
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 113
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    move-object/from16 p2, v6

    const/16 v4, 0x1e

    const/4 v6, 0x3

    invoke-direct {v2, v3, v6, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v5, v1, v2, v9}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    new-instance v17, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 115
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 116
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v3, v1, v6, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    move-object/from16 v21, v5

    .line 117
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v5

    invoke-direct {v1, v5, v6, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    move-object v4, v1

    move-object/from16 v1, v17

    move-object/from16 v5, p0

    move-object/from16 v22, p2

    move-object v6, v9

    move-object/from16 p2, v8

    move-object v8, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    new-instance v16, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 122
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 123
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    const/16 v4, 0x1e

    const/4 v5, 0x3

    invoke-direct {v3, v1, v5, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v6, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 124
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v6, v1, v5, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    move-object/from16 v1, v16

    move-object v4, v6

    move-object/from16 v5, p0

    move-object v6, v9

    move/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    const/16 v6, 0xc8

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    invoke-direct {v8, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 127
    new-instance v7, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    const v1, 0x3b9aca00

    invoke-direct {v7, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 128
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    const/16 v1, 0x12c

    invoke-direct {v6, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 129
    new-instance v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    invoke-direct {v5, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 130
    new-instance v4, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;

    move-object/from16 v1, p5

    invoke-direct {v4, v1}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 131
    new-instance v3, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;

    new-instance v1, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerBackmir$1;

    invoke-direct {v1, v0}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerBackmir$1;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V

    invoke-direct {v3, v1}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 136
    new-instance v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;

    move-object/from16 p0, v3

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    move-object/from16 v16, v4

    .line 137
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;

    move-object/from16 v17, v5

    .line 138
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v5

    move-object/from16 p1, v6

    move-object/from16 v19, v7

    const/16 v6, 0x1e

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7, v6}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v5, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerBackmir$2;

    invoke-direct {v5}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerBackmir$2;-><init>()V

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v1, v2

    move-object v4, v2

    move-object v2, v10

    move-object/from16 v23, p0

    move-object/from16 v25, v4

    move-object/from16 v24, v16

    move-object v4, v9

    move-object/from16 v26, v17

    move-object/from16 v27, p1

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;ZF)V

    const/4 v1, 0x0

    mul-float v1, v1, v13

    .line 144
    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    invoke-direct {v2, v3, v1, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;FF)V

    .line 146
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMove;

    invoke-direct {v6, v10, v9, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMove;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;)V

    .line 149
    new-instance v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 150
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    .line 151
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    const/4 v7, 0x3

    invoke-direct {v2, v4, v7}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    new-instance v4, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerBackmir$3;

    invoke-direct {v4}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerBackmir$3;-><init>()V

    invoke-direct {v3, v1, v2, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Ljava/lang/Runnable;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v5

    move-object v2, v10

    move-object v4, v9

    move-object v9, v5

    move/from16 v5, v16

    move-object/from16 v28, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;ZF)V

    .line 156
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;

    .line 159
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v1

    new-instance v2, Lcom/eltechs/axs/geom/Rectangle;

    .line 160
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v4

    iget v4, v4, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 161
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v5

    iget v5, v5, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    move-object/from16 p0, v9

    const/4 v9, 0x0

    invoke-direct {v2, v9, v9, v4, v5}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-direct {v3, v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/geom/Rectangle;)V

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v13, v13, v1

    const v4, 0x49742400    # 1000000.0f

    const v5, 0x49742400    # 1000000.0f

    const/16 v16, 0x1

    const/16 v17, 0xf

    const/16 v20, 0x1

    move-object v1, v6

    move-object v2, v10

    move-object/from16 v29, v6

    move v6, v13

    move-object/from16 v13, v19

    const/16 v19, 0x1

    const/16 v21, 0x3

    move/from16 v7, v16

    move-object/from16 v31, p2

    move-object/from16 v32, v8

    move-object/from16 v30, v18

    const/16 v16, 0x1

    const/16 v18, 0x3

    move/from16 v8, v17

    move-object/from16 p1, v12

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;FFFZIZ)V

    .line 164
    new-instance v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;

    invoke-direct {v1, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 165
    new-instance v2, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;

    invoke-direct {v2, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 166
    new-instance v3, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;

    invoke-direct {v3, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 167
    new-instance v4, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;

    invoke-direct {v4, v10, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V

    .line 168
    new-instance v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;

    invoke-direct {v5, v10, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V

    .line 169
    new-instance v0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    invoke-direct {v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;-><init>()V

    const/16 v6, 0x15

    .line 170
    new-array v6, v6, [Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    aput-object v11, v6, v17

    aput-object v14, v6, v16

    const/4 v7, 0x2

    move-object/from16 v8, v30

    aput-object v8, v6, v7

    aput-object v15, v6, v18

    const/4 v7, 0x4

    aput-object v13, v6, v7

    const/4 v7, 0x5

    move-object/from16 v9, v27

    aput-object v9, v6, v7

    const/4 v7, 0x6

    move-object/from16 v16, v10

    move-object/from16 v10, v26

    aput-object v10, v6, v7

    const/4 v7, 0x7

    move-object/from16 v19, v13

    move-object/from16 v13, v23

    aput-object v13, v6, v7

    const/16 v7, 0x8

    move-object/from16 v13, v24

    aput-object v13, v6, v7

    const/16 v7, 0x9

    aput-object v12, v6, v7

    const/16 v7, 0xa

    move-object/from16 v8, v25

    aput-object v8, v6, v7

    const/16 v7, 0xb

    move-object/from16 v13, v31

    aput-object v13, v6, v7

    const/16 v7, 0xc

    move-object/from16 v13, v32

    aput-object v13, v6, v7

    const/16 v7, 0xd

    move-object/from16 v13, v29

    aput-object v13, v6, v7

    const/16 v7, 0xe

    aput-object v1, v6, v7

    const/16 v7, 0xf

    aput-object v3, v6, v7

    const/16 v7, 0x10

    aput-object v2, v6, v7

    const/16 v7, 0x11

    aput-object v4, v6, v7

    const/16 v7, 0x12

    aput-object v5, v6, v7

    const/16 v7, 0x13

    move-object/from16 p0, v5

    move-object/from16 v5, v28

    aput-object v5, v6, v7

    const/16 v7, 0x14

    aput-object p1, v6, v7

    invoke-virtual {v0, v6}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setStatesList([Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 195
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v7, p1

    invoke-virtual {v0, v7, v6, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 196
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v11, v6, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 197
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v14, v6, v15}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 198
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v15, v6, v13}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 199
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v15, v6, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 200
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_ON:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v15, v6, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 201
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v14, v6, v9}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 202
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v9, v6, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 203
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v1, v6, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 204
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v3, v6, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 205
    sget-object v6, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v3, v6, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 206
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v9, v1, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 207
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v10, v1, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 208
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v2, v1, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 209
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 213
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v14, v1, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 214
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v2, p0

    invoke-virtual {v0, v14, v1, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 215
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v14, v1, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 216
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v3, v30

    invoke-virtual {v0, v4, v1, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 217
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;->MOUSE_MODE_RIGHT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v3, v31

    invoke-virtual {v0, v4, v1, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 218
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v2, v1, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 219
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;->MOUSE_MODE_RIGHT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v2, v1, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 220
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v2, v23

    invoke-virtual {v0, v3, v1, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 222
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v2, v32

    invoke-virtual {v0, v9, v1, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 223
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v3, v19

    invoke-virtual {v0, v2, v1, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 224
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v3, v1, v9}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 225
    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v3, v1, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 226
    invoke-virtual {v0, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setInitialState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 227
    invoke-virtual {v0, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setDefaultState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 228
    invoke-virtual {v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->configurationCompleted()V

    move-object/from16 v1, v16

    .line 229
    invoke-virtual {v1, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->setMachine(Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;)V

    return-object v1
.end method
