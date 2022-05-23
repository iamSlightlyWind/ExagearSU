.class Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;
.super Ljava/lang/Object;
.source "ChooseXDGLinkFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

.field final synthetic val$cont:Lcom/ludashi/benchmark/guestContainers/GuestContainer;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;Lcom/ludashi/benchmark/guestContainers/GuestContainer;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;->this$2:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

    iput-object p2, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;->val$cont:Lcom/ludashi/benchmark/guestContainers/GuestContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 379
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;->val$cont:Lcom/ludashi/benchmark/guestContainers/GuestContainer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ludashi/benchmark/fragments/ContainerRunGuideDFragment;->createDialog(Lcom/ludashi/benchmark/guestContainers/GuestContainer;Z)Landroid/support/v4/app/DialogFragment;

    move-result-object p1

    iget-object v1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;->this$2:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

    iget-object v1, v1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->this$1:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v1, v1, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;

    invoke-virtual {v1}, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CONT_RUN_GUIDE"

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v0
.end method
