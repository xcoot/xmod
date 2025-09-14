.class public final Lcom/android/server/am/ActivityManagerService$LocalService;
.super Landroid/app/ActivityManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/ActivityManagerLocal;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/ActivityManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static validateSdkSandboxParams(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string/jumbo p1, "uid is not within application range"

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string/jumbo p1, "service must specify explicit component"

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string/jumbo p1, "processName is null"

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string/jumbo p1, "clientAppPackage is null"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string/jumbo p1, "intent is null"

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method


# virtual methods
.method public final addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final addBindServiceEventListener(Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBindServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final addBroadcastEventListener(Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final addPendingTopUid(IILandroid/app/IApplicationThread;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingStartActivityUids:Lcom/android/server/am/PendingStartActivityUids;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v4, Landroid/util/Pair;

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    move v0, v3

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_5

    .line 43
    :cond_0
    monitor-exit v0

    .line 44
    move v0, v2

    .line 45
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 52
    .line 53
    invoke-virtual {v1, p2, v3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeProcess(II)V

    .line 54
    .line 55
    .line 56
    :cond_1
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mNetworkPolicyUidObserver:Landroid/app/IUidObserver;

    .line 61
    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    :try_start_1
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 65
    .line 66
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 67
    .line 68
    iget-wide v0, p2, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 69
    .line 70
    const-wide/16 v4, 0x1

    .line 71
    .line 72
    add-long/2addr v0, v4

    .line 73
    iput-wide v0, p2, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 74
    .line 75
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 76
    .line 77
    iget-object v6, p2, Lcom/android/server/am/ActivityManagerService;->mNetworkPolicyUidObserver:Landroid/app/IUidObserver;

    .line 78
    .line 79
    const/4 v8, 0x2

    .line 80
    const/16 v11, 0x7f

    .line 81
    .line 82
    move v7, p1

    .line 83
    move-wide v9, v0

    .line 84
    invoke-interface/range {v6 .. v11}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    .line 85
    .line 86
    .line 87
    if-eqz p3, :cond_3

    .line 88
    .line 89
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 90
    .line 91
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mUidNetworkBlockedReasons:Landroid/util/SparseIntArray;

    .line 92
    .line 93
    monitor-enter p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidNetworkBlockedReasons:Landroid/util/SparseIntArray;

    .line 97
    .line 98
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_2

    .line 103
    .line 104
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->updateBlockedReasonsWithProcState(I)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-nez p0, :cond_2

    .line 109
    .line 110
    move v2, v3

    .line 111
    goto :goto_1

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    :try_start_3
    invoke-interface {p3, v0, v1}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :catch_0
    move-exception p0

    .line 122
    goto :goto_3

    .line 123
    :goto_2
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 124
    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 125
    :goto_3
    const-string p1, "ActivityManager"

    .line 126
    .line 127
    const-string p2, "Error calling setNetworkBlockSeq"

    .line 128
    .line 129
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_4
    return-void

    .line 133
    :goto_5
    monitor-exit v0

    .line 134
    throw p0
.end method

.method public final addStartInfoTimestamp(IJIII)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v9, p6

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-eq v9, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, -0x2

    .line 8
    if-eq v9, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 13
    .line 14
    const-string v7, "addStartInfoTimestampSystem"

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x0

    .line 19
    move v2, p5

    .line 20
    move v3, p4

    .line 21
    move/from16 v4, p6

    .line 22
    .line 23
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    move v1, p1

    .line 29
    move/from16 v2, p6

    .line 30
    .line 31
    move v3, p4

    .line 32
    move-wide v4, p2

    .line 33
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->addStartInfoTimestampInternal(IIIJ)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string v1, "Unsupported userId"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final appNotResponding(Ljava/lang/String;ILcom/android/internal/os/TimeoutRecord;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    sget v0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "Unknown process: "

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 21
    .line 22
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    const-string p2, "ActivityManager"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    .line 47
    .line 48
    .line 49
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final applyForegroundServiceNotification(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 10
    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move v4, p3

    .line 14
    move-object v5, p4

    .line 15
    move v6, p5

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->applyForegroundServiceNotificationLocked(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final bindSdkSandboxService(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    .line 1
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService$LocalService;->bindSdkSandboxServiceInternal(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public final bindSdkSandboxService(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context$BindServiceFlags;)Z
    .locals 9

    .line 3
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 4
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService$LocalService;->bindSdkSandboxServiceInternal(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public final bindSdkSandboxService(Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 5
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService$LocalService;->bindSdkSandboxService(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final bindSdkSandboxServiceInternal(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v11, p3

    .line 8
    .line 9
    move-object/from16 v3, p4

    .line 10
    .line 11
    move-object/from16 v12, p5

    .line 12
    .line 13
    move-object/from16 v9, p6

    .line 14
    .line 15
    invoke-static {v0, v11, v12, v9}, Lcom/android/server/am/ActivityManagerService$LocalService;->validateSdkSandboxParams(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 21
    .line 22
    invoke-virtual {v4, v11, v12}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_5

    .line 27
    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 31
    .line 32
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 44
    .line 45
    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    const-string v0, "ActivityManager"

    .line 52
    .line 53
    const-string/jumbo v2, "clientApplicationThread process not found."

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return v16

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 66
    .line 67
    if-ne v5, v11, :cond_1

    .line 68
    .line 69
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 70
    .line 71
    monitor-exit p0

    .line 72
    :goto_0
    move-object v13, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string/jumbo v2, "clientApplicationThread does not match  client uid"

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw v0

    .line 85
    :cond_2
    const/4 v3, 0x0

    .line 86
    goto :goto_0

    .line 87
    :goto_2
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 88
    .line 89
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    move-wide/from16 v7, p7

    .line 92
    .line 93
    invoke-virtual {v3, v2, v4, v7, v8}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 105
    .line 106
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 113
    .line 114
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 121
    .line 122
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    const/4 v10, 0x1

    .line 145
    move-object v1, v2

    .line 146
    move-object v2, v3

    .line 147
    move-object v3, v4

    .line 148
    move-object/from16 v4, p1

    .line 149
    .line 150
    move-wide/from16 v7, p7

    .line 151
    .line 152
    move-object/from16 v9, p6

    .line 153
    .line 154
    move/from16 v11, p3

    .line 155
    .line 156
    move-object/from16 v12, p5

    .line 157
    .line 158
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ActivityManagerService;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;ZILjava/lang/String;Landroid/app/IApplicationThread;Ljava/lang/String;I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_3

    .line 163
    .line 164
    const/16 v16, 0x1

    .line 165
    .line 166
    :cond_3
    return v16

    .line 167
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 168
    .line 169
    const-string/jumbo v1, "connection is null"

    .line 170
    .line 171
    .line 172
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    const-string/jumbo v1, "uid does not belong to provided package"

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0
.end method

.method public final broadcastCloseSystemDialogs(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    .line 3
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 4
    const-string/jumbo v1, "reason"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    new-instance v1, Landroid/app/BroadcastOptions;

    invoke-direct {v1}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v1, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v3, 0x2

    .line 7
    invoke-virtual {v1, v3}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 8
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3, p1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 10
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 12
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;ZIIII)I

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final broadcastCloseSystemDialogs(Ljava/lang/String;I)V
    .locals 11

    .line 14
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 15
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    .line 16
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 17
    const-string/jumbo v1, "reason"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 18
    const-string/jumbo p1, "displayId"

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 21
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;ZIIII)I

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final broadcastGlobalConfigurationChanged(IZ)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    .line 14
    .line 15
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/high16 v3, 0x70200000

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    new-instance v3, Landroid/app/BroadcastOptions;

    .line 24
    .line 25
    invoke-direct {v3}, Landroid/app/BroadcastOptions;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v13, 0x1

    .line 29
    invoke-virtual {v3, v13}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v14, 0x2

    .line 34
    invoke-virtual {v3, v14}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 43
    .line 44
    sget v25, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v12, -0x1

    .line 57
    const/4 v5, 0x0

    .line 58
    move/from16 v9, v25

    .line 59
    .line 60
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;ZIIII)I

    .line 61
    .line 62
    .line 63
    and-int/lit8 v3, v1, 0x4

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    new-instance v3, Landroid/content/Intent;

    .line 68
    .line 69
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    .line 70
    .line 71
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const v4, 0x1200800

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    if-nez p2, :cond_0

    .line 81
    .line 82
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 83
    .line 84
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    .line 85
    .line 86
    if-nez v4, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 101
    .line 102
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    const-string v10, ""

    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    const/16 v9, 0xce

    .line 112
    .line 113
    move-object v5, v4

    .line 114
    invoke-virtual/range {v5 .. v10}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v13}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v14}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 121
    .line 122
    .line 123
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object v19

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 130
    .line 131
    .line 132
    move-result v22

    .line 133
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 134
    .line 135
    .line 136
    move-result v23

    .line 137
    const/16 v18, 0x0

    .line 138
    .line 139
    const/16 v20, 0x0

    .line 140
    .line 141
    const/16 v24, -0x1

    .line 142
    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    move-object/from16 v16, v3

    .line 146
    .line 147
    move/from16 v21, v25

    .line 148
    .line 149
    invoke-virtual/range {v15 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;ZIIII)I

    .line 150
    .line 151
    .line 152
    :cond_2
    if-nez p2, :cond_3

    .line 153
    .line 154
    and-int/lit16 v1, v1, 0x1004

    .line 155
    .line 156
    if-eqz v1, :cond_3

    .line 157
    .line 158
    new-instance v1, Landroid/content/Intent;

    .line 159
    .line 160
    const-string v3, "android.intent.action.SPLIT_CONFIGURATION_CHANGED"

    .line 161
    .line 162
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/high16 v3, 0x21000000

    .line 166
    .line 167
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    const-string v3, "android.permission.INSTALL_PACKAGES"

    .line 171
    .line 172
    filled-new-array {v3}, [Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v18

    .line 176
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 177
    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 179
    .line 180
    .line 181
    move-result v22

    .line 182
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 183
    .line 184
    .line 185
    move-result v23

    .line 186
    const/16 v19, 0x0

    .line 187
    .line 188
    const/16 v20, 0x0

    .line 189
    .line 190
    const/16 v24, -0x1

    .line 191
    .line 192
    const/16 v17, 0x0

    .line 193
    .line 194
    move-object/from16 v16, v1

    .line 195
    .line 196
    move/from16 v21, v25

    .line 197
    .line 198
    invoke-virtual/range {v15 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;ZIIII)I

    .line 199
    .line 200
    .line 201
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 208
    .line 209
    .line 210
    throw v0
.end method

.method public final broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    move-object/from16 v7, p1

    .line 12
    .line 13
    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityManagerService;->verifyBroadcastLocked(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 17
    .line 18
    .line 19
    move-result v24

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v23

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 29
    .line 30
    sget-object v26, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 31
    .line 32
    const/16 v17, -0x1

    .line 33
    .line 34
    const/16 v20, 0x0

    .line 35
    .line 36
    const/16 v29, 0x0

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v12, 0x0

    .line 45
    const/4 v13, 0x0

    .line 46
    const/4 v15, 0x0

    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    move-object/from16 v7, p1

    .line 50
    .line 51
    move-object/from16 v10, p2

    .line 52
    .line 53
    move-object/from16 v14, p3

    .line 54
    .line 55
    move-object/from16 v18, p8

    .line 56
    .line 57
    move/from16 v19, p4

    .line 58
    .line 59
    move/from16 v21, v24

    .line 60
    .line 61
    move/from16 v22, v23

    .line 62
    .line 63
    move/from16 v25, p5

    .line 64
    .line 65
    move-object/from16 v27, p6

    .line 66
    .line 67
    move-object/from16 v28, p7

    .line 68
    .line 69
    invoke-virtual/range {v3 .. v29}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;Z)I

    .line 70
    .line 71
    .line 72
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :try_start_2
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    return v0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_0

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    :try_start_3
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    .line 91
    .line 92
    throw v0
.end method

.method public final broadcastIntentInPackage(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;[I)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    move-object/from16 v3, p9

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    .line 14
    .line 15
    .line 16
    move-result-object v12

    .line 17
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 18
    .line 19
    move-object/from16 v4, p1

    .line 20
    .line 21
    move-object/from16 v5, p2

    .line 22
    .line 23
    move-object/from16 v6, p3

    .line 24
    .line 25
    move/from16 v7, p4

    .line 26
    .line 27
    move/from16 v8, p5

    .line 28
    .line 29
    move/from16 v9, p6

    .line 30
    .line 31
    move-object/from16 v10, p7

    .line 32
    .line 33
    move-object/from16 v11, p8

    .line 34
    .line 35
    move-object/from16 v13, p10

    .line 36
    .line 37
    move/from16 v14, p11

    .line 38
    .line 39
    move-object/from16 v15, p12

    .line 40
    .line 41
    move-object/from16 v16, p13

    .line 42
    .line 43
    move-object/from16 v17, p14

    .line 44
    .line 45
    move-object/from16 v18, p15

    .line 46
    .line 47
    move/from16 v19, p16

    .line 48
    .line 49
    move/from16 v20, p17

    .line 50
    .line 51
    move/from16 v21, p18

    .line 52
    .line 53
    move-object/from16 v22, p19

    .line 54
    .line 55
    move-object/from16 v23, p20

    .line 56
    .line 57
    invoke-virtual/range {v3 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;[I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    return v0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method public final broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I
    .locals 9

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v5, p4

    .line 7
    move-object v6, p5

    .line 8
    move-object v7, p6

    .line 9
    move-object/from16 v8, p7

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService$LocalService;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final canAllowWhileInUsePermissionInFgs(IILjava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v6, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v2, p3

    .line 18
    move v3, p1

    .line 19
    move v4, p2

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/4 p1, -0x1

    .line 25
    if-eq p0, p1, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final canScheduleUserInitiatedJobs(IILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->canScheduleUserInitiatedJobs(IILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final canStartForegroundService(IILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->canStartForegroundServiceLocked(IILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final canStartMoreUsers()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget p0, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 17
    .line 18
    if-ge v1, p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final cancelDisablePolicy(Ljava/lang/String;II)Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final cancelKillProcessWhenDexExit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    throw v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    .line 4
    .line 5
    const-string p0, "Failed to find PID "

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    iget-object p2, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 15
    .line 16
    const-string v2, "ContentProviderHelper"

    .line 17
    .line 18
    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 38
    .line 39
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_0
    move v4, p2

    .line 57
    move v5, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-wide/32 v1, 0xc0e00

    .line 66
    .line 67
    .line 68
    invoke-interface {p2, p1, v1, v2, v4}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_2
    move-object v1, p2

    .line 73
    goto :goto_3

    .line 74
    :catch_0
    const/4 p2, 0x0

    .line 75
    goto :goto_2

    .line 76
    :goto_3
    if-nez v1, :cond_2

    .line 77
    .line 78
    const-string p0, "Failed to find provider "

    .line 79
    .line 80
    const-string p2, " for user "

    .line 81
    .line 82
    const-string v0, "; expected to find a valid ContentProvider for this authority"

    .line 83
    .line 84
    invoke-static {v4, p0, p1, p2, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    goto :goto_4

    .line 89
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    iget-object p1, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 96
    .line 97
    monitor-enter p1

    .line 98
    :try_start_1
    iget-object p2, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 99
    .line 100
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 101
    .line 102
    invoke-virtual {p2, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-nez p2, :cond_3

    .line 107
    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    monitor-exit p1

    .line 121
    goto :goto_4

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto :goto_5

    .line 124
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    :goto_4
    return-object p0

    .line 138
    :goto_5
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    throw p0
.end method

.method public final checkContentProviderUriPermission(Landroid/net/Uri;III)I
    .locals 24

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move/from16 v12, p2

    .line 4
    .line 5
    move/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v2, p0

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    iget-object v13, v2, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    .line 12
    .line 13
    const-string v14, "Content provider dead retrieving "

    .line 14
    .line 15
    const-string v15, "Exception while determining type of "

    .line 16
    .line 17
    iget-object v11, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 18
    .line 19
    iget-object v2, v11, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-string v10, "ContentProviderHelper"

    .line 28
    .line 29
    const/16 v16, -0x1

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "Unable to check Uri permission because caller is holding WM lock; assuming permission denied"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 50
    .line 51
    .line 52
    move-result-wide v17

    .line 53
    const/4 v8, 0x0

    .line 54
    :try_start_0
    const-string v19, "*checkContentProviderUriPermission*"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    const/16 v20, -0x1

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/16 v21, 0x1

    .line 62
    .line 63
    move-object v2, v13

    .line 64
    move-object v4, v9

    .line 65
    move/from16 v6, p3

    .line 66
    .line 67
    move-object/from16 v8, v19

    .line 68
    .line 69
    move-object/from16 v22, v9

    .line 70
    .line 71
    move/from16 v9, v21

    .line 72
    .line 73
    move-object/from16 v23, v10

    .line 74
    .line 75
    move/from16 v10, p2

    .line 76
    .line 77
    move-object/from16 v19, v11

    .line 78
    .line 79
    move/from16 v11, v20

    .line 80
    .line 81
    :try_start_1
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZII)Landroid/app/ContentProviderHolder;

    .line 82
    .line 83
    .line 84
    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 85
    if-eqz v8, :cond_3

    .line 86
    .line 87
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 96
    .line 97
    .line 98
    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 99
    if-nez v2, :cond_2

    .line 100
    .line 101
    move-object/from16 v3, v22

    .line 102
    .line 103
    const/4 v4, 0x0

    .line 104
    :try_start_3
    invoke-virtual {v13, v12, v4, v3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    .line 106
    .line 107
    :cond_1
    :goto_0
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :catchall_0
    move-exception v0

    .line 113
    move-object v1, v0

    .line 114
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    .line 116
    .line 117
    throw v1

    .line 118
    :cond_2
    move-object/from16 v3, v22

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    :try_start_4
    new-instance v5, Landroid/content/AttributionSource;

    .line 122
    .line 123
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-direct {v5, v0, v2, v4}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v8, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 131
    .line 132
    move/from16 v6, p4

    .line 133
    .line 134
    invoke-interface {v2, v5, v1, v0, v6}, Landroid/content/IContentProvider;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    .line 135
    .line 136
    .line 137
    move-result v16
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 138
    :try_start_5
    invoke-virtual {v13, v12, v4, v3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    move-object v1, v0

    .line 144
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    .line 146
    .line 147
    throw v1

    .line 148
    :catchall_2
    move-exception v0

    .line 149
    goto/16 :goto_5

    .line 150
    .line 151
    :catch_0
    move-exception v0

    .line 152
    goto :goto_2

    .line 153
    :catch_1
    move-exception v0

    .line 154
    :goto_1
    move-object/from16 v2, v23

    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :catchall_3
    move-exception v0

    .line 159
    move-object/from16 v3, v22

    .line 160
    .line 161
    const/4 v4, 0x0

    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :catch_2
    move-exception v0

    .line 165
    move-object/from16 v3, v22

    .line 166
    .line 167
    const/4 v4, 0x0

    .line 168
    goto :goto_2

    .line 169
    :catch_3
    move-exception v0

    .line 170
    move-object/from16 v3, v22

    .line 171
    .line 172
    const/4 v4, 0x0

    .line 173
    goto :goto_1

    .line 174
    :cond_3
    move-object/from16 v3, v22

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    if-eqz v8, :cond_1

    .line 178
    .line 179
    :try_start_6
    invoke-virtual {v13, v12, v4, v3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :catchall_4
    move-exception v0

    .line 184
    move-object v1, v0

    .line 185
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    .line 187
    .line 188
    throw v1

    .line 189
    :catchall_5
    move-exception v0

    .line 190
    move-object/from16 v3, v22

    .line 191
    .line 192
    const/4 v4, 0x0

    .line 193
    move-object v8, v4

    .line 194
    goto :goto_5

    .line 195
    :catch_4
    move-exception v0

    .line 196
    move-object/from16 v3, v22

    .line 197
    .line 198
    const/4 v4, 0x0

    .line 199
    move-object v8, v4

    .line 200
    goto :goto_2

    .line 201
    :catch_5
    move-exception v0

    .line 202
    move-object/from16 v3, v22

    .line 203
    .line 204
    const/4 v4, 0x0

    .line 205
    move-object v8, v4

    .line 206
    goto :goto_1

    .line 207
    :catchall_6
    move-exception v0

    .line 208
    move-object v4, v8

    .line 209
    move-object v3, v9

    .line 210
    goto :goto_5

    .line 211
    :catch_6
    move-exception v0

    .line 212
    move-object v4, v8

    .line 213
    move-object v3, v9

    .line 214
    move-object/from16 v23, v10

    .line 215
    .line 216
    :goto_2
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    move-object/from16 v2, v23

    .line 229
    .line 230
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 231
    .line 232
    .line 233
    if-eqz v8, :cond_1

    .line 234
    .line 235
    :try_start_8
    invoke-virtual {v13, v12, v4, v3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 236
    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :catchall_7
    move-exception v0

    .line 241
    move-object v1, v0

    .line 242
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 243
    .line 244
    .line 245
    throw v1

    .line 246
    :catch_7
    move-exception v0

    .line 247
    move-object v4, v8

    .line 248
    move-object v3, v9

    .line 249
    move-object v2, v10

    .line 250
    :goto_3
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 263
    .line 264
    .line 265
    if-eqz v8, :cond_1

    .line 266
    .line 267
    :try_start_a
    invoke-virtual {v13, v12, v4, v3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :catchall_8
    move-exception v0

    .line 273
    move-object v1, v0

    .line 274
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    .line 276
    .line 277
    throw v1

    .line 278
    :goto_4
    return v16

    .line 279
    :goto_5
    if-eqz v8, :cond_4

    .line 280
    .line 281
    :try_start_b
    invoke-virtual {v13, v12, v4, v3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :catchall_9
    move-exception v0

    .line 286
    move-object v1, v0

    .line 287
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    .line 289
    .line 290
    throw v1

    .line 291
    :cond_4
    :goto_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    .line 293
    .line 294
    throw v0
.end method

.method public final cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final clearApplicationUserData(Ljava/lang/String;ZZLandroid/content/pm/IPackageDataObserver;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    sget p0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->clearApplicationUserData(Ljava/lang/String;ZZLandroid/content/pm/IPackageDataObserver;I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final clearPendingBackup(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    sget v0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ltz p1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/am/BackupRecord;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    .line 51
    .line 52
    const-class p0, Lcom/android/server/job/JobSchedulerInternal;

    .line 53
    .line 54
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/android/server/job/JobSchedulerInternal;

    .line 59
    .line 60
    invoke-interface {p0}, Lcom/android/server/job/JobSchedulerInternal;->clearAllBackingUpUids()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public final clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "ActivityManager"

    .line 6
    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v0, "clearPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 29
    .line 30
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p1, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 51
    .line 52
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget p2, p1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    .line 68
    .line 69
    if-nez p2, :cond_2

    .line 70
    .line 71
    const/4 p2, 0x1

    .line 72
    iput p2, p1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    .line 73
    .line 74
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 82
    .line 83
    .line 84
    throw p1
.end method

.method public final deletePendingTopUid(IJ)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingStartActivityUids:Lcom/android/server/am/PendingStartActivityUids;

    .line 4
    .line 5
    const-string v0, "PendingStartActivityUids startActivity to updateOomAdj delay:"

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/util/Pair;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    cmp-long p2, p2, v2

    .line 27
    .line 28
    if-gez p2, :cond_0

    .line 29
    .line 30
    const-string p1, "ActivityManager"

    .line 31
    .line 32
    const-string/jumbo p2, "updateOomAdj start time is before than pendingPid added, don\'t delete it"

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide p2

    .line 46
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    sub-long/2addr p2, v1

    .line 55
    const-wide/16 v1, 0x3e8

    .line 56
    .line 57
    cmp-long v1, p2, v1

    .line 58
    .line 59
    if-ltz v1, :cond_1

    .line 60
    .line 61
    const-string v1, "ActivityManager"

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string/jumbo p2, "ms, uid:"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    :cond_2
    monitor-exit p0

    .line 93
    :goto_0
    return-void

    .line 94
    :goto_1
    monitor-exit p0

    .line 95
    throw p1
.end method

.method public final disconnectActivityFromServices(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v2, p1, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 20
    :try_start_2
    iget-object v3, p1, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    .line 32
    .line 33
    iget-object v4, p1, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/lit8 v2, v2, -0x1

    .line 44
    .line 45
    :goto_0
    if-ltz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 52
    .line 53
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 54
    .line 55
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    invoke-virtual {v5, v4, v6, p1, v7}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    :cond_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 69
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 70
    .line 71
    .line 72
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 73
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    goto :goto_4

    .line 79
    :catchall_2
    move-exception p0

    .line 80
    goto :goto_3

    .line 81
    :goto_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 82
    :try_start_8
    throw p0

    .line 83
    :goto_3
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 84
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :goto_4
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 89
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public final enforceBroadcastOptionsPermissions(Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->enforceBroadcastOptionPermissionsInternal(ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final ensureBootCompleted()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final ensureNotSpecialUser(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Call does not support special user #"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final finishBooting()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final finishUserSwitch(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/am/UserState;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    if-ge p2, p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 14
    .line 15
    const v0, 0x186a0

    .line 16
    .line 17
    .line 18
    if-ge p0, v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance p0, Landroid/content/pm/ActivityInfo;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 38
    .line 39
    .line 40
    move-object p1, v0

    .line 41
    :goto_0
    iput-object p1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    .line 43
    move-object p1, p0

    .line 44
    :cond_2
    :goto_1
    return-object p1
.end method

.method public final getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/pm/ActivityPresentationInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p1, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v1, v2, v0, p0}, Landroid/content/pm/ActivityPresentationInfo;-><init>(IILandroid/content/ComponentName;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public final getAppProfileStatsForDebugging(JI)Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 p1, 0x0

    .line 25
    move p2, p1

    .line 26
    move v0, p2

    .line 27
    :goto_0
    if-gt p2, p3, :cond_1

    .line 28
    .line 29
    const/16 v2, 0xa

    .line 30
    .line 31
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, -0x1

    .line 36
    if-ne v0, v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    add-int/lit8 p2, p2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    new-instance p2, Landroid/util/Pair;

    .line 49
    .line 50
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {p2, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object p2

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method

.method public final getBackgroundStartPrivileges(I)Landroid/app/BackgroundStartPrivileges;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    sget v0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getBackgroundStartPrivileges(I)Landroid/app/BackgroundStartPrivileges;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getBootTimeTempAllowListDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    .line 6
    .line 7
    return-wide v0
.end method

.method public final getCachedAppsHighWatermarkStats(IZ)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    .line 17
    .line 18
    iget v4, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mUptimeInSeconds:I

    .line 19
    .line 20
    iget v5, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    .line 21
    .line 22
    iget v6, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mFreeInKb:I

    .line 23
    .line 24
    iget v7, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedInKb:I

    .line 25
    .line 26
    iget v8, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mZramInKb:I

    .line 27
    .line 28
    iget v9, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mKernelInKb:I

    .line 29
    .line 30
    iget v10, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    .line 31
    .line 32
    iget v11, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLongestFrozenTimeInSeconds:I

    .line 33
    .line 34
    iget v12, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mShortestFrozenTimeInSeconds:I

    .line 35
    .line 36
    iget v13, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mMeanFrozenTimeInSeconds:I

    .line 37
    .line 38
    iget v14, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mAverageFrozenTimeInSeconds:I

    .line 39
    .line 40
    move/from16 v2, p1

    .line 41
    .line 42
    invoke-static/range {v2 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIII)Landroid/util/StatsEvent;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    .line 50
    .line 51
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mUptimeInSeconds:I

    .line 52
    .line 53
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    .line 54
    .line 55
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mFreeInKb:I

    .line 56
    .line 57
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedInKb:I

    .line 58
    .line 59
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mZramInKb:I

    .line 60
    .line 61
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mKernelInKb:I

    .line 62
    .line 63
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    .line 64
    .line 65
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLongestFrozenTimeInSeconds:I

    .line 66
    .line 67
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mShortestFrozenTimeInSeconds:I

    .line 68
    .line 69
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mMeanFrozenTimeInSeconds:I

    .line 70
    .line 71
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mAverageFrozenTimeInSeconds:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public final getClientPackages(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->getClientPackagesLocked(Ljava/lang/String;)Landroid/util/ArraySet;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final getCurrentAndTargetUserIds()Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget p0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final getCurrentProfileIds()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getCurrentUserId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getInstrumentationSourceUid(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/am/ActiveInstrumentation;

    .line 30
    .line 31
    iget-boolean v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 40
    .line 41
    if-ne v3, p1, :cond_0

    .line 42
    .line 43
    iget p0, v2, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    .line 44
    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 47
    .line 48
    .line 49
    return p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 57
    .line 58
    .line 59
    const/4 p0, -0x1

    .line 60
    return p0

    .line 61
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getIsDataClearedInAms(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getIsolatedProcesses(I)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v1, :cond_2

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 28
    .line 29
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 32
    .line 33
    if-ne v5, p1, :cond_1

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 43
    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public final getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getMaxRunningUsers()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget p0, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getMemoryStateForProcesses()Ljava/util/List;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_0

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    new-instance v13, Landroid/app/ProcessMemoryState;

    .line 35
    .line 36
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 37
    .line 38
    iget v7, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 39
    .line 40
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 43
    .line 44
    iget v9, v5, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 45
    .line 46
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 47
    .line 48
    iget-boolean v10, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 49
    .line 50
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 51
    .line 52
    iget-object v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    move-object v5, v13

    .line 67
    invoke-direct/range {v5 .. v12}, Landroid/app/ProcessMemoryState;-><init>(IILjava/lang/String;IZII)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    monitor-exit v1

    .line 79
    return-object v0

    .line 80
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final getPackageNameByPid(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 8

    const/4 v0, 0x1

    .line 1
    new-array v3, v0, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v1, p0

    move v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService$LocalService;->getPendingIntentActivityAsApp(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final getPendingIntentActivityAsApp(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 13

    move-object v0, p0

    move-object v11, p2

    const/high16 v1, 0x4000000

    and-int v1, p3, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/high16 v4, 0x2000000

    and-int v4, p3, v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eq v1, v3, :cond_4

    .line 2
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4
    array-length v4, v11

    .line 5
    new-array v12, v4, [Ljava/lang/String;

    :goto_2
    if-ge v2, v4, :cond_2

    .line 6
    aget-object v5, v11, v2

    .line 7
    invoke-virtual {v5, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v2

    .line 8
    invoke-virtual {v5, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 9
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x0

    move v2, p1

    move/from16 v3, p3

    move/from16 v5, p6

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object v11, p2

    .line 13
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderWithFeatureAsApp(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v1, Landroid/app/PendingIntent;

    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    return-object v1

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set exactly one of FLAG_IMMUTABLE or FLAG_MUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPendingIntentFlags(Landroid/content/IIntentSender;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p0, "ActivityManager"

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v1, "markAsSentFromNotification(): not a PendingIntentRecord: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 40
    .line 41
    iget p1, p1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    move p0, p1

    .line 45
    :goto_0
    return p0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
.end method

.method public final getPendingIntentStats()Ljava/util/List;
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-lez v2, :cond_4

    .line 23
    .line 24
    new-instance v2, Landroid/util/SparseIntArray;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Landroid/util/SparseIntArray;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 70
    .line 71
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 72
    .line 73
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/4 v6, 0x1

    .line 78
    if-gez v5, :cond_2

    .line 79
    .line 80
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 81
    .line 82
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    .line 84
    .line 85
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 86
    .line 87
    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 88
    .line 89
    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/content/Intent;->getExtrasTotalSize()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget v7, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 102
    .line 103
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    add-int/2addr v8, v6

    .line 108
    invoke-virtual {v2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    .line 110
    .line 111
    iget v6, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 112
    .line 113
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 118
    .line 119
    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/content/Intent;->getExtrasTotalSize()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    add-int/2addr v5, v4

    .line 126
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    const/4 v4, 0x0

    .line 135
    :goto_1
    if-ge v4, p0, :cond_4

    .line 136
    .line 137
    new-instance v5, Landroid/app/PendingIntentStats;

    .line 138
    .line 139
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    div-int/lit16 v8, v8, 0x400

    .line 152
    .line 153
    invoke-direct {v5, v6, v7, v8}, Landroid/app/PendingIntentStats;-><init>(III)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    monitor-exit v1

    .line 163
    return-object v0

    .line 164
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    throw p0
.end method

.method public final getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 16
    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz v2, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 36
    .line 37
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 38
    .line 39
    if-ne v4, p1, :cond_2

    .line 40
    .line 41
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    .line 42
    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string p1, "Pending process is not started yet,retry later"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final getPushMessagingOverQuotaBehavior()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final getRestrictionLevel(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 2
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result p0

    return p0
.end method

.method public final getRestrictionLevel(Ljava/lang/String;I)I
    .locals 3

    .line 4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 6
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 7
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0xc8000

    .line 8
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getServiceStartForegroundTimeout()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    .line 6
    .line 7
    return p0
.end method

.method public final getStartedUserIds()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getStorageMountMode(II)I
    .locals 1

    .line 1
    const/16 v0, 0x7d0

    .line 2
    .line 3
    if-eq p2, v0, :cond_2

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 11
    .line 12
    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    .line 26
    .line 27
    :goto_0
    monitor-exit p2

    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0

    .line 32
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method public final getTaskIdForActivity(Landroid/os/IBinder;Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getUidCapability(I)I
    .locals 3

    .line 1
    const-string/jumbo v0, "uid record for "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 7
    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 23
    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " not found"

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final getUidProcessState(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move-object v6, p6

    .line 11
    move-object v7, p7

    .line 12
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final hasForegroundServiceNotification(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 10
    .line 11
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ActiveServices;->hasForegroundServiceNotificationLocked(ILjava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mhasBooleanMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final hasRunningActivity(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v2, p1, p2}, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(Ljava/util/function/Function;Z)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    move v0, p1

    .line 30
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 32
    .line 33
    .line 34
    return v0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final hasRunningForegroundService(II)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 p1, 0x0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    sub-int/2addr v1, v2

    .line 35
    :goto_0
    if-ltz v1, :cond_3

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 46
    .line 47
    iget-boolean v4, v3, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    iget v3, v3, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v3, p1

    .line 55
    :goto_1
    and-int/2addr v3, p2

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 60
    .line 61
    .line 62
    return v2

    .line 63
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    .line 69
    .line 70
    return p1

    .line 71
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final hasStartedUserState(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final inputDispatchingResumed(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 24
    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move p0, v2

    .line 49
    :goto_0
    const/4 v3, 0x0

    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 53
    .line 54
    .line 55
    iput-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 56
    .line 57
    iget-object p0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 66
    .line 67
    iput-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 68
    .line 69
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_2
    :goto_3
    return-void

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    throw p0
.end method

.method public final inputDispatchingTimedOut(IZLcom/android/internal/os/TimeoutRecord;)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    const-string p0, "android.permission.FILTER_EVENTS"

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    .line 4
    iget-object p0, p3, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnPidLockStarted()V

    .line 5
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p3, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnPidLockEnded()V

    .line 7
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 9
    iget-object p0, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeoutMillis()J

    move-result-wide p0

    goto :goto_0

    .line 10
    :cond_0
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long p0, p0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move-object v7, p3

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/16 p0, 0x0

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires permission android.permission.FILTER_EVENTS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLcom/android/internal/os/TimeoutRecord;)Z
    .locals 8

    .line 14
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object v5, p5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;)Z

    move-result p0

    return p0
.end method

.method public final isActivityStartsLoggingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    .line 6
    .line 7
    return p0
.end method

.method public final isAppBad(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isAppForeground(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 p1, 0x0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    if-gt p0, v1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 40
    .line 41
    .line 42
    :goto_1
    return p1

    .line 43
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final isAppStartModeDisabled(ILjava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    move v1, p1

    .line 15
    move-object v4, p2

    .line 16
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLOSP(IIILjava/lang/String;ZZZ)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p2, 0x3

    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final isAssociatedCompanionApp(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/Set;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isAutoRunBlockedApp(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final isBackgroundActivityStartsEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    .line 6
    .line 7
    return p0
.end method

.method public final isBgAutoRestrictedBucketFeatureFlagEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 8
    .line 9
    return p0
.end method

.method public final isBooted()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isBooting()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isCurrentProfile(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final isDeviceOwner(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/am/ActivityManagerService;->mDeviceOwnerUid:I

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isPendingTopUid(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingStartActivityUids:Lcom/android/server/am/PendingStartActivityUids;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    monitor-exit p0

    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public final isProfileOwner(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProfileOwnerUids:Landroid/util/ArraySet;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-ltz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    return p0

    .line 33
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z
    .locals 13

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v11, 0x0

    .line 11
    const/4 v12, 0x0

    .line 12
    move-object v2, p1

    .line 13
    move-object v3, p2

    .line 14
    move/from16 v4, p3

    .line 15
    .line 16
    move-object/from16 v5, p4

    .line 17
    .line 18
    move-object/from16 v6, p5

    .line 19
    .line 20
    move/from16 v7, p6

    .line 21
    .line 22
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final isRuntimeRestarted()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 6
    .line 7
    return p0
.end method

.method public final isSystemReady()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isTempAllowlistedForFgsWhileInUse(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mFgsWhileInUseTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/FgsTempAllowList;->get(I)Landroid/util/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isUidActive(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLOSP(I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final isUserRunning(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final killAllBackgroundProcessesExcept(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->killAllBackgroundProcessesExcept(II)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt;->killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final killApplicationSync(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    if-nez v1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-gez p2, :cond_1

    .line 7
    .line 8
    const-string v0, "ActivityManager"

    .line 9
    .line 10
    const-string v2, "Invalid appid specified for pkg : "

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 23
    .line 24
    .line 25
    monitor-enter v12

    .line 26
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    move-object v1, p1

    .line 35
    move v2, p2

    .line 36
    move/from16 v9, p3

    .line 37
    .line 38
    move-object/from16 v10, p4

    .line 39
    .line 40
    move/from16 v11, p5

    .line 41
    .line 42
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public final killForegroundAppsForUser(I)V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    if-ge v4, v2, :cond_4

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 33
    .line 34
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 35
    .line 36
    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    move v7, v3

    .line 53
    :goto_1
    if-ge v7, v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 60
    .line 61
    iget-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_0
    iget-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 67
    .line 68
    if-nez v9, :cond_1

    .line 69
    .line 70
    iget v9, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 71
    .line 72
    if-ne v9, p1, :cond_2

    .line 73
    .line 74
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 75
    .line 76
    iget-boolean v9, v9, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 77
    .line 78
    if-eqz v9, :cond_2

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_7

    .line 83
    :cond_1
    :goto_2
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-lez p1, :cond_6

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 103
    .line 104
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 105
    .line 106
    .line 107
    monitor-enter v1

    .line 108
    :goto_4
    if-ge v3, p1, :cond_5

    .line 109
    .line 110
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 111
    .line 112
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    move-object v5, v2

    .line 119
    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 120
    .line 121
    const-string/jumbo v10, "kill all fg"

    .line 122
    .line 123
    .line 124
    const/16 v8, 0xd

    .line 125
    .line 126
    const/16 v9, 0x9

    .line 127
    .line 128
    const/4 v11, 0x1

    .line 129
    const/4 v6, 0x0

    .line 130
    const/4 v7, 0x1

    .line 131
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :catchall_1
    move-exception p0

    .line 138
    goto :goto_5

    .line 139
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_6
    :goto_6
    return-void

    .line 150
    :goto_7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 152
    .line 153
    .line 154
    throw p0
.end method

.method public final killProcess(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 10
    .line 11
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v9, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x1

    .line 25
    const/16 v6, 0xd

    .line 26
    .line 27
    move-object v8, p3

    .line 28
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final killProcessForDex(IILjava/lang/String;)V
    .locals 10

    .line 1
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p2

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 10
    .line 11
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    :try_start_2
    iput-boolean p1, v3, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v9, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/16 v6, 0xd

    .line 35
    .line 36
    move-object v8, p3

    .line 37
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :try_start_4
    throw p0

    .line 51
    :goto_1
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final killProcessWhenDexExit()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v6, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 39
    .line 40
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 41
    .line 42
    iget-object v7, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 43
    .line 44
    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    :goto_0
    if-ge v9, v7, :cond_5

    .line 55
    .line 56
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 57
    .line 58
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 59
    .line 60
    iget-object v11, v11, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 61
    .line 62
    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    check-cast v11, Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    const/4 v13, 0x0

    .line 77
    :goto_1
    if-ge v13, v12, :cond_4

    .line 78
    .line 79
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 84
    .line 85
    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 86
    .line 87
    iget v15, v15, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 88
    .line 89
    const/16 v8, 0x14

    .line 90
    .line 91
    if-ne v15, v8, :cond_1

    .line 92
    .line 93
    :cond_0
    :goto_2
    move/from16 v16, v7

    .line 94
    .line 95
    move-object/from16 v17, v11

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_1
    iget v8, v14, Lcom/android/server/am/ProcessRecord;->mKillProcessTimeout:I

    .line 99
    .line 100
    if-nez v8, :cond_2

    .line 101
    .line 102
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    goto/16 :goto_6

    .line 108
    .line 109
    :cond_2
    if-lez v8, :cond_0

    .line 110
    .line 111
    const-string v15, "ActivityManagerServiceExt"

    .line 112
    .line 113
    move/from16 v16, v7

    .line 114
    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    move-object/from16 v17, v11

    .line 121
    .line 122
    const-string/jumbo v11, "kill dex related process - scheduleKillProcessesForDeXExit :"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v11, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v11, "("

    .line 134
    .line 135
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v11, v14, Lcom/android/server/am/ProcessRecord;->mKillProcessTimeout:I

    .line 139
    .line 140
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v11, ")"

    .line 148
    .line 149
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    if-le v8, v10, :cond_3

    .line 163
    .line 164
    move v10, v8

    .line 165
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 166
    .line 167
    move/from16 v7, v16

    .line 168
    .line 169
    move-object/from16 v11, v17

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    move/from16 v16, v7

    .line 173
    .line 174
    add-int/lit8 v9, v9, 0x1

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    const/4 v8, 0x0

    .line 182
    :goto_4
    if-ge v8, v7, :cond_7

    .line 183
    .line 184
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 189
    .line 190
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 191
    .line 192
    iget v10, v10, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 193
    .line 194
    const-string v15, "ActivityManagerServiceExt"

    .line 195
    .line 196
    const/16 v11, 0xd

    .line 197
    .line 198
    if-le v10, v11, :cond_6

    .line 199
    .line 200
    const/4 v10, 0x1

    .line 201
    iput-boolean v10, v9, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 202
    .line 203
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 204
    .line 205
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 206
    .line 207
    const-string/jumbo v16, "kill dex related process when exit"

    .line 208
    .line 209
    .line 210
    const/16 v17, 0x0

    .line 211
    .line 212
    const/16 v18, 0x1

    .line 213
    .line 214
    const/4 v12, 0x0

    .line 215
    const/4 v13, 0x1

    .line 216
    const/16 v14, 0xd

    .line 217
    .line 218
    move-object v11, v9

    .line 219
    move-object/from16 v19, v15

    .line 220
    .line 221
    move/from16 v15, v17

    .line 222
    .line 223
    move/from16 v17, v18

    .line 224
    .line 225
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 226
    .line 227
    .line 228
    new-instance v10, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string/jumbo v11, "kill dex related process succeeded - "

    .line 231
    .line 232
    .line 233
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    move-object/from16 v10, v19

    .line 246
    .line 247
    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_6
    move-object v10, v15

    .line 252
    new-instance v11, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string/jumbo v12, "kill dex related process failed for procstate - "

    .line 255
    .line 256
    .line 257
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v12, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v12, ":"

    .line 266
    .line 267
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 271
    .line 272
    iget v9, v9, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 273
    .line 274
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-gtz v0, :cond_8

    .line 292
    .line 293
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 295
    .line 296
    .line 297
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 298
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 299
    .line 300
    .line 301
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :catchall_1
    move-exception v0

    .line 306
    goto :goto_8

    .line 307
    :catchall_2
    move-exception v0

    .line 308
    goto :goto_7

    .line 309
    :cond_8
    const/4 v0, 0x0

    .line 310
    :try_start_5
    throw v0

    .line 311
    :goto_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 312
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 313
    .line 314
    .line 315
    throw v0

    .line 316
    :goto_7
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 317
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 318
    .line 319
    .line 320
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 321
    :goto_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    .line 323
    .line 324
    throw v0
.end method

.method public final killProcessesForRemovedTask(Ljava/util/ArrayList;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 3
    .line 4
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 23
    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x0

    .line 38
    if-ge v3, v4, :cond_a

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    .line 45
    .line 46
    iget-object v6, v4, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v7, v6

    .line 49
    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 50
    .line 51
    iget-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    .line 52
    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    const-string v4, "ActivityManager"

    .line 56
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v6, "Skipped removedTask "

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_1
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 85
    .line 86
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 87
    .line 88
    invoke-static {v6}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_5

    .line 93
    .line 94
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 95
    .line 96
    iget v6, v6, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    .line 97
    .line 98
    if-nez v6, :cond_5

    .line 99
    .line 100
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 101
    .line 102
    iget-boolean v6, v6, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 103
    .line 104
    if-nez v6, :cond_5

    .line 105
    .line 106
    iget-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->mKeepSEMPrcp:Z

    .line 107
    .line 108
    if-nez v6, :cond_5

    .line 109
    .line 110
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 111
    .line 112
    if-eqz v6, :cond_4

    .line 113
    .line 114
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 115
    .line 116
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 117
    .line 118
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 119
    .line 120
    iget v9, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 121
    .line 122
    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 134
    .line 135
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v8, ","

    .line 141
    .line 142
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget v8, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 146
    .line 147
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-nez v6, :cond_9

    .line 159
    .line 160
    iget-object v6, v4, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v6, :cond_9

    .line 163
    .line 164
    const-string v8, "MultiTaskingAppCompat"

    .line 165
    .line 166
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-nez v6, :cond_2

    .line 171
    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 178
    .line 179
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v8, ","

    .line 185
    .line 186
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget v7, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 190
    .line 191
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_2
    const-string/jumbo v11, "remove task"

    .line 203
    .line 204
    .line 205
    const/16 v9, 0x16

    .line 206
    .line 207
    const/4 v12, 0x1

    .line 208
    const/4 v13, 0x1

    .line 209
    const/16 v8, 0xa

    .line 210
    .line 211
    move-object v10, v11

    .line 212
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 213
    .line 214
    .line 215
    :goto_1
    iput-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_3
    const-string/jumbo v11, "remove task"

    .line 220
    .line 221
    .line 222
    const/16 v9, 0x16

    .line 223
    .line 224
    const/4 v12, 0x1

    .line 225
    const/4 v13, 0x1

    .line 226
    const/16 v8, 0xa

    .line 227
    .line 228
    move-object v10, v11

    .line 229
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :cond_4
    const-string/jumbo v11, "remove task"

    .line 235
    .line 236
    .line 237
    const/16 v9, 0x16

    .line 238
    .line 239
    const/4 v12, 0x1

    .line 240
    const/4 v13, 0x1

    .line 241
    const/16 v8, 0xa

    .line 242
    .line 243
    move-object v10, v11

    .line 244
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :cond_5
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 250
    .line 251
    if-eqz v6, :cond_8

    .line 252
    .line 253
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 254
    .line 255
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 256
    .line 257
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 258
    .line 259
    iget v9, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 260
    .line 261
    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-eqz v6, :cond_7

    .line 266
    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 273
    .line 274
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v8, ","

    .line 280
    .line 281
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget v8, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 285
    .line 286
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    if-nez v6, :cond_9

    .line 298
    .line 299
    iget-object v6, v4, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    .line 300
    .line 301
    if-eqz v6, :cond_9

    .line 302
    .line 303
    const-string v8, "MultiTaskingAppCompat"

    .line 304
    .line 305
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-nez v6, :cond_6

    .line 310
    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 317
    .line 318
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v8, ","

    .line 324
    .line 325
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget v7, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 329
    .line 330
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_6
    const-string/jumbo v11, "remove task"

    .line 342
    .line 343
    .line 344
    const/16 v9, 0x16

    .line 345
    .line 346
    const/4 v12, 0x1

    .line 347
    const/4 v13, 0x1

    .line 348
    const/16 v8, 0xa

    .line 349
    .line 350
    move-object v10, v11

    .line 351
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 352
    .line 353
    .line 354
    :goto_2
    iput-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_7
    const-string/jumbo v4, "remove task"

    .line 358
    .line 359
    .line 360
    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 361
    .line 362
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_8
    const-string/jumbo v4, "remove task"

    .line 366
    .line 367
    .line 368
    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 369
    .line 370
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    .line 371
    .line 372
    :cond_9
    :goto_3
    add-int/2addr v3, v0

    .line 373
    goto/16 :goto_0

    .line 374
    .line 375
    :cond_a
    move p1, v2

    .line 376
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    if-ge p1, v3, :cond_10

    .line 381
    .line 382
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    check-cast v3, Ljava/lang/String;

    .line 387
    .line 388
    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 389
    .line 390
    invoke-virtual {v4, v3}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForRecentKill(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    if-nez v6, :cond_f

    .line 395
    .line 396
    iget-object v6, v4, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 397
    .line 398
    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    if-eqz v3, :cond_e

    .line 403
    .line 404
    const-string v7, ","

    .line 405
    .line 406
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 407
    .line 408
    .line 409
    move-result v8

    .line 410
    if-eqz v8, :cond_e

    .line 411
    .line 412
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    if-eqz v3, :cond_d

    .line 417
    .line 418
    array-length v7, v3

    .line 419
    const/4 v8, 0x2

    .line 420
    if-ne v7, v8, :cond_d

    .line 421
    .line 422
    aget-object v7, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    .line 424
    if-eqz v7, :cond_b

    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_b
    move-object v7, v5

    .line 428
    :goto_5
    :try_start_1
    aget-object v3, v3, v0

    .line 429
    .line 430
    if-eqz v3, :cond_c

    .line 431
    .line 432
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :cond_c
    :goto_6
    move-object v3, v7

    .line 437
    goto :goto_7

    .line 438
    :catch_0
    :try_start_2
    const-string v3, "MARsPolicyManager"

    .line 439
    .line 440
    const-string/jumbo v8, "forceStopForRecentKill parseInt error!"

    .line 441
    .line 442
    .line 443
    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    goto :goto_6

    .line 447
    :cond_d
    move-object v3, v5

    .line 448
    :cond_e
    :goto_7
    if-eqz v3, :cond_f

    .line 449
    .line 450
    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 451
    .line 452
    invoke-virtual {v4, v3, v6}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 453
    .line 454
    .line 455
    :cond_f
    add-int/2addr p1, v0

    .line 456
    goto :goto_4

    .line 457
    :cond_10
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 459
    .line 460
    .line 461
    return-void

    .line 462
    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 463
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 464
    .line 465
    .line 466
    throw p1
.end method

.method public final killSdkSandboxClientAppProcess(Landroid/os/IBinder;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string/jumbo v5, "sdk sandbox died"

    .line 16
    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    const/16 v2, 0xc

    .line 20
    .line 21
    const/16 v3, 0x1b

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    move-object v4, v5

    .line 25
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final logFgsApiBegin(III)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    .line 7
    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceApiEventBegin(III)V

    .line 12
    .line 13
    .line 14
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :catchall_1
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    :try_start_4
    throw p1

    .line 22
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    throw p1
.end method

.method public final logFgsApiEnd(III)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    .line 7
    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceApiEventEnd(III)V

    .line 12
    .line 13
    .line 14
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :catchall_1
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    :try_start_4
    throw p1

    .line 22
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    throw p1
.end method

.method public final monitor()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->monitor()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    move-object v1, p0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :goto_1
    move-object v2, p2

    .line 14
    move v3, p3

    .line 15
    move-object v4, p4

    .line 16
    move-object v5, p5

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final notifyMediaProjectionEvent(ILandroid/os/IBinder;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    new-instance p3, Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    move-object p3, p0

    .line 36
    check-cast p3, Landroid/util/ArraySet;

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 p1, 0x1

    .line 43
    if-ne p3, p1, :cond_2

    .line 44
    .line 45
    if-ltz v1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_1
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final notifyNetworkPolicyRulesUpdated(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p1

    .line 35
    :try_start_2
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    .line 36
    .line 37
    cmp-long v0, v0, p2

    .line 38
    .line 39
    if-ltz v0, :cond_1

    .line 40
    .line 41
    monitor-exit p1

    .line 42
    return-void

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-wide p2, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    .line 46
    .line 47
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    .line 48
    .line 49
    const-wide/16 v2, 0x0

    .line 50
    .line 51
    cmp-long v0, v0, v2

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    .line 56
    .line 57
    cmp-long p2, p2, v0

    .line 58
    .line 59
    if-ltz p2, :cond_2

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    .line 65
    .line 66
    :cond_2
    monitor-exit p1

    .line 67
    return-void

    .line 68
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    throw p0

    .line 70
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public final onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 10
    .line 11
    move v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move v4, p3

    .line 14
    move-object v5, p4

    .line 15
    move v6, p5

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->onForegroundServiceNotificationUpdateLocked(ZLandroid/app/Notification;ILjava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final onPackagePausedBG(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    .line 1
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 14
    .line 15
    invoke-static {v1, p1, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    if-eqz p4, :cond_0

    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iput-wide v1, p4, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    if-nez p3, :cond_1

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    goto :goto_2

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0

    .line 54
    :cond_2
    :goto_2
    return-void
.end method

.method public final onPackageResumedFG(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V
    .locals 4

    .line 1
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    if-eqz p0, :cond_8

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo p3, "com.android.systemui"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide p3

    .line 25
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdateTime:J

    .line 26
    .line 27
    sub-long v0, p3, v0

    .line 28
    .line 29
    const-wide/16 v2, 0x64

    .line 30
    .line 31
    cmp-long p5, v0, v2

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-ltz p5, :cond_1

    .line 35
    .line 36
    move p5, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p5, 0x0

    .line 39
    :goto_0
    iput-wide p3, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdateTime:J

    .line 40
    .line 41
    if-nez p5, :cond_2

    .line 42
    .line 43
    iget p3, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUid:I

    .line 44
    .line 45
    if-ne p3, p6, :cond_2

    .line 46
    .line 47
    iget-object p3, p0, Lcom/android/server/am/MARsPolicyManager;->mLastPkgName:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-eqz p3, :cond_2

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_2
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastPkgName:Ljava/lang/String;

    .line 60
    .line 61
    iput p6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUid:I

    .line 62
    .line 63
    sget-boolean p3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 64
    .line 65
    if-eqz p3, :cond_3

    .line 66
    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    const-string p3, ".iqi"

    .line 70
    .line 71
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-nez p3, :cond_3

    .line 76
    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string/jumbo p4, "onPackageResumedFG pkgName = "

    .line 80
    .line 81
    .line 82
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p4, ", userId = "

    .line 89
    .line 90
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    const-string p4, "MARsPolicyManager"

    .line 101
    .line 102
    invoke-static {p4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-eqz p3, :cond_5

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    sget-object p3, Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    .line 114
    .line 115
    check-cast p1, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {p3, p1, p6}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->updateTopPkgList(Ljava/util/ArrayList;I)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    if-eqz p2, :cond_5

    .line 122
    .line 123
    invoke-static {p2}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget-object p3, Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    .line 128
    .line 129
    invoke-virtual {p3, p1, p6}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->updateTopPkgList(Ljava/util/ArrayList;I)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 133
    .line 134
    sget-object p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 145
    .line 146
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->unfreezeWallPaperPackage()V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    if-eqz p2, :cond_8

    .line 153
    .line 154
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 155
    .line 156
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 157
    .line 158
    iget-object p3, p1, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    .line 160
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    if-eqz p3, :cond_7

    .line 165
    .line 166
    iget p3, p1, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    .line 167
    .line 168
    if-ne p6, p3, :cond_7

    .line 169
    .line 170
    iget-object p1, p1, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_7

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_7
    invoke-virtual {p0, p6, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(ILjava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    :cond_8
    :goto_2
    return-void
.end method

.method public final onUidBlockedReasonsChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUidNetworkBlockedReasons:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidNetworkBlockedReasons:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidNetworkBlockedReasons:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    .line 24
    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final onUserRemoved(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;

    .line 18
    .line 19
    invoke-direct {v3, v0, p1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/android/systemui/shared/Flags;->enableHomeDelay()Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method

.method public final onWakefulnessChanged(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 7
    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    move v2, v1

    .line 26
    :cond_1
    if-eq v0, v2, :cond_4

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->updateScreenStateLocked(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    const/16 v0, 0xf

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/16 v0, 0x10

    .line 45
    .line 46
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->onScreenAwakeChanged(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjuster;->onWakefulnessChanged(I)V

    .line 57
    .line 58
    .line 59
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    const-string p1, "ActivityManager"

    .line 70
    .line 71
    const-string v0, "TMO onWakefulnessChanged"

    .line 72
    .line 73
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    :goto_2
    const/16 p1, 0x9

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 100
    .line 101
    .line 102
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 109
    .line 110
    .line 111
    throw p1
.end method

.method public final prepareForPossibleShutdown()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    .line 17
    .line 18
    const/16 v1, 0x1a

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 25
    .line 26
    .line 27
    const-string v1, "android"

    .line 28
    .line 29
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final registerAnrController(Landroid/app/AnrController;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    .line 9
    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final registerNetworkPolicyUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mNetworkPolicyUidObserver:Landroid/app/IUidObserver;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v1, p1

    .line 15
    move v2, p2

    .line 16
    move v3, p3

    .line 17
    move-object v4, p4

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/UidObserverController;->register(Landroid/app/IUidObserver;IILjava/lang/String;I[I)Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final reportCurKeyguardUsageEvent(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x11

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 p1, 0x12

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final requestCustomFullBugreport()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;IJLandroid/net/Uri;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final rescheduleAnrDialog(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 9
    .line 10
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 15
    .line 16
    sget p1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 17
    .line 18
    int-to-long v1, p1

    .line 19
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final restart()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->restart()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final scheduleAppGcs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final sendForegroundProfileChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    const/16 v1, 0x46

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 2
    invoke-static/range {v1 .. v11}, Lcom/android/server/am/ActivityManagerService;->sendIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;II)I

    move-result v0

    return v0
.end method

.method public final sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;II)I
    .locals 12

    move-object v0, p0

    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v1 .. v11}, Lcom/android/server/am/ActivityManagerService;->sendIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;II)I

    move-result v0

    return v0
.end method

.method public final setBooted(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 4
    .line 5
    return-void
.end method

.method public final setBooting(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 4
    .line 5
    return-void
.end method

.method public final setCompanionAppUids(ILjava/util/Set;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final setCurrentDexMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    and-int/lit8 v1, p2, 0x2

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    and-int/lit8 v1, p2, 0x10

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    move v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 22
    .line 23
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4, v5, v3, v2, v1}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZZ)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    :goto_1
    and-int/lit8 v1, p2, 0x8

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 36
    .line 37
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->enforceDebuggable(Landroid/content/pm/ApplicationInfo;)V

    .line 45
    .line 46
    .line 47
    iput-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    .line 48
    .line 49
    :cond_2
    and-int/lit8 p2, p2, 0x4

    .line 50
    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 54
    .line 55
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->enforceDebuggable(Landroid/content/pm/ApplicationInfo;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 66
    .line 67
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 68
    .line 69
    .line 70
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    iput-object v2, p2, Lcom/android/server/am/ActivityManagerService;->mTrackAllocationApp:Ljava/lang/String;

    .line 72
    .line 73
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 80
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 87
    .line 88
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 89
    .line 90
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Object;->notify()V

    .line 97
    .line 98
    .line 99
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 101
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catchall_2
    move-exception p0

    .line 106
    goto :goto_4

    .line 107
    :goto_3
    :try_start_7
    monitor-exit p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 108
    :try_start_8
    throw p0

    .line 109
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 110
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 111
    .line 112
    .line 113
    throw p0
.end method

.method public final setDeviceIdleAllowlist([I[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleAllowlist:[I

    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleExceptIdleAllowlist:[I

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 26
    .line 27
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 29
    .line 30
    .line 31
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final setDeviceOwnerUid(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/am/ActivityManagerService;->mDeviceOwnerUid:I

    .line 4
    .line 5
    return-void
.end method

.method public final setHasOverlayUi(IZ)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setHasOverlayUi called on unknown pid: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 7
    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 13
    .line 14
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const-string p0, "ActivityManager"

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :try_start_4
    iget-object p1, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 54
    .line 55
    iget-boolean v0, p1, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    .line 56
    .line 57
    if-ne v0, p2, :cond_1

    .line 58
    .line 59
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    :try_start_5
    iput-boolean p2, p1, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 69
    .line 70
    iput-boolean p2, p1, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 73
    .line 74
    const/16 p1, 0x9

    .line 75
    .line 76
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 77
    .line 78
    .line 79
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_0
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 85
    :try_start_7
    throw p0

    .line 86
    :goto_1
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final setKeyguardPkgInfo(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkg:Ljava/lang/String;

    .line 13
    .line 14
    iput p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgUid:I

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x5

    .line 34
    if-lt v0, v1, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    .line 37
    .line 38
    move-object v1, v0

    .line 39
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    .line 63
    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public final setLongLiveProcess(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "ActivityManagerServiceExt"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "setLongLiveProcess "

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 31
    .line 32
    .line 33
    monitor-enter v0

    .line 34
    const/4 v1, -0x1

    .line 35
    if-eq p1, v1, :cond_0

    .line 36
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 40
    .line 41
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    :try_start_2
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 54
    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    .line 61
    .line 62
    new-instance v2, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    :try_start_4
    throw p0

    .line 77
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "ActivityManager"

    .line 6
    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo p3, "setPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 29
    .line 30
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    and-int/lit8 v0, p3, 0x1

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p1, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    and-int/lit8 v0, p3, 0x2

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p1, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    and-int/lit8 p3, p3, 0x4

    .line 59
    .line 60
    if-eqz p3, :cond_4

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public final setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p0, "ActivityManager"

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo p3, "markAsSentFromNotification(): not a PendingIntentRecord: "

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    .line 38
    .line 39
    move-object v1, p2

    .line 40
    move v2, p5

    .line 41
    move v3, p6

    .line 42
    move-object v4, p7

    .line 43
    move-wide v5, p3

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/PendingIntentRecord;->setAllowlistDurationLocked(Landroid/os/IBinder;IILjava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    :goto_0
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1
.end method

.method public final setProfileOwnerUid(Landroid/util/ArraySet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mProfileOwnerUids:Landroid/util/ArraySet;

    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final setStopUserOnSwitch(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final setVoiceInteractionManagerProvider(Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mVoiceInteractionManagerProvider:Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;

    .line 4
    .line 5
    return-void
.end method

.method public final shouldConfirmCredentials(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const-class v0, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/am/UserController;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UserController;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->isKnoxId(I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/am/UserController;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    const-class v0, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/am/UserController;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 67
    .line 68
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->shouldConfirmCredentials(I)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    const-class v0, Landroid/app/KeyguardManager;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Landroid/app/KeyguardManager;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_6

    .line 108
    .line 109
    const/4 v1, 0x1

    .line 110
    goto :goto_0

    .line 111
    :cond_5
    const/4 v0, 0x2

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    :cond_6
    :goto_0
    return v1
.end method

.method public final shouldDelayHomeLaunch(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    sget p1, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/systemui/shared/Flags;->enableHomeDelay()Z

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final startForegroundServiceDelegate(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->startForegroundServiceDelegateLocked(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x3e8

    .line 18
    .line 19
    iput v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 20
    .line 21
    move-object/from16 v0, p3

    .line 22
    .line 23
    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 24
    .line 25
    move-object/from16 v15, p1

    .line 26
    .line 27
    iput-object v15, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "android"

    .line 30
    .line 31
    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, ":complete"

    .line 34
    .line 35
    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 36
    .line 37
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    iput v2, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 40
    .line 41
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 42
    .line 43
    sget-object v7, Lcom/android/server/am/ActivityManagerService;->sNullHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 44
    .line 45
    const/4 v13, 0x0

    .line 46
    const/4 v14, 0x0

    .line 47
    const/16 v19, 0x0

    .line 48
    .line 49
    const/16 v20, -0x1

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x1

    .line 55
    const/4 v10, 0x1

    .line 56
    const/4 v12, 0x0

    .line 57
    move-object/from16 v3, p3

    .line 58
    .line 59
    move/from16 v11, p5

    .line 60
    .line 61
    move-object/from16 v15, p4

    .line 62
    .line 63
    move-object/from16 v16, p1

    .line 64
    .line 65
    move-object/from16 v17, p2

    .line 66
    .line 67
    move-object/from16 v18, p6

    .line 68
    .line 69
    invoke-virtual/range {v2 .. v20}, Lcom/android/server/am/ProcessList;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;ZI)Lcom/android/server/am/ProcessRecord;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 80
    .line 81
    .line 82
    return v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public final startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    .line 1
    const-string/jumbo v2, "startProcess:"

    const-wide/16 v9, 0x40

    :try_start_0
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v10, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    new-instance v5, Lcom/android/server/am/HostingRecord;

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v5, v4, v3, v2}, Lcom/android/server/am/HostingRecord;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 5
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v3, p2

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 7
    invoke-virtual {v2, v4, p1}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    .line 9
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception v0

    .line 11
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 13
    throw v0
.end method

.method public final startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;ZI)V
    .locals 24

    move-object/from16 v0, p0

    .line 14
    const-string/jumbo v1, "startProcess:"

    const-wide/16 v2, 0x40

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v1, p1

    .line 16
    :goto_0
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/am/HostingRecord;

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct {v10, v7, v6, v5}, Lcom/android/server/am/HostingRecord;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 18
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v22, p7

    move/from16 v23, p8

    .line 19
    invoke-virtual/range {v5 .. v23}, Lcom/android/server/am/ProcessList;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;ZI)Lcom/android/server/am/ProcessRecord;

    .line 20
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception v0

    .line 22
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    throw v0
.end method

.method public final startProfileEvenWhenDisabled(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/UserController;->startProfile(IZLandroid/os/IProgressListener;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final startSdkSandboxService(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v12, p1

    .line 3
    invoke-static/range {p1 .. p4}, Lcom/android/server/am/ActivityManagerService$LocalService;->validateSdkSandboxParams(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 9
    .line 10
    move v9, p2

    .line 11
    move-object/from16 v10, p3

    .line 12
    .line 13
    invoke-virtual {v1, p2, v10}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_4

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 40
    .line 41
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v8, 0x1

    .line 61
    move-object v0, v1

    .line 62
    move-object v1, v2

    .line 63
    move-object v2, p1

    .line 64
    move v9, p2

    .line 65
    move-object/from16 v10, p3

    .line 66
    .line 67
    move-object/from16 v11, p4

    .line 68
    .line 69
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "!"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const-string v2, "Not allowed to start service "

    .line 86
    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v3, "!!"

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const-string v3, ": "

    .line 100
    .line 101
    if-nez v1, :cond_1

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v4, "?"

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-static {v1, v0}, Landroid/app/ServiceStartNotAllowedException;->newInstance(ZLjava/lang/String;)Landroid/app/ServiceStartNotAllowedException;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    throw v0

    .line 144
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v4, "Unable to start service "

    .line 149
    .line 150
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    .line 175
    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v2, " without permission "

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v1

    .line 204
    :cond_3
    :goto_0
    return-object v0

    .line 205
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string/jumbo v1, "uid does not belong to provided package"

    .line 208
    .line 209
    .line 210
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v0
.end method

.method public final startServiceInPackage(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;)Landroid/content/ComponentName;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "startServiceInPackage: intent="

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, 0x40

    .line 11
    .line 12
    :try_start_0
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    if-eqz v6, :cond_0

    .line 17
    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p3

    .line 24
    .line 25
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v7, ", caller="

    .line 29
    .line 30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-object/from16 v14, p6

    .line 34
    .line 35
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v7, ", fgRequired="

    .line 39
    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move/from16 v13, p5

    .line 44
    .line 45
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    move-object/from16 v1, p3

    .line 59
    .line 60
    move/from16 v13, p5

    .line 61
    .line 62
    move-object/from16 v14, p6

    .line 63
    .line 64
    :goto_0
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 65
    .line 66
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 67
    .line 68
    .line 69
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 71
    .line 72
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 73
    .line 74
    const/16 v18, 0x0

    .line 75
    .line 76
    const/16 v19, -0x1

    .line 77
    .line 78
    const/4 v11, -0x1

    .line 79
    const/16 v20, 0x0

    .line 80
    .line 81
    const/16 v21, 0x0

    .line 82
    .line 83
    move-object/from16 v8, p1

    .line 84
    .line 85
    move-object/from16 v9, p3

    .line 86
    .line 87
    move-object/from16 v10, p4

    .line 88
    .line 89
    move/from16 v12, p2

    .line 90
    .line 91
    move/from16 v13, p5

    .line 92
    .line 93
    move-object/from16 v14, p6

    .line 94
    .line 95
    move-object/from16 v15, p7

    .line 96
    .line 97
    move/from16 v16, p8

    .line 98
    .line 99
    move-object/from16 v17, p9

    .line 100
    .line 101
    invoke-virtual/range {v7 .. v21}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;ZILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    .line 109
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    .line 114
    .line 115
    return-object v0

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 119
    .line 120
    .line 121
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 123
    .line 124
    .line 125
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    throw v0
.end method

.method public final startUserInBackground(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final stopAppForUser(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->stopAppForUserInternal(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final stopForegroundServiceDelegate(Landroid/app/ForegroundServiceDelegationOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->stopForegroundServiceDelegateLocked(Landroid/app/ForegroundServiceDelegationOptions;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final stopForegroundServiceDelegate(Landroid/content/ServiceConnection;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->stopForegroundServiceDelegateLocked(Landroid/content/ServiceConnection;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final stopSdkSandboxService(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$LocalService;->validateSdkSandboxParams(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    move-object v2, p1

    .line 30
    move v6, p2

    .line 31
    move-object v7, p3

    .line 32
    move-object v8, p4

    .line 33
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-ltz p0, :cond_1

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    return p0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p3, "Not allowed to stop service "

    .line 50
    .line 51
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public final tempAllowWhileInUsePermissionInFgs(IJ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mFgsWhileInUseTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/FgsTempAllowList;->add(IJLjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5
    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    move v3, p1

    .line 11
    move v4, p2

    .line 12
    move v5, p3

    .line 13
    move-wide v6, p4

    .line 14
    move/from16 v8, p6

    .line 15
    .line 16
    move/from16 v9, p7

    .line 17
    .line 18
    move-object/from16 v10, p8

    .line 19
    .line 20
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistForPendingIntentLocked(IIIJIILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final triggerUnsafeIntentStrictMode(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p3

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStrictModeCallbacks:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, Landroid/app/IUnsafeIntentStrictModeCallback;

    .line 21
    .line 22
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    new-instance v6, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    move-object v0, v6

    .line 35
    move-object v1, p0

    .line 36
    move v3, p2

    .line 37
    move v5, p1

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActivityManagerService$LocalService;Landroid/app/IUnsafeIntentStrictModeCallback;ILandroid/content/Intent;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final trimApplications()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    sget v0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter p0

    .line 12
    const/4 v0, 0x1

    .line 13
    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/android/server/am/ActivityManagerService;->trimApplicationsLocked(IZ)V

    .line 14
    .line 15
    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public final unregisterAnrController(Landroid/app/AnrController;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    .line 9
    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;Landroid/app/assist/ActivityId;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;Landroid/app/assist/ActivityId;Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final updateActivityUsageStatsWithIntent(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;Landroid/app/assist/ActivityId;Landroid/content/Intent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    move-object v7, p7

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;Landroid/app/assist/ActivityId;Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final updateBackupServicePkg(IZ)V
    .locals 7

    .line 1
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    const-wide/32 v5, 0x5265c00

    .line 21
    .line 22
    .line 23
    add-long/2addr v3, v5

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 51
    .line 52
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 53
    .line 54
    iget-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    const-string v1, "BackupService"

    .line 59
    .line 60
    const-wide/32 v2, 0x2bf20

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    .line 64
    .line 65
    .line 66
    :cond_1
    const-string v0, "DEV"

    .line 67
    .line 68
    const-string v1, "BackupService uid="

    .line 69
    .line 70
    const-string v2, ", isStart="

    .line 71
    .line 72
    invoke-static {p1, v1, v2, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final updateBatteryStats(Landroid/content/ComponentName;IIZ)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p3, v6, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p3

    .line 16
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-object v8, v6, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;

    .line 27
    .line 28
    move-object v0, v9

    .line 29
    move v1, p2

    .line 30
    move v7, p4

    .line 31
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;-><init>(IJJLcom/android/server/am/BatteryStatsService;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/16 p3, 0x2a

    .line 39
    .line 40
    invoke-static {p3, p2, p0, p1, p4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method

.method public final updateCpuStats()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p2

    .line 4
    move/from16 v3, p3

    .line 5
    .line 6
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v4

    .line 12
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 13
    .line 14
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    :try_start_1
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 23
    .line 24
    iput-object v1, v6, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 30
    .line 31
    if-nez p6, :cond_2

    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    .line 36
    .line 37
    new-instance v12, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    .line 38
    .line 39
    move-object v6, v12

    .line 40
    move/from16 v7, p7

    .line 41
    .line 42
    move/from16 v8, p9

    .line 43
    .line 44
    move-wide/from16 v9, p4

    .line 45
    .line 46
    move-object/from16 v11, p8

    .line 47
    .line 48
    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;-><init>(IIJLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-wide/from16 v6, p4

    .line 52
    .line 53
    invoke-virtual {v1, p2, v6, v7, v12}, Lcom/android/server/am/FgsTempAllowList;->add(IJLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    .line 60
    .line 61
    iget-object v6, v1, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    iget-object v1, v1, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 67
    .line 68
    .line 69
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    iget-boolean v2, v1, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 83
    .line 84
    if-eq v2, v3, :cond_3

    .line 85
    .line 86
    iput-boolean v3, v1, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 87
    .line 88
    invoke-static {}, Lcom/android/server/am/Flags;->migrateFullOomadjUpdates()Z

    .line 89
    .line 90
    .line 91
    const/16 v1, 0xa

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 98
    .line 99
    .line 100
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    goto :goto_3

    .line 107
    :catchall_2
    move-exception v0

    .line 108
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 109
    :try_start_6
    throw v0

    .line 110
    :goto_2
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 111
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :goto_3
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 116
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 117
    .line 118
    .line 119
    throw v0
.end method

.method public final updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 5
    .line 6
    iget-object v11, v2, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v11

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v7

    .line 17
    iget-object v0, v2, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v12, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;

    .line 20
    .line 21
    move-object v1, v12

    .line 22
    move v3, p2

    .line 23
    move-object v4, p1

    .line 24
    move-wide/from16 v9, p3

    .line 25
    .line 26
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    monitor-exit v11

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v0
.end method

.method public final updateOomAdj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final updateOomAdjProcess(Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->forceClearOOMAdj:Z

    .line 10
    .line 11
    const-string v0, "ActivityManager"

    .line 12
    .line 13
    const-string/jumbo v1, "check proc to updateOomAdjProcess :"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 24
    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    move v3, v2

    .line 43
    :goto_0
    if-ge v3, v1, :cond_2

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 46
    .line 47
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 48
    .line 49
    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    move v6, v2

    .line 66
    :goto_1
    if-ge v6, v5, :cond_1

    .line 67
    .line 68
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 73
    .line 74
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_0

    .line 81
    .line 82
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 83
    .line 84
    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 85
    .line 86
    const/4 v9, 0x2

    .line 87
    if-ne v8, v9, :cond_0

    .line 88
    .line 89
    const-string/jumbo v4, "updateOomAdjProcess : "

    .line 90
    .line 91
    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v6, ""

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v6, "/"

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v6, "/ getCurProcState:"

    .line 116
    .line 117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 121
    .line 122
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 123
    .line 124
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v6, " / getSetProcState:"

    .line 128
    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 133
    .line 134
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 135
    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v4, v5}, Lcom/android/server/am/ActivityManagerService;->traceBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 147
    .line 148
    iput-boolean v2, v4, Lcom/android/server/am/ActivityManagerService;->forceClearOOMAdj:Z

    .line 149
    .line 150
    const/16 v5, 0x1b

    .line 151
    .line 152
    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 153
    .line 154
    .line 155
    const-wide/16 v4, 0x40

    .line 156
    .line 157
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 158
    .line 159
    .line 160
    const-string v4, "ActivityManager"

    .line 161
    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string/jumbo v6, "find proc and run to updateOomAdjLocked "

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :catchall_0
    move-exception p0

    .line 185
    goto :goto_3

    .line 186
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 200
    .line 201
    .line 202
    throw p0
.end method

.method public final updateOomLevelsForDisplay(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method
