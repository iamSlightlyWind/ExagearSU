.class Lcom/ludashi/benchmark/controls/touchControls/DefaultTCF$3;
.super Ljava/lang/Object;
.source "DefaultTCF.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/controls/touchControls/DefaultTCF;->createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;I)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludashi/benchmark/controls/touchControls/DefaultTCF;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/controls/touchControls/DefaultTCF;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/ludashi/benchmark/controls/touchControls/DefaultTCF$3;->this$0:Lcom/ludashi/benchmark/controls/touchControls/DefaultTCF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/ludashi/benchmark/controls/touchControls/DefaultTCF$3;->this$0:Lcom/ludashi/benchmark/controls/touchControls/DefaultTCF;

    iget-object v0, v0, Lcom/ludashi/benchmark/controls/touchControls/DefaultTCF;->mUIOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    check-cast v0, Lcom/ludashi/benchmark/controls/uiOverlays/DefaultUIOverlay;

    invoke-virtual {v0}, Lcom/ludashi/benchmark/controls/uiOverlays/DefaultUIOverlay;->toggleToolbar()V

    return-void
.end method
