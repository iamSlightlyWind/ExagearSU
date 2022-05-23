.class public Lcom/mittorn/virgloverlay/common/overlay;
.super Ljava/lang/Object;
.source "overlay.java"


# static fields
.field private static final T:Ljava/lang/String; = "virgl-java"

.field public static centered:I

.field private static ctx:Landroid/content/Context;

.field private static handler:Landroid/os/Handler;

.field static final hh:Landroid/os/Handler;

.field public static protocol_type:I

.field public static restart_var:I

.field private static wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/mittorn/virgloverlay/common/overlay;->hh:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 17
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->nativeOpen()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 17
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->nativeOpenOld()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Landroid/view/WindowManager;
    .locals 1

    .line 17
    sget-object v0, Lcom/mittorn/virgloverlay/common/overlay;->wm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .line 17
    sget-object v0, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(I)I
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/mittorn/virgloverlay/common/overlay;->nativeAccept(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(I)V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/mittorn/virgloverlay/common/overlay;->nativeRun(I)V

    return-void
.end method

.method static synthetic access$500(I)I
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/mittorn/virgloverlay/common/overlay;->nativeAcceptOld(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(I)V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/mittorn/virgloverlay/common/overlay;->nativeRunOld(I)V

    return-void
.end method

.method static synthetic access$700()V
    .locals 0

    .line 17
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->nativeUnlink()V

    return-void
.end method

.method static synthetic access$800(I)V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/mittorn/virgloverlay/common/overlay;->start_next(I)V

    return-void
.end method

.method static synthetic access$900()V
    .locals 0

    .line 17
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->nativeUnlinkOld()V

    return-void
.end method

.method private static create(IIII)Landroid/view/SurfaceView;
    .locals 12

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/view/SurfaceView;

    .line 205
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d2

    :goto_0
    move v2, v0

    const-string v0, "virgl-java"

    const-string v1, "post"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v10, Lcom/mittorn/virgloverlay/common/overlay;->handler:Landroid/os/Handler;

    new-instance v11, Lcom/mittorn/virgloverlay/common/overlay$3;

    move-object v0, v11

    move-object v1, v9

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/mittorn/virgloverlay/common/overlay$3;-><init>([Landroid/view/SurfaceView;IIIIILjava/lang/Thread;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v10, v11, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    const-wide/16 p0, 0x3e8

    .line 249
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 250
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "virgl-java"

    const-string p1, "resume"

    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 250
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "virgl-java"

    const-string p1, "int"

    .line 257
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x0

    .line 260
    aget-object p0, v9, p0

    return-object p0
.end method

.method public static destroy(Landroid/view/SurfaceView;)V
    .locals 2

    .line 300
    sget-object v0, Lcom/mittorn/virgloverlay/common/overlay;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mittorn/virgloverlay/common/overlay$5;

    invoke-direct {v1, p0}, Lcom/mittorn/virgloverlay/common/overlay$5;-><init>(Landroid/view/SurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static get_surface(Landroid/view/SurfaceView;)Landroid/view/Surface;
    .locals 0

    .line 309
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeAccept(I)I
.end method

.method private static native nativeAcceptOld(I)I
.end method

.method private static native nativeInit(Ljava/lang/String;)I
.end method

.method private static native nativeInitOld(Ljava/lang/String;)I
.end method

.method private static native nativeOpen()I
.end method

.method private static native nativeOpenOld()I
.end method

.method private static native nativeRun(I)V
.end method

.method private static native nativeRunOld(I)V
.end method

.method private static native nativeSettings(Ljava/lang/String;)V
.end method

.method private static native nativeSettingsOld(Ljava/lang/String;)V
.end method

.method private static native nativeUnlink()V
.end method

.method private static native nativeUnlinkOld()V
.end method

.method public static readStop()I
    .locals 5

    const/4 v0, 0x0

    .line 315
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/image/opt/recipe/stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 316
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 317
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 318
    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 320
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 322
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static restart_services(I)V
    .locals 5

    .line 328
    sget v0, Lcom/mittorn/virgloverlay/common/overlay;->restart_var:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 329
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->readStop()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    .line 331
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 335
    :goto_0
    sget-object v0, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".process.p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restart service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "virgl-java"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static run_mp(I)V
    .locals 1

    .line 126
    new-instance v0, Lcom/mittorn/virgloverlay/common/overlay$2;

    invoke-direct {v0, p0}, Lcom/mittorn/virgloverlay/common/overlay$2;-><init>(I)V

    .line 156
    invoke-virtual {v0}, Lcom/mittorn/virgloverlay/common/overlay$2;->start()V

    return-void
.end method

.method private static run_mt()V
    .locals 1

    .line 76
    new-instance v0, Lcom/mittorn/virgloverlay/common/overlay$1;

    invoke-direct {v0}, Lcom/mittorn/virgloverlay/common/overlay$1;-><init>()V

    .line 122
    invoke-virtual {v0}, Lcom/mittorn/virgloverlay/common/overlay$1;->start()V

    return-void
.end method

.method private static set_rect(Landroid/view/SurfaceView;IIIII)V
    .locals 9

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "virgl-java"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v0, Lcom/mittorn/virgloverlay/common/overlay;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/mittorn/virgloverlay/common/overlay$4;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/mittorn/virgloverlay/common/overlay$4;-><init>(Landroid/view/SurfaceView;IIIII)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static start(Landroid/content/Context;I)V
    .locals 5

    const-string v0, "/image/opt/recipe/settings2"

    .line 161
    sput-object p0, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    const/4 p0, 0x1

    .line 165
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 167
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 168
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/mittorn/virgloverlay/common/overlay;->centered:I

    .line 169
    aget-object v4, v3, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/mittorn/virgloverlay/common/overlay;->restart_var:I

    const/4 v4, 0x2

    .line 170
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/mittorn/virgloverlay/common/overlay;->protocol_type:I

    .line 171
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 172
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :catch_0
    sget-object v1, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    sput-object v1, Lcom/mittorn/virgloverlay/common/overlay;->wm:Landroid/view/WindowManager;

    const-string v1, "virgl-lib"

    .line 179
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 181
    sget v1, Lcom/mittorn/virgloverlay/common/overlay;->protocol_type:I

    const-string v2, "/image/opt/recipe/settings"

    if-ne v1, p0, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mittorn/virgloverlay/common/overlay;->nativeInit(Ljava/lang/String;)I

    move-result v1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mittorn/virgloverlay/common/overlay;->nativeSettings(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mittorn/virgloverlay/common/overlay;->nativeInitOld(Ljava/lang/String;)I

    move-result v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mittorn/virgloverlay/common/overlay;->nativeSettingsOld(Ljava/lang/String;)V

    .line 191
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/mittorn/virgloverlay/common/overlay;->handler:Landroid/os/Handler;

    if-ne v1, p0, :cond_1

    .line 193
    invoke-static {}, Lcom/mittorn/virgloverlay/common/overlay;->run_mt()V

    goto :goto_1

    .line 195
    :cond_1
    invoke-static {p1}, Lcom/mittorn/virgloverlay/common/overlay;->run_mp(I)V

    :goto_1
    return-void
.end method

.method private static start_next(I)V
    .locals 8

    .line 45
    sget-object v0, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    const-string v1, "activity"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_4

    if-ne v2, p0, :cond_0

    goto/16 :goto_2

    .line 55
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ".process.p"

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 58
    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v3, :cond_3

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "starting instance "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "virgl-java"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object p0, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mittorn/virgloverlay/common/overlay;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
