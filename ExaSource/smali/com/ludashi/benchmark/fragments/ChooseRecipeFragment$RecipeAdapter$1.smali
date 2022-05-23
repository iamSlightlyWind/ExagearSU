.class Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$1;
.super Ljava/lang/Object;
.source "ChooseRecipeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter;->onBindViewHolder(Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter;

.field final synthetic val$holder:Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter;Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter;

    iput-object p2, p0, Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$1;->val$holder:Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter;

    invoke-static {p1}, Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter;->access$000(Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$1;->val$holder:Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ludashi/benchmark/InstallRecipe;

    .line 113
    iget-object v0, p0, Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter$1;->this$1:Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter;

    iget-object v0, v0, Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$RecipeAdapter;->this$0:Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment;

    invoke-static {v0}, Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment;->access$100(Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment;)Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ludashi/benchmark/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;->onRecipeSelected(Lcom/ludashi/benchmark/InstallRecipe;)V

    return-void
.end method
