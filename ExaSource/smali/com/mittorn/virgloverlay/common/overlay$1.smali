.class final Lcom/mittorn/virgloverlay/common/overlay$1;
.super Ljava/lang/Thread;
.source "overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mittorn/virgloverlay/common/overlay;->run_mt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "virgl-java"

    const-string v1, "Mode MT run!"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget v1, Lcom/mittorn/virgloverlay/common/overlay;->protocol_type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 84
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$000()I

    move-result v1

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$100()I

    move-result v1

    :goto_0
    if-gez v1, :cond_1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$200()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$200()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.mittorn.virgloverlay.process.p1"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void

    .line 96
    :cond_1
    sget v0, Lcom/mittorn/virgloverlay/common/overlay;->protocol_type:I

    if-ne v0, v2, :cond_2

    .line 97
    :goto_1
    invoke-static {v1}, Lcom/mittorn/virgloverlay/common/overlay;->access$300(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 99
    new-instance v2, Lcom/mittorn/virgloverlay/common/overlay$1$1;

    invoke-direct {v2, p0, v0}, Lcom/mittorn/virgloverlay/common/overlay$1$1;-><init>(Lcom/mittorn/virgloverlay/common/overlay$1;I)V

    .line 105
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 110
    :cond_2
    :goto_2
    invoke-static {v1}, Lcom/mittorn/virgloverlay/common/overlay;->access$500(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 112
    new-instance v2, Lcom/mittorn/virgloverlay/common/overlay$1$2;

    invoke-direct {v2, p0, v0}, Lcom/mittorn/virgloverlay/common/overlay$1$2;-><init>(Lcom/mittorn/virgloverlay/common/overlay$1;I)V

    .line 118
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_3
    return-void
.end method
