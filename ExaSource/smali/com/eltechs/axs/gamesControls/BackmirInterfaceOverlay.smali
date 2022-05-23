.class public Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;
.super Ljava/lang/Object;
.source "BackmirInterfaceOverlay.java"

# interfaces
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityUiOverlaySidePanels;


# static fields
.field public static final buttonSizeInches:F = 0.4f

.field private static final buttonSzNormalDisplayInches:F = 0.3f

.field private static final buttonSzSmallDisplayInches:F = 0.25f

.field private static final displaySizeThresholdInches:F = 6.0f


# instance fields
.field private buttonHeight:I

.field private buttonWidth:I

.field private final buttonWidthPixelsFixup:I

.field private final controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

.field private isDisplayWide:Z

.field private isToolbarsVisible:Z

.field private leftToolbar:Landroid/view/View;

.field protected mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field protected mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private final mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

.field private rightToolbar:Landroid/view/View;

.field private tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 45
    iput v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonWidthPixelsFixup:I

    .line 46
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    .line 47
    new-instance v0, Lcom/eltechs/axs/gamesControls/BackmirTouchScreenControlsFactory;

    iget-object v1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/gamesControls/BackmirTouchScreenControlsFactory;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isToolbarsVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;Landroid/widget/Button;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->setButtonStyleByState(Landroid/widget/Button;Z)V

    return-void
.end method

