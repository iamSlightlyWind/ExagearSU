.class Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$1;
.super Ljava/lang/Object;
.source "HelpControlsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter;->onBindViewHolder(Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter;

.field final synthetic val$holder:Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter;Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter;

    iput-object p2, p0, Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$1;->val$holder:Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    new-instance p1, Lcom/ludashi/benchmark/fragments/ControlsInfoDFragment;

    invoke-direct {p1}, Lcom/ludashi/benchmark/fragments/ControlsInfoDFragment;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CONTROLS_ID"

    .line 85
    iget-object v2, p0, Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$1;->val$holder:Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->mItem:Lcom/ludashi/benchmark/controls/Controls;

    invoke-virtual {v2}, Lcom/ludashi/benchmark/controls/Controls;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment$RecipeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment;

    invoke-virtual {v0}, Lcom/ludashi/benchmark/fragments/help/HelpControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ludashi/benchmark/activities/EDHelpActivity;

    invoke-virtual {v0, p1}, Lcom/ludashi/benchmark/activities/EDHelpActivity;->setHelpFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method
