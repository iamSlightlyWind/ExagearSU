.class Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;
.super Ljava/lang/Object;
.source "ChooseFileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->onBindViewHolder(Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

.field final synthetic val$holder:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$ViewHolder;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iput-object p2, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->val$holder:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 217
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->access$000(Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->val$holder:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {v0}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$100(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$102(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;Ljava/io/File;)Ljava/io/File;

    .line 223
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    iget-object v1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v1, v1, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {v1}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$100(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v2, v2, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {v2}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$300(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->getDirContent(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$202(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;Ljava/util/List;)Ljava/util/List;

    .line 224
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$400(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v1, v1, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    iget-object v2, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v2, v2, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {v2}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$200(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;-><init>(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {v0, p1}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$102(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;Ljava/io/File;)Ljava/io/File;

    .line 229
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    iget-object v1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v1, v1, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {v1}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$100(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v2, v2, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {v2}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$300(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->getDirContent(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$202(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;Ljava/util/List;)Ljava/util/List;

    .line 230
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$400(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v1, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v1, v1, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    iget-object v2, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v2, v2, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {v2}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$200(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;-><init>(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseFileFragment;

    invoke-static {v0}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment;->access$500(Lcom/ludashi/benchmark/fragments/ChooseFileFragment;)Lcom/ludashi/benchmark/fragments/ChooseFileFragment$OnFileSelectedListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ludashi/benchmark/fragments/ChooseFileFragment$OnFileSelectedListener;->onFileSelected(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