.method private createButton(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 232
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 233
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonWidth:I

    iget v2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonHeight:I

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 234
    invoke-virtual {v0, p1, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 235
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x222223

    .line 236
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x0

    .line 237
    invoke-direct {p0, v0, p1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->setButtonStyleByState(Landroid/widget/Button;Z)V

    return-object v0
.end method

.method private createLeftScrollViewWithButtons1(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createMouseModeButton(Landroid/app/Activity;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x1

    const-string v2, "SHIFT"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "CTRL"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "ALT"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x0

    const-string v2, "F"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_TAB:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "TAB"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_RETURN:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "REN"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_ESC:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "ESC"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createLeftScrollViewWithButtons2(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 3

    .line 171
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x0

    const-string v2, "I"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "O"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "A"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "T"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "Q"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "P"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_INSERT:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "INT"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_BACKSPACE:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "SPA"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createLeftToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 5

    .line 134
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "#292c33"

    .line 136
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 138
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createScrillView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 143
    invoke-direct {p0, p1, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createLeftScrollViewWithButtons1(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 144
    iget-boolean v2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isDisplayWide:Z

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createScrillView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 148
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createLeftScrollViewWithButtons2(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 151
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isToolbarsVisible:Z

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 152
    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 154
    :cond_1
    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->leftToolbar:Landroid/view/View;

    return-object p2
.end method

.method private createMouseModeButton(Landroid/app/Activity;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)Landroid/widget/Button;
    .locals 1

    const-string v0, "\u5de6\u952e"

    .line 279
    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createButton(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 280
    new-instance v0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$3;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$3;-><init>(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    new-instance v0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$4;

    invoke-direct {v0, p0, p2}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$4;-><init>(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$5;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$5;-><init>(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;Landroid/widget/Button;)V

    invoke-virtual {p2, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->addListener(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;)V

    return-object p1
.end method

.method private createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 0

    .line 243
    invoke-direct {p0, p1, p3}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createButton(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 244
    new-instance p3, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;

    invoke-direct {p3, p0, p4, p2}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$1;-><init>(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;ZLcom/eltechs/axs/KeyCodesX;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    new-instance p3, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$2;

    invoke-direct {p3, p0, p4, p2}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay$2;-><init>(Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;ZLcom/eltechs/axs/KeyCodesX;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private createRightScrollViewWithButtons1(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 3

    .line 207
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_1:Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x0

    const-string v2, "1"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_2:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "2"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_3:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "3"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_4:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "4"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F1:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F1"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F2:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F2"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F3:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F3"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F4:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F4"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createRightScrollViewWithButtons2(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 3

    .line 221
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F5:Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x0

    const-string v2, "F5"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F6:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F6"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F7:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F7"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F8:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F8"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F9:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F9"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F10:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F10"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F11:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F11"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F12:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F12"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createRightToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 5

    .line 182
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "#292c33"

    .line 184
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 186
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createScrillView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 191
    invoke-direct {p0, p1, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createRightScrollViewWithButtons1(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 192
    iget-boolean v2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isDisplayWide:Z

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createScrillView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 196
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createRightScrollViewWithButtons2(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 199
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isToolbarsVisible:Z

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 200
    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 202
    :cond_1
    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->rightToolbar:Landroid/view/View;

    return-object p2
.end method

.method private setButtonStyleByState(Landroid/widget/Button;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p2, 0x7f0800c7

    .line 321
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0800c6

    .line 323
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 8

    .line 59
    new-instance v0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    iget-object v1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    sget-object v2, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;->DEFAULT:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchScreenControlsFactory;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->setZOrderMediaOverlay(Z)V

    .line 61
    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 62
    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 65
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const/high16 v3, 0x3e800000    # 0.25f

    goto :goto_1

    :cond_1
    const v3, 0x3e99999a    # 0.3f

    .line 66
    :goto_1
    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    mul-float v3, v3, v5

    float-to-int v3, v3

    .line 68
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    mul-int v6, v6, v7

    iget v0, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    div-int/2addr v6, v0

    sub-int/2addr v5, v6

    const/4 v0, 0x2

    div-int/2addr v5, v0

    iput v5, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonWidth:I

    .line 69
    iget v5, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonWidth:I

    div-int/2addr v5, v0

    if-le v5, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isDisplayWide:Z

    .line 70
    iget-boolean v5, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isDisplayWide:Z

    if-eqz v5, :cond_3

    .line 71
    iget v5, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonWidth:I

    div-int/2addr v5, v0

    iput v5, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonWidth:I

    .line 74
    :cond_3
    iget v5, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonWidth:I

    if-ge v5, v3, :cond_4

    .line 75
    iput v3, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonWidth:I

    .line 77
    :cond_4
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonHeight:I

    .line 78
    iget v2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonHeight:I

    iget v3, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonWidth:I

    if-le v2, v3, :cond_5

    move v2, v3

    :cond_5
    iput v2, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonHeight:I

    .line 80
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createLeftToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v3, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->createRightToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    new-instance v3, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;

    invoke-direct {v3}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;-><init>()V

    invoke-virtual {v3}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;->isHorizontalStretchEnabled()Z

    move-result v3

    invoke-virtual {p2, v3}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setHorizontalStretchEnabled(Z)V

    const/4 v3, 0x5

    .line 87
    new-array v3, v3, [Lcom/eltechs/axs/widgets/actions/AbstractAction;

    new-instance v5, Lcom/eltechs/axs/activities/menus/ShowKeyboard;

    invoke-direct {v5}, Lcom/eltechs/axs/activities/menus/ShowKeyboard;-><init>()V

    aput-object v5, v3, v4

    new-instance v4, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;

    invoke-direct {v4}, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;-><init>()V

    aput-object v4, v3, v1

    new-instance v4, Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;

    invoke-direct {v4}, Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;-><init>()V

    aput-object v4, v3, v0

    const/4 v0, 0x3

    new-instance v4, Lcom/eltechs/axs/activities/menus/ShowUsage;

    invoke-direct {v4}, Lcom/eltechs/axs/activities/menus/ShowUsage;-><init>()V

    aput-object v4, v3, v0

    const/4 v0, 0x4

    new-instance v4, Lcom/eltechs/axs/activities/menus/Quit;

    invoke-direct {v4}, Lcom/eltechs/axs/activities/menus/Quit;-><init>()V

    aput-object v4, v3, v0

    .line 88
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->addDefaultPopupMenu(Ljava/util/List;)V

    .line 98
    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->setShowCursor(Z)V

    return-object v2
.end method

.method createScrillView(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 3

    .line 127
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->buttonWidth:I

    const/4 v2, -0x1

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string p1, "#292c33"

    .line 130
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method public detach()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->detach()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 107
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->leftToolbar:Landroid/view/View;

    .line 108
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->rightToolbar:Landroid/view/View;

    return-void
.end method

.method public isSidePanelsVisible()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isToolbarsVisible:Z

    return v0
.end method

.method public toggleSidePanelsVisibility()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isToolbarsVisible:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isToolbarsVisible:Z

    .line 117
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->isToolbarsVisible:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->leftToolbar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->rightToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->leftToolbar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/BackmirInterfaceOverlay;->rightToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
