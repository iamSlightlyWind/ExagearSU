.class Lcom/ludashi/benchmark/controls/touchControls/RtsTCF$1;
.super Ljava/lang/Object;
.source "RtsTCF.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/controls/touchControls/RtsTCF;->createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;I)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludashi/benchmark/controls/touchControls/RtsTCF;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/controls/touchControls/RtsTCF;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/ludashi/benchmark/controls/touchControls/RtsTCF$1;->this$0:Lcom/ludashi/benchmark/controls/touchControls/RtsTCF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 292
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->toggleSoftInput()V

    return-void
.end method
