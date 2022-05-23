.class public Lcom/eltechs/axs/Mcat;
.super Ljava/lang/Object;


# instance fields
.field public killret:I

.field public prootPid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "mcat"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    invoke-virtual {p0}, Lcom/eltechs/axs/Mcat;->startVtest()I

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/Mcat;->prootPid:I

    return-void
.end method

.method public native startVtest()I
.end method

.method public stop()V
    .locals 2

    iget v0, p0, Lcom/eltechs/axs/Mcat;->prootPid:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/Mcat;->stopVtest(I)I

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/Mcat;->killret:I

    return-void
.end method

.method public native stopVtest(I)I
.end method
