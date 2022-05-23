.class public Lcom/mittorn/virgloverlay/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field public static final FL_GLES:I = 0x4

.field public static final FL_MULTITHREAD:I = 0x10

.field public static final T:Ljava/lang/String; = "VirGL Overlay"


# instance fields
.field public centered:I

.field public dxtn_decompress:I

.field public protocol_version:I

.field public restart_var:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/mittorn/virgloverlay/MainActivity;->centered:I

    iput v0, p0, Lcom/mittorn/virgloverlay/MainActivity;->restart_var:I

    iput v0, p0, Lcom/mittorn/virgloverlay/MainActivity;->protocol_version:I

    .line 29
    iput v0, p0, Lcom/mittorn/virgloverlay/MainActivity;->dxtn_decompress:I

    return-void
.end method


# virtual methods
.method public onClickClean(Landroid/view/View;)V
    .locals 4

    .line 90
    iget p1, p0, Lcom/mittorn/virgloverlay/MainActivity;->restart_var:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lcom/mittorn/virgloverlay/MainActivity;->writeStop(I)V

    :cond_0
    move p1, v0

    :goto_0
    const/16 v1, 0x20

    if-ge p1, v1, :cond_1

    .line 96
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mittorn/virgloverlay/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".process.p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mittorn/virgloverlay/MainActivity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "VirGL Overlay"

    const-string v1, "All services cleaned!"

    .line 100
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget p1, p0, Lcom/mittorn/virgloverlay/MainActivity;->restart_var:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/mittorn/virgloverlay/MainActivity;->writeStop(I)V

    :cond_2
    return-void
.end method

