.class Lcom/mittorn/virgloverlay/common/overlay$1$1;
.super Ljava/lang/Thread;
.source "overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mittorn/virgloverlay/common/overlay$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mittorn/virgloverlay/common/overlay$1;

.field final synthetic val$fd1:I


# direct methods
.method constructor <init>(Lcom/mittorn/virgloverlay/common/overlay$1;I)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/mittorn/virgloverlay/common/overlay$1$1;->this$0:Lcom/mittorn/virgloverlay/common/overlay$1;

    iput p2, p0, Lcom/mittorn/virgloverlay/common/overlay$1$1;->val$fd1:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget v0, p0, Lcom/mittorn/virgloverlay/common/overlay$1$1;->val$fd1:I

    invoke-static {v0}, Lcom/mittorn/virgloverlay/common/overlay;->access$400(I)V

    return-void
.end method
