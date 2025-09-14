.class public final Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-boolean p0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    .line 2
    .line 3
    const-string v0, "ShutdownDelay"

    .line 4
    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v1, "recovery"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 19
    .line 20
    const-string/jumbo v1, "recovery-update"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "!@ShutdownThread.run() : checking timeout, done."

    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const-string p0, "!@ShutdownThread.run() : Checking timeout, done. Try force shutdown again."

    .line 37
    .line 38
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 46
    .line 47
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method
