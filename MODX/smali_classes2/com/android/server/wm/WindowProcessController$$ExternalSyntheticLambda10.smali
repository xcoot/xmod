.class public final synthetic Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    check-cast p4, Ljava/lang/String;

    .line 16
    .line 17
    check-cast p5, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26
    .line 27
    .line 28
    monitor-enter p3

    .line 29
    const/4 p5, 0x0

    .line 30
    :try_start_0
    iput-object p5, p1, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 31
    .line 32
    const/4 p5, 0x0

    .line 33
    iput-boolean p5, p1, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 51
    .line 52
    .line 53
    monitor-exit p2

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    throw p0

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 61
    .line 62
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 63
    .line 64
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 65
    .line 66
    invoke-virtual {p1, p4, v0, v1, p2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    const/4 p2, 0x1

    .line 70
    invoke-virtual {p1, p5, p2, p2}, Lcom/android/server/am/ProcessRecord;->updateProcessInfo(ZZZ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 77
    .line 78
    iput-boolean p2, p1, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 81
    .line 82
    .line 83
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_1
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    .line 91
    .line 92
    throw p0
.end method
