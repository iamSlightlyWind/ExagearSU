.class public Lcom/mittorn/virgloverlay/process/p19;
.super Landroid/app/Service;
.source "p19.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 11
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/16 v0, 0x13

    .line 12
    invoke-static {p0, v0}, Lcom/mittorn/virgloverlay/common/overlay;->start(Landroid/content/Context;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 16
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
