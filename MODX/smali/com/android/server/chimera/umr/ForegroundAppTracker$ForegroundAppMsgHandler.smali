.class public final Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    const-string p0, "ForegroundAppTracker"

    .line 3
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_1

    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    sget-boolean v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->IS_DEBUG_ENABLED:Z

    .line 14
    if-eqz v0, :cond_2

    .line 16
    const-string v0, "ForegroundAppMsgHandler: unhandled case"

    .line 18
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/umr/ForegroundAppTracker;->getForegroundMonitor()Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {v2}, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->setCameraLaunch(Z)V

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {}, Lcom/android/server/chimera/umr/ForegroundAppTracker;->getForegroundMonitor()Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->setAppLaunch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_1

    .line 43
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    const-string v2, "ForegroundAppMsgHandler: failed to handleMessage "

    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget p1, p1, Landroid/os/Message;->what:I

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :cond_2
    :goto_1
    return-void
.end method
