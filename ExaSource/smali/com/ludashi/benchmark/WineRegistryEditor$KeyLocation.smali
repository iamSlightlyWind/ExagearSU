.class Lcom/ludashi/benchmark/WineRegistryEditor$KeyLocation;
.super Ljava/lang/Object;
.source "WineRegistryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ludashi/benchmark/WineRegistryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyLocation"
.end annotation


# instance fields
.field mBegin:I

.field mContentsBegin:I

.field mEnd:I

.field final synthetic this$0:Lcom/ludashi/benchmark/WineRegistryEditor;


# direct methods
.method constructor <init>(Lcom/ludashi/benchmark/WineRegistryEditor;III)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ludashi/benchmark/WineRegistryEditor$KeyLocation;->this$0:Lcom/ludashi/benchmark/WineRegistryEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p2, p0, Lcom/ludashi/benchmark/WineRegistryEditor$KeyLocation;->mBegin:I

    .line 24
    iput p3, p0, Lcom/ludashi/benchmark/WineRegistryEditor$KeyLocation;->mContentsBegin:I

    .line 25
    iput p4, p0, Lcom/ludashi/benchmark/WineRegistryEditor$KeyLocation;->mEnd:I

    return-void
.end method
