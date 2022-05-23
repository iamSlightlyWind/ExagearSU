.class Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment$2;
.super Ljava/lang/Object;
.source "ChoosePackagesDFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment$2;->this$0:Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment$2;->this$0:Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment;

    iget-object p1, p1, Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment;->mListener:Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment$OnPackagesSelectedListener;

    iget-object p2, p0, Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment$2;->this$0:Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment;

    iget-object p2, p2, Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment;->mSelectedItems:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment$OnPackagesSelectedListener;->onPackagesSelected(Ljava/util/List;)V

    .line 69
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment$2;->this$0:Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment;

    invoke-virtual {p1}, Lcom/ludashi/benchmark/fragments/ChoosePackagesDFragment;->dismiss()V

    return-void
.end method
