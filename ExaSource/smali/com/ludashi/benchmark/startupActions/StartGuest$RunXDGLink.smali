.class public Lcom/ludashi/benchmark/startupActions/StartGuest$RunXDGLink;
.super Ljava/lang/Object;
.source "StartGuest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ludashi/benchmark/startupActions/StartGuest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunXDGLink"
.end annotation


# instance fields
.field private mLink:Lcom/ludashi/benchmark/XDGLink;


# direct methods
.method public constructor <init>(Lcom/ludashi/benchmark/XDGLink;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$RunXDGLink;->mLink:Lcom/ludashi/benchmark/XDGLink;

    return-void
.end method

.method static synthetic access$300(Lcom/ludashi/benchmark/startupActions/StartGuest$RunXDGLink;)Lcom/ludashi/benchmark/XDGLink;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/ludashi/benchmark/startupActions/StartGuest$RunXDGLink;->mLink:Lcom/ludashi/benchmark/XDGLink;

    return-object p0
.end method
