.class public Lcom/ludashi/benchmark/startupActions/StartGuest$InstallPackage;
.super Ljava/lang/Object;
.source "StartGuest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ludashi/benchmark/startupActions/StartGuest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallPackage"
.end annotation


# instance fields
.field private mCont:Lcom/ludashi/benchmark/guestContainers/GuestContainer;

.field private mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ludashi/benchmark/ContainerPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ludashi/benchmark/guestContainers/GuestContainer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ludashi/benchmark/guestContainers/GuestContainer;",
            "Ljava/util/List<",
            "Lcom/ludashi/benchmark/ContainerPackage;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$InstallPackage;->mCont:Lcom/ludashi/benchmark/guestContainers/GuestContainer;

    .line 145
    iput-object p2, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$InstallPackage;->mPackages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$500(Lcom/ludashi/benchmark/startupActions/StartGuest$InstallPackage;)Lcom/ludashi/benchmark/guestContainers/GuestContainer;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$InstallPackage;->mCont:Lcom/ludashi/benchmark/guestContainers/GuestContainer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ludashi/benchmark/startupActions/StartGuest$InstallPackage;)Ljava/util/List;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$InstallPackage;->mPackages:Ljava/util/List;

    return-object p0
.end method
