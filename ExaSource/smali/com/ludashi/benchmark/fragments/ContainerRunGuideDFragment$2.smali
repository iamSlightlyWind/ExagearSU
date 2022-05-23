.class Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment$2;
.super Ljava/lang/Object;
.source "ContainerRunGuideDFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment$2;->this$0:Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment$2;->this$0:Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;->access$200(Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;)Lcom/ludashi/benchmark/guestContainers/GuestContainer;

    move-result-object p1

    iget-object p1, p1, Lcom/ludashi/benchmark/guestContainers/GuestContainer;->mConfig:Lcom/ludashi/benchmark/guestContainers/GuestContainerConfig;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ludashi/benchmark/guestContainers/GuestContainerConfig;->setRunGuideShown(Z)V

    .line 101
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment$2;->this$0:Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;

    invoke-virtual {p1}, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;->dismiss()V

    .line 102
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment$2;->this$0:Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;->access$000(Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment$2;->this$0:Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;->access$100(Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;)Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;->onContRunGuideRes(Z)V

    :cond_0
    return-void
.end method
