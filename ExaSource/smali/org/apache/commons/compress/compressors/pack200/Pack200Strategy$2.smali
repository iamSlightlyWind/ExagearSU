.class final enum Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy$2;
.super Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
.source "Pack200Strategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/compressors/pack200/Pack200Strategy$1;)V

    return-void
.end method


# virtual methods
.method newStreamBridge()Lorg/apache/commons/compress/compressors/pack200/StreamBridge;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;-><init>()V

    return-object v0
.end method