.method public onClickStart(Landroid/view/View;)V
    .locals 9

    const-string p1, "VirGL Overlay"

    const v0, 0x7f09112e

    .line 117
    invoke-virtual {p0, v0}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f091173

    .line 118
    invoke-virtual {p0, v1}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f091174

    .line 119
    invoke-virtual {p0, v2}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v3, 0x7f0910f0

    .line 121
    invoke-virtual {p0, v3}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x7f091105

    .line 122
    invoke-virtual {p0, v4}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const v5, 0x7f091101

    .line 123
    invoke-virtual {p0, v5}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v6, 0x7f09108e

    .line 125
    invoke-virtual {p0, v6}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 128
    :try_start_0
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    .line 129
    iput v7, p0, Lcom/mittorn/virgloverlay/MainActivity;->centered:I

    goto :goto_0

    .line 131
    :cond_0
    iput v8, p0, Lcom/mittorn/virgloverlay/MainActivity;->centered:I

    .line 134
    :goto_0
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    iput v7, p0, Lcom/mittorn/virgloverlay/MainActivity;->restart_var:I

    goto :goto_1

    .line 137
    :cond_1
    iput v8, p0, Lcom/mittorn/virgloverlay/MainActivity;->restart_var:I

    .line 140
    :goto_1
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    iput v7, p0, Lcom/mittorn/virgloverlay/MainActivity;->protocol_version:I

    goto :goto_2

    .line 143
    :cond_2
    iput v8, p0, Lcom/mittorn/virgloverlay/MainActivity;->protocol_version:I

    .line 146
    :goto_2
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    iput v7, p0, Lcom/mittorn/virgloverlay/MainActivity;->dxtn_decompress:I

    goto :goto_3

    .line 149
    :cond_3
    iput v8, p0, Lcom/mittorn/virgloverlay/MainActivity;->dxtn_decompress:I

    .line 152
    :goto_3
    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mittorn/virgloverlay/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/settings2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 153
    iget v4, p0, Lcom/mittorn/virgloverlay/MainActivity;->centered:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0x20

    .line 154
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(I)V

    .line 155
    iget v5, p0, Lcom/mittorn/virgloverlay/MainActivity;->restart_var:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(I)V

    .line 157
    iget v5, p0, Lcom/mittorn/virgloverlay/MainActivity;->protocol_version:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(I)V

    .line 159
    iget v5, p0, Lcom/mittorn/virgloverlay/MainActivity;->dxtn_decompress:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 163
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto :goto_4

    :cond_4
    move v1, v8

    .line 165
    :goto_4
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x10

    .line 168
    :cond_5
    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mittorn/virgloverlay/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/settings"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(I)V

    .line 171
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 174
    iget v0, p0, Lcom/mittorn/virgloverlay/MainActivity;->restart_var:I

    if-ne v0, v7, :cond_6

    .line 175
    invoke-virtual {p0, v8}, Lcom/mittorn/virgloverlay/MainActivity;->writeStop(I)V

    .line 178
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mittorn/virgloverlay/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".process.p1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    invoke-virtual {p0, v0}, Lcom/mittorn/virgloverlay/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "Service p1 started!"

    .line 181
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string v0, "Service p1 failed!"

    .line 184
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, " "

    .line 32
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0036

    .line 33
    invoke-virtual {p0, p1}, Lcom/mittorn/virgloverlay/MainActivity;->setContentView(I)V

    const p1, 0x7f09112e

    .line 35
    invoke-virtual {p0, p1}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v1, 0x7f091173

    .line 36
    invoke-virtual {p0, v1}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f091174

    .line 37
    invoke-virtual {p0, v2}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v3, 0x7f0910f0

    .line 39
    invoke-virtual {p0, v3}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x7f091105

    .line 40
    invoke-virtual {p0, v4}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const v5, 0x7f091101

    .line 41
    invoke-virtual {p0, v5}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v6, 0x7f09108e

    .line 43
    invoke-virtual {p0, v6}, Lcom/mittorn/virgloverlay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 48
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 49
    new-instance v7, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/mittorn/virgloverlay/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v7, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v8, 0xde

    .line 50
    invoke-virtual {p0, v7, v8}, Lcom/mittorn/virgloverlay/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/16 v7, 0x80

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 55
    :try_start_0
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    .line 56
    new-instance v7, Ljava/io/FileReader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mittorn/virgloverlay/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/settings"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 59
    aget-object v12, v11, v9

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    aget-object v11, v11, v8

    invoke-virtual {p1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 62
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v12, v9

    .line 68
    :catch_1
    :goto_0
    :try_start_2
    new-instance p1, Ljava/io/FileReader;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mittorn/virgloverlay/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/settings2"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p1, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 70
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 71
    aget-object v10, v0, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/mittorn/virgloverlay/MainActivity;->centered:I

    .line 72
    aget-object v10, v0, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/mittorn/virgloverlay/MainActivity;->restart_var:I

    const/4 v10, 0x2

    .line 73
    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/mittorn/virgloverlay/MainActivity;->protocol_version:I

    const/4 v10, 0x3

    .line 74
    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mittorn/virgloverlay/MainActivity;->dxtn_decompress:I

    .line 75
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 76
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    and-int/lit8 p1, v12, 0x4

    if-eqz p1, :cond_1

    move p1, v8

    goto :goto_1

    :cond_1
    move p1, v9

    .line 79
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    and-int/lit8 p1, v12, 0x10

    if-eqz p1, :cond_2

    move p1, v8

    goto :goto_2

    :cond_2
    move p1, v9

    .line 80
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    iget p1, p0, Lcom/mittorn/virgloverlay/MainActivity;->centered:I

    if-eqz p1, :cond_3

    move p1, v8

    goto :goto_3

    :cond_3
    move p1, v9

    :goto_3
    invoke-virtual {v3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    iget p1, p0, Lcom/mittorn/virgloverlay/MainActivity;->restart_var:I

    if-eqz p1, :cond_4

    move p1, v8

    goto :goto_4

    :cond_4
    move p1, v9

    :goto_4
    invoke-virtual {v4, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    iget p1, p0, Lcom/mittorn/virgloverlay/MainActivity;->protocol_version:I

    if-eqz p1, :cond_5

    move p1, v8

    goto :goto_5

    :cond_5
    move p1, v9

    :goto_5
    invoke-virtual {v5, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    iget p1, p0, Lcom/mittorn/virgloverlay/MainActivity;->dxtn_decompress:I

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move v8, v9

    :goto_6
    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public writeStop(I)V
    .locals 3

    .line 108
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mittorn/virgloverlay/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
