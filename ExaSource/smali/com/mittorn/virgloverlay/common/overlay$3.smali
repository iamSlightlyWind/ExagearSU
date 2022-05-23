.class final Lcom/mittorn/virgloverlay/common/overlay$3;
.super Ljava/lang/Object;
.source "overlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mittorn/virgloverlay/common/overlay;->create(IIII)Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$LAYOUT_FLAG:I

.field final synthetic val$height:I

.field final synthetic val$surf:[Landroid/view/SurfaceView;

.field final synthetic val$t:Ljava/lang/Thread;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>([Landroid/view/SurfaceView;IIIIILjava/lang/Thread;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$surf:[Landroid/view/SurfaceView;

    iput p2, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$LAYOUT_FLAG:I

    iput p3, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$x:I

    iput p4, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$y:I

    iput p5, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$width:I

    iput p6, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$height:I

    iput-object p7, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$t:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 218
    iget-object v0, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$surf:[Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/SurfaceView;

    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 219
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$LAYOUT_FLAG:I

    const/4 v4, -0x2

    const/4 v5, -0x2

    const v7, 0x20018

    const/4 v8, -0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 222
    sget v1, Lcom/mittorn/virgloverlay/common/overlay;->centered:I

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    .line 223
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x33

    .line 225
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 229
    :goto_0
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 230
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 231
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$width:I

    mul-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 232
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$height:I

    mul-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 233
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$width:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$height:I

    if-nez v1, :cond_2

    :cond_1
    const/16 v1, 0x1

    .line 235
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 238
    :cond_2
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$1000()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$surf:[Landroid/view/SurfaceView;

    aget-object v2, v3, v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "virgl-java"

    const-string v1, "notify"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$t:Ljava/lang/Thread;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/mittorn/virgloverlay/common/overlay$3;->val$t:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 243
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
