.class Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;
.super Ljava/lang/Object;
.source "ChooseXDGLinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->onBindViewHolder(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

.field final synthetic val$holder:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iput-object p2, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->val$holder:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 337
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->access$100(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->val$holder:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;

    .line 339
    iget-object v0, p1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/ludashi/benchmark/XDGLink;

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p1}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;->isUpNode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 344
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$210(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;)I

    .line 345
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    new-instance v0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object v2, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v2, v2, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    iget-object v3, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v3, v3, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    invoke-static {v3}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$300(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;)Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;

    move-result-object v3

    iget-object v3, v3, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;->mCont:Lcom/ludashi/benchmark/guestContainers/GuestContainer;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v5, v5, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    invoke-static {v5}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$300(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;)Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;

    move-result-object v5

    iget-object v5, v5, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;-><init>(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;Lcom/ludashi/benchmark/guestContainers/GuestContainer;Ljava/io/File;Lcom/ludashi/benchmark/XDGLink;)V

    invoke-static {p1, v0}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$302(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;)Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    invoke-static {v0}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$208(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;)I

    .line 350
    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    new-instance v2, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object v3, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v3, v3, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    iget-object v4, p1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;->mCont:Lcom/ludashi/benchmark/guestContainers/GuestContainer;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;-><init>(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;Lcom/ludashi/benchmark/guestContainers/GuestContainer;Ljava/io/File;Lcom/ludashi/benchmark/XDGLink;)V

    invoke-static {v0, v2}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$302(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;)Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;

    .line 352
    :goto_0
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    invoke-static {v0}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$500(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$402(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;Ljava/util/List;)Ljava/util/List;

    .line 353
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$600(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v1, v1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    iget-object v2, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v2, v2, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    invoke-static {v2}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$400(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;-><init>(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    invoke-static {v0}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->access$700(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;)Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$OnXDGLinkSelectedListener;

    move-result-object v0

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/ludashi/benchmark/XDGLink;

    invoke-interface {v0, p1}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$OnXDGLinkSelectedListener;->onXDGLinkSelected(Lcom/ludashi/benchmark/XDGLink;)V

    :goto_1
    return-void
.end method
