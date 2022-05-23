.class Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$1;
.super Ljava/lang/Object;
.source "ChooseXDGLinkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$1;->this$3:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 402
    iget-object p2, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$1;->this$3:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;

    iget-object p2, p2, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->val$node:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object p2, p2, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/ludashi/benchmark/XDGLink;

    iget-object p2, p2, Lcom/ludashi/benchmark/XDGLink;->linkFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 403
    iget-object p2, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$1;->this$3:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;

    iget-object p2, p2, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->this$2:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

    iget-object p2, p2, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object p2, p2, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    invoke-static {p2}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$900(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;)V

    .line 404
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
