.class final Lcom/mittorn/virgloverlay/common/overlay$5;
.super Ljava/lang/Object;
.source "overlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mittorn/virgloverlay/common/overlay;->destroy(Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$surface:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/mittorn/virgloverlay/common/overlay$5;->val$surface:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 303
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->access$1000()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mittorn/virgloverlay/common/overlay$5;->val$surface:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method
