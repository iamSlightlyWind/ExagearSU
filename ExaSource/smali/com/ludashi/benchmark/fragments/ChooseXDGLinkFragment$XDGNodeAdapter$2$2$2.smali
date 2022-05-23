.class Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$2;
.super Ljava/lang/Object;
.source "ChooseXDGLinkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$2;->this$3:Lcom/ludashi/benchmark/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 411
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
