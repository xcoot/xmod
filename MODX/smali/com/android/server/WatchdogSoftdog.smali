.class public Lcom/android/server/WatchdogSoftdog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/WatchdogSoftdog;


# instance fields
.field public mSoftdogDisabled:Z

.field public mSoftdogTimeout:I


# virtual methods
.method public native native_sdogClose()V
.end method

.method public native native_sdogKick()V
.end method

.method public native native_sdogOpen()I
.end method

.method public native native_sdogSetTimeout(I)V
.end method

.method public final softdogKick(I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Watchdog:WatchdogSoftdog"

    .line 8
    const/16 v1, 0x3e8

    .line 10
    if-ne p1, v1, :cond_1

    .line 12
    const-string v1, "!@ softdog timeout is changed to "

    .line 14
    invoke-static {p1, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    iput p1, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/WatchdogSoftdog;->native_sdogSetTimeout(I)V

    .line 22
    return-void

    .line 23
    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    .line 25
    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/android/server/WatchdogSoftdog;->native_sdogKick()V

    .line 30
    return-void

    .line 31
    :cond_2
    const/4 p1, 0x0

    .line 32
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 34
    const-string v3, "/sys/class/power_supply/battery/temp"

    .line 36
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    const/16 v3, 0x400

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_3

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 58
    const-string v3, "FileUtils"

    .line 60
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_3
    :goto_0
    const/16 v2, 0x258

    .line 65
    const/16 v3, 0x64

    .line 67
    if-le p1, v2, :cond_4

    .line 69
    iget v2, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    .line 71
    if-ne v2, v3, :cond_4

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/server/WatchdogSoftdog;->native_sdogSetTimeout(I)V

    .line 76
    iput v1, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    .line 78
    const-string p0, "!@ set softdog timeout to 1000 by high temperature"

    .line 80
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/16 v2, 0x226

    .line 86
    if-ge p1, v2, :cond_5

    .line 88
    iget p1, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    .line 90
    if-ne p1, v1, :cond_5

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/server/WatchdogSoftdog;->native_sdogSetTimeout(I)V

    .line 95
    iput v3, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    .line 97
    const-string p0, "!@ set softdog timeout to 100"

    .line 99
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/WatchdogSoftdog;->native_sdogKick()V

    .line 106
    :goto_1
    return-void
.end method
