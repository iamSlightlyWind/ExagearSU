.class Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter$1$2;
.super Ljava/lang/Object;
.source "ManageContainersFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter$1;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter$1;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter$1$2;->this$2:Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 0

    .line 323
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter$1$2;->this$2:Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter$1;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ManageContainersFragment$ContainersAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ManageContainersFragment;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ManageContainersFragment;->access$500(Lcom/ludashi/benchmark/fragments/ManageContainersFragment;)V

    return-void
.end method
