.class final Lcom/mittorn/virgloverlay/common/overlay$2;
.super Ljava/lang/Thread;
.source "overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mittorn/virgloverlay/common/overlay;->run_mp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$svc_id:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/mittorn/virgloverlay/common/overlay$2;->val$svc_id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "virgl-java"

    const-string v1, "Mode MP run!"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget v1, Lcom/mittorn/virgloverlay/common/overlay;->protocol_type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 134
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$000()I

    move-result v1

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$100()I

    move-result v1

    :goto_0
    const-string v3, "com.mittorn.virgloverlay.process.p1"

    if-gez v1, :cond_1

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open socket "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$200()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void

    .line 143
    :cond_1
    sget v0, Lcom/mittorn/virgloverlay/common/overlay;->protocol_type:I

    if-ne v0, v2, :cond_2

    .line 144
    invoke-static {v1}, Lcom/mittorn/virgloverlay/common/overlay;->access$300(I)I

    move-result v0

    .line 145
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$700()V

    .line 146
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$2;->val$svc_id:I

    invoke-static {v1}, Lcom/mittorn/virgloverlay/common/overlay;->access$800(I)V

    .line 147
    invoke-static {v0}, Lcom/mittorn/virgloverlay/common/overlay;->access$400(I)V

    goto :goto_1

    .line 149
    :cond_2
    invoke-static {v1}, Lcom/mittorn/virgloverlay/common/overlay;->access$500(I)I

    move-result v0

    .line 150
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$900()V

    .line 151
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$2;->val$svc_id:I

    invoke-static {v1}, Lcom/mittorn/virgloverlay/common/overlay;->access$800(I)V

    .line 152
    invoke-static {v0}, Lcom/mittorn/virgloverlay/common/overlay;->access$600(I)V

    .line 154
    :goto_1
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$200()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
