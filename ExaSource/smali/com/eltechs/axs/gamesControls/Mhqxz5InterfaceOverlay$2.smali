.class final Lcom/eltechs/axs/gamesControls/Mhqxz5InterfaceOverlay$2;
.super Ljava/lang/Object;
.source "Mhqxz5InterfaceOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/Mhqxz5InterfaceOverlay;->createAltButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/Mhqxz5InterfaceOverlay$2;->val$viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 154
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/Mhqxz5InterfaceOverlay$2;->val$viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    sget-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->ALT:Lcom/eltechs/axs/xserver/KeyButNames;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/eltechs/axs/xserver/ViewFacade;->switchModifierState(Lcom/eltechs/axs/xserver/KeyButNames;BZ)V

    return-void
.end method
