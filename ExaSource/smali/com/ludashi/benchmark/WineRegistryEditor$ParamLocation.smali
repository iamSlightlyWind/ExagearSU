.class Lcom/ludashi/benchmark/WineRegistryEditor$ParamLocation;
.super Ljava/lang/Object;
.source "WineRegistryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ludashi/benchmark/WineRegistryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParamLocation"
.end annotation


# instance fields
.field mBegin:I

.field mEnd:I

.field mValBegin:I

.field final synthetic this$0:Lcom/ludashi/benchmark/WineRegistryEditor;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/WineRegistryEditor;III)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ludashi/benchmark/WineRegistryEditor$ParamLocation;->this$0:Lcom/ludashi/benchmark/WineRegistryEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p2, p0, Lcom/ludashi/benchmark/WineRegistryEditor$ParamLocation;->mBegin:I

    .line 39
    iput p3, p0, Lcom/ludashi/benchmark/WineRegistryEditor$ParamLocation;->mValBegin:I

    .line 40
    iput p4, p0, Lcom/ludashi/benchmark/WineRegistryEditor$ParamLocation;->mEnd:I

    return-void
.end method
