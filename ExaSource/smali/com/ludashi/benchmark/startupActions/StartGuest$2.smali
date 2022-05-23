.class Lcom/ludashi/benchmark/startupActions/StartGuest$2;
.super Ljava/lang/Object;
.source "StartGuest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/startupActions/StartGuest;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludashi/benchmark/startupActions/StartGuest;

.field final synthetic val$actions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/startupActions/StartGuest;Ljava/util/List;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$2;->this$0:Lcom/ludashi/benchmark/startupActions/StartGuest;

    iput-object p2, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$2;->val$actions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$2;->this$0:Lcom/ludashi/benchmark/startupActions/StartGuest;

    invoke-static {v0}, Lcom/ludashi/benchmark/startupActions/StartGuest;->access$1000(Lcom/ludashi/benchmark/startupActions/StartGuest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getStartupActionsCollection()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$2;->val$actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addActions(Ljava/util/List;)V

    .line 403
    iget-object v0, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$2;->this$0:Lcom/ludashi/benchmark/startupActions/StartGuest;

    invoke-static {v0}, Lcom/ludashi/benchmark/startupActions/StartGuest;->access$1100(Lcom/ludashi/benchmark/startupActions/StartGuest;)V

    return-void
.end method
