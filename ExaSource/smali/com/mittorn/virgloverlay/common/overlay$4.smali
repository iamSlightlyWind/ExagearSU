.class final Lcom/mittorn/virgloverlay/common/overlay$4;
.super Ljava/lang/Object;
.source "overlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mittorn/virgloverlay/common/overlay;->set_rect(Landroid/view/SurfaceView;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$height:I

.field final synthetic val$surface:Landroid/view/SurfaceView;

.field final synthetic val$visible:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;IIIII)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$surface:Landroid/view/SurfaceView;

    iput p2, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$visible:I

    iput p3, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$x:I

    iput p4, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$y:I

    iput p5, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$width:I

    iput p6, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$surface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$visible:I

    if-eqz v1, :cond_1

    .line 280
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 281
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 282
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 283
    iget v1, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const-string v1, "virgl-java"

    const-string v2, "Invisible! "

    .line 289
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$1000()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mittorn/virgloverlay/common/overlay$4;->val$surface:Landroid/view/SurfaceView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
