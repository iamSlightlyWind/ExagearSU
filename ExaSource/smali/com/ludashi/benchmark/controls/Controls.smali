.class public abstract Lcom/ludashi/benchmark/controls/Controls;
.super Ljava/lang/Object;
.source "Controls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/String;)Lcom/ludashi/benchmark/controls/Controls;
    .locals 3

    .line 64
    invoke-static {}, Lcom/ludashi/benchmark/controls/Controls;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ludashi/benchmark/controls/Controls;

    .line 66
    invoke-virtual {v1}, Lcom/ludashi/benchmark/controls/Controls;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefault()Lcom/ludashi/benchmark/controls/Controls;
    .locals 1

    .line 79
    new-instance v0, Lcom/ludashi/benchmark/controls/DefaultControls;

    invoke-direct {v0}, Lcom/ludashi/benchmark/controls/DefaultControls;-><init>()V

    return-object v0
.end method

.method public static getList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ludashi/benchmark/controls/Controls;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 23
    new-array v0, v0, [Lcom/ludashi/benchmark/controls/Controls;

    new-instance v1, Lcom/ludashi/benchmark/controls/DefaultControls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/DefaultControls;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/RtsControls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/RtsControls;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/HoMM3Controls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/HoMM3Controls;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/Disciples2Controls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/Disciples2Controls;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/Panzer2Controls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/Panzer2Controls;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/Civ3Controls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/Civ3Controls;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/ArcanumControls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/ArcanumControls;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/FalloutControls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/FalloutControls;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/JA2Controls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/JA2Controls;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/MMControls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/MMControls;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/DiabloControls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/DiabloControls;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/TouchPadControls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/TouchPadControls;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/HybridControls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/HybridControls;-><init>()V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/Mhqxz5Controls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/Mhqxz5Controls;-><init>()V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/BackmirControls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/BackmirControls;-><init>()V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/ludashi/benchmark/controls/DjfmlControls;

    invoke-direct {v1}, Lcom/ludashi/benchmark/controls/DjfmlControls;-><init>()V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract create()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
.end method

.method public createInfoDialog()Landroid/support/v4/app/DialogFragment;
    .locals 4

    .line 46
    new-instance v0, Lcom/ludashi/benchmark/fragments/ControlsInfoDFragment;

    invoke-direct {v0}, Lcom/ludashi/benchmark/fragments/ControlsInfoDFragment;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CONTROLS_ID"

    .line 48
    invoke-virtual {p0}, Lcom/ludashi/benchmark/controls/Controls;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInfoElems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ludashi/benchmark/controls/ControlsInfoElem;",
            ">;"
        }
    .end annotation
.end method

.method public getInfoImage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ludashi/benchmark/controls/Controls;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ludashi/benchmark/controls/Controls;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
