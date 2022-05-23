.class Lcom/ludashi/benchmark/controls/uiOverlays/DefaultUIOverlay$3;
.super Ljava/lang/Object;
.source "DefaultUIOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/controls/uiOverlays/DefaultUIOverlay;->createToolbar()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludashi/benchmark/controls/uiOverlays/DefaultUIOverlay;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/controls/uiOverlays/DefaultUIOverlay;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/ludashi/benchmark/controls/uiOverlays/DefaultUIOverlay$3;->this$0:Lcom/ludashi/benchmark/controls/uiOverlays/DefaultUIOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->toggleSoftInput()V

    return-void
.end method
