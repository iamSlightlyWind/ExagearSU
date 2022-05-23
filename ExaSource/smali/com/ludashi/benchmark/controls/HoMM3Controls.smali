.class public Lcom/ludashi/benchmark/controls/HoMM3Controls;
.super Lcom/ludashi/benchmark/controls/Controls;
.source "HoMM3Controls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/ludashi/benchmark/controls/Controls;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
    .locals 2

    .line 32
    new-instance v0, Lcom/eltechs/axs/gamesControls/HoMM3InterfaceOverlay;

    invoke-direct {v0}, Lcom/eltechs/axs/gamesControls/HoMM3InterfaceOverlay;-><init>()V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "heroes3"

    return-object v0
.end method

.method public getInfoElems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ludashi/benchmark/controls/ControlsInfoElem;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x9

    .line 31
    new-array v0, v0, [Lcom/ludashi/benchmark/controls/ControlsInfoElem;

    new-instance v1, Lcom/ludashi/benchmark/controls/ControlsInfoElem;

    const-string v2, "Heroes of Might and Magic 3"

    const-string v3, "These controls are optimized for Heroes of Might and Magic 3. But you can also try them with other similar games."

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/ludashi/benchmark/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/ludashi/benchmark/controls/ControlsInfoElem;

    const-string v2, "Left Click"

    const-string v3, "Short tap"

    const v4, 0x7f080087

    invoke-direct {v1, v4, v2, v3}, Lcom/ludashi/benchmark/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/ControlsInfoElem;

    const-string v2, "Long Right Click"

    const-string v3, "Long tap"

    const v4, 0x7f08008f

    invoke-direct {v1, v4, v2, v3}, Lcom/ludashi/benchmark/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/ControlsInfoElem;

    const-string v2, "Move Cursor"

    const-string v3, "Slow finger move"

    const v4, 0x7f08008d

    invoke-direct {v1, v4, v2, v3}, Lcom/ludashi/benchmark/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/ControlsInfoElem;

    const-string v2, "Scroll (Ctrl + Arrows)"

    const-string v3, "Fast finger move"

    const v4, 0x7f080091

    invoke-direct {v1, v4, v2, v3}, Lcom/ludashi/benchmark/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/ControlsInfoElem;

    const-string v2, "Zoom"

    const-string v3, "Two fingers long tap & move"

    const v4, 0x7f080097

    invoke-direct {v1, v4, v2, v3}, Lcom/ludashi/benchmark/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/ControlsInfoElem;

    const-string v2, "Press Enter"

    const-string v3, "Two fingers tap"

    const v4, 0x7f080085

    invoke-direct {v1, v4, v2, v3}, Lcom/ludashi/benchmark/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/ControlsInfoElem;

    const-string v2, "Press Space"

    const-string v3, "Three fingers tap"

    const v4, 0x7f080093

    invoke-direct {v1, v4, v2, v3}, Lcom/ludashi/benchmark/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/ControlsInfoElem;

    const-string v2, "App Menu"

    const-string v3, "Four fingers tap"

    const v4, 0x7f08008b

    invoke-direct {v1, v4, v2, v3}, Lcom/ludashi/benchmark/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Heroes of Might and Magic 3"

    return-object v0
.end method
