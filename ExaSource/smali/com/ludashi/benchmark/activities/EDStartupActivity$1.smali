.class Lcom/ludashi/benchmark/activities/EDStartupActivity$1;
.super Ljava/lang/Object;
.source "EDStartupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/activities/EDStartupActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludashi/benchmark/activities/EDStartupActivity;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/activities/EDStartupActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ludashi/benchmark/activities/EDStartupActivity$1;->this$0:Lcom/ludashi/benchmark/activities/EDStartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    .line 62
    invoke-static {p2}, Lcom/eltechs/axs/activities/StartupActivity;->shutdownAXSApplication(Z)V

    .line 63
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
