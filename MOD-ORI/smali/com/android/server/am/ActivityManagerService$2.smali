.class public final Lcom/android/server/am/ActivityManagerService$2;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityLaunchCancelled(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->isNowAppLaunching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-gez p1, :cond_1

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/app/ApplicationStartInfo;

    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v1, 0x1

    .line 58
    invoke-virtual {p2, v1}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    :goto_0
    return-void

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->isNowAppLaunching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 14
    .line 15
    iget-object p3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p3

    .line 18
    :try_start_0
    iget-boolean p4, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 19
    .line 20
    if-nez p4, :cond_0

    .line 21
    .line 22
    monitor-exit p3

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object p4, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-gez p1, :cond_1

    .line 37
    .line 38
    monitor-exit p3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/app/ApplicationStartInfo;

    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    monitor-exit p3

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p2, p6}, Landroid/app/ApplicationStartInfo;->setLaunchMode(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroid/app/Flags;->appStartInfoTimestamps()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    const/4 p1, 0x2

    .line 67
    invoke-virtual {p2, p1}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->checkCompletenessAndCallback(Landroid/app/ApplicationStartInfo;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    monitor-exit p3

    .line 74
    :goto_0
    return-void

    .line 75
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final onActivityLaunched(IIJLandroid/content/ComponentName;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->isNowAppLaunching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 34
    .line 35
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 36
    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 40
    .line 41
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p5

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-virtual {v3, p5, v4, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iget-object p5, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 63
    .line 64
    invoke-virtual {p5, p2, v2}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 65
    .line 66
    .line 67
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    move-object v6, p2

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :catch_0
    const/4 p2, 0x0

    .line 73
    goto :goto_0

    .line 74
    :goto_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 79
    .line 80
    int-to-long v4, p1

    .line 81
    move-wide v2, p3

    .line 82
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppStartInfoTracker;->onActivityLaunched(JJLcom/android/server/am/ProcessRecord;)V

    .line 83
    .line 84
    .line 85
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method public final onIntentFailed(J)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-gez p1, :cond_1

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/app/ApplicationStartInfo;

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x1

    .line 50
    invoke-virtual {p2, v1}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    :goto_0
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final onIntentStarted(Landroid/content/Intent;J)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/AppStartInfoTracker;->onIntentStarted(Landroid/content/Intent;J)V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final onReportFullyDrawn(JJ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-gez p1, :cond_1

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/app/ApplicationStartInfo;

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x5

    .line 50
    invoke-virtual {p2, v1, p3, p4}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    :goto_0
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method
