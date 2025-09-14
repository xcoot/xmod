.class public final Lcom/android/server/chimera/genie/MemoryReclaimer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static executeQuickSwap(JLjava/util/ArrayList;)V
    .locals 2

    .line 1
    const-string v0, "MemoryReclaimer"

    .line 2
    .line 3
    const-string v1, "Executing QuickSwap"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-object p2, v0, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    iget-object p2, p2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

    .line 36
    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget-object v0, p2, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapHandler:Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    iget-object v0, p2, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    iget-boolean v1, p2, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    const-string p0, "QuickSwap"

    .line 53
    .line 54
    const-string p1, "QuickSwap is skipped because QuickSwap is already running."

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p2, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    .line 65
    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object p2, p2, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapHandler:Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

    .line 68
    .line 69
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p2, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p0

    .line 83
    :cond_5
    :goto_2
    return-void
.end method
