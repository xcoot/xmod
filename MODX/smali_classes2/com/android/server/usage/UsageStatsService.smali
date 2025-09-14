.class public final Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# static fields
.field public static final COMMON_USAGE_STATS_DIR:Ljava/io/File;

.field public static final DEBUG_RESPONSE_STATS:Z

.field public static final ENABLE_TIME_CHANGE_CORRECTION:Z

.field public static final KERNEL_COUNTER_FILE:Ljava/io/File;

.field public static final LEGACY_COMMON_USAGE_STATS_DIR:Ljava/io/File;

.field public static final LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

.field public static final USE_DEDICATED_HANDLER_THREAD:Z


# instance fields
.field public mAppOps:Landroid/app/AppOpsManager;

.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

.field public mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public mHandler:Lcom/android/server/usage/UsageStatsService$H;

.field public final mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

.field public mIoHandler:Landroid/os/Handler;

.field public final mIoHandlerCallback:Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

.field public final mLastTimeComponentUsedGlobal:Ljava/util/Map;

.field public final mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;

.field public final mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

.field public mRealTimeSnapshot:J

.field public final mReportedEvents:Landroid/util/SparseArray;

.field public mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public final mStandbyChangeListener:Lcom/android/server/usage/UsageStatsService$1;

.field public mSystemTimeSnapshot:J

.field public final mUidObserver:Lcom/android/server/usage/UsageStatsService$3;

.field public final mUidToKernelCounter:Landroid/util/SparseIntArray;

.field public final mUsageEventListeners:Landroid/util/ArraySet;

.field public final mUsageReporters:Landroid/util/SparseArray;

.field public mUsageSource:I

.field public final mUsageStatsWatchers:Ljava/util/HashMap;

.field public final mUsageStatsWatchersComponent:Ljava/util/HashMap;

.field public mUserManager:Landroid/os/UserManager;

.field public final mUserState:Landroid/util/SparseArray;

.field public final mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mVisibleActivities:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mgetTrimmedString(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/16 v0, 0x7f

    .line 11
    .line 12
    if-le p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    return-object p1
.end method

.method public static -$$Nest$mloadGlobalComponentUsageLocked(Lcom/android/server/usage/UsageStatsService;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/AtomicFile;

    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    sget-object v2, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DIR:Ljava/io/File;

    .line 9
    .line 10
    const-string v3, "globalcomponentusage"

    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "UsageStatsService"

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v0, Landroid/util/AtomicFile;

    .line 27
    .line 28
    new-instance v1, Ljava/io/File;

    .line 29
    .line 30
    sget-object v4, Lcom/android/server/usage/UsageStatsService;->LEGACY_COMMON_USAGE_STATS_DIR:Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    const-string v1, "Reading globalcomponentusage file from old location"

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    new-instance v1, Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    invoke-static {v3, v1}, Lcom/android/server/usage/UsageStatsProtoV2;->readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, [Ljava/util/Map$Entry;

    .line 76
    .line 77
    array-length v3, v1

    .line 78
    const/4 v4, 0x0

    .line 79
    :goto_0
    if-ge v4, v3, :cond_4

    .line 80
    .line 81
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 82
    .line 83
    aget-object v6, v1, v4

    .line 84
    .line 85
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Ljava/lang/String;

    .line 90
    .line 91
    aget-object v7, v1, v4

    .line 92
    .line 93
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    check-cast v7, Ljava/lang/Long;

    .line 98
    .line 99
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .line 101
    .line 102
    add-int/lit8 v4, v4, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_1
    move-exception v1

    .line 113
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v1, "Could not read "

    .line 120
    .line 121
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_2
    return-void
.end method

.method public static -$$Nest$monPackageRemoved(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    monitor-exit v0

    .line 61
    goto :goto_2

    .line 62
    :catchall_2
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lcom/android/server/usage/UserUsageStatsService;

    .line 71
    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    monitor-exit v0

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {v3, v1, v2, p2}, Lcom/android/server/usage/UserUsageStatsService;->onPackageRemoved(JLjava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 81
    const/4 v0, -0x1

    .line 82
    if-eq p2, v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    sget p2, Lcom/android/server/usage/UsageStatsIdleService;->$r8$clinit:I

    .line 89
    .line 90
    new-instance p2, Landroid/content/ComponentName;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-class v1, Lcom/android/server/usage/UsageStatsIdleService;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Landroid/os/PersistableBundle;

    .line 106
    .line 107
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "user_id"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 117
    .line 118
    invoke-direct {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 119
    .line 120
    .line 121
    const/4 p2, 0x1

    .line 122
    invoke-virtual {v1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, p2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    const-string/jumbo v0, "usagestats_prune"

    .line 139
    .line 140
    .line 141
    const-class v1, Landroid/app/job/JobScheduler;

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p2, v0}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_4

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 167
    .line 168
    .line 169
    :cond_4
    :goto_2
    return-void

    .line 170
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 171
    throw p0

    .line 172
    :goto_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    throw p0

    .line 174
    :goto_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    throw p0
.end method

.method public static -$$Nest$monUserUnlocked(Lcom/android/server/usage/UsageStatsService;I)V
    .locals 12

    .line 1
    const-string v0, "Attempted to unlock stopped or removed user "

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget v2, Lcom/android/server/usage/UsageStatsIdleService;->$r8$clinit:I

    .line 12
    .line 13
    new-instance v2, Landroid/content/ComponentName;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-class v4, Lcom/android/server/usage/UsageStatsIdleService;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Landroid/os/PersistableBundle;

    .line 29
    .line 30
    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v4, "user_id"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    .line 40
    .line 41
    invoke-direct {v4, p1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v4, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    const-wide/16 v7, 0x1

    .line 52
    .line 53
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    invoke-virtual {v4, v7, v8}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-wide/16 v7, 0x2

    .line 62
    .line 63
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    invoke-virtual {v4, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string/jumbo v4, "usagestats_mapping"

    .line 80
    .line 81
    .line 82
    const-class v6, Landroid/app/job/JobScheduler;

    .line 83
    .line 84
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_0

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 108
    .line 109
    .line 110
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const/4 v7, 0x0

    .line 119
    if-eqz v3, :cond_2

    .line 120
    .line 121
    invoke-virtual {v3, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-nez v1, :cond_1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    move v6, v7

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    :goto_0
    move v6, v2

    .line 131
    :goto_1
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 132
    .line 133
    monitor-enter v8

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 135
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    new-instance v9, Landroid/app/usage/UsageEvents$Event;

    .line 144
    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 146
    .line 147
    .line 148
    move-result-wide v3

    .line 149
    const/16 v1, 0x1c

    .line 150
    .line 151
    invoke-direct {v9, v1, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 152
    .line 153
    .line 154
    const-string v1, "android"

    .line 155
    .line 156
    iput-object v1, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->migrateStatsToSystemCeIfNeededLocked(I)V

    .line 159
    .line 160
    .line 161
    new-instance v10, Ljava/util/LinkedList;

    .line 162
    .line 163
    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v1, "loadPendingEvents"

    .line 167
    .line 168
    const-wide/32 v3, 0x80000

    .line 169
    .line 170
    .line 171
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1, v10}, Lcom/android/server/usage/UsageStatsService;->loadPendingEventsLocked(ILjava/util/LinkedList;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 181
    .line 182
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 184
    .line 185
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Ljava/util/LinkedList;

    .line 190
    .line 191
    if-eqz v3, :cond_3

    .line 192
    .line 193
    invoke-virtual {v10, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 194
    .line 195
    .line 196
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 197
    .line 198
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :catchall_0
    move-exception p0

    .line 203
    goto :goto_5

    .line 204
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    xor-int/lit8 v11, v1, 0x1

    .line 210
    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    move-object v1, p0

    .line 216
    move v2, p1

    .line 217
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsService;->initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;Z)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-nez v1, :cond_4

    .line 225
    .line 226
    const-string p0, "UsageStatsService"

    .line 227
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    monitor-exit v8

    .line 244
    goto :goto_4

    .line 245
    :catchall_1
    move-exception p0

    .line 246
    goto :goto_6

    .line 247
    :cond_4
    :goto_3
    invoke-virtual {v10}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-eqz v0, :cond_5

    .line 252
    .line 253
    invoke-virtual {v10}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 258
    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsService;->reportEvent(ILandroid/app/usage/UsageEvents$Event;)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_5
    invoke-virtual {p0, p1, v9}, Lcom/android/server/usage/UsageStatsService;->reportEvent(ILandroid/app/usage/UsageEvents$Event;)V

    .line 264
    .line 265
    .line 266
    new-instance v0, Ljava/io/File;

    .line 267
    .line 268
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    const-string/jumbo v3, "usagestats"

    .line 273
    .line 274
    .line 275
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 279
    .line 280
    .line 281
    if-eqz v11, :cond_6

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 284
    .line 285
    .line 286
    :cond_6
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    .line 288
    .line 289
    const/16 v0, 0x8

    .line 290
    .line 291
    invoke-virtual {p0, v0, p1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 296
    .line 297
    .line 298
    :goto_4
    return-void

    .line 299
    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    :try_start_4
    throw p0

    .line 301
    :goto_6
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 302
    throw p0
.end method

.method public static -$$Nest$msetEstimatedLaunchTimes(Lcom/android/server/usage/UsageStatsService;ILjava/util/List;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ltz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Landroid/app/usage/AppLaunchEstimateInfo;

    .line 22
    .line 23
    iget-wide v5, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    .line 24
    .line 25
    cmp-long v5, v5, v0

    .line 26
    .line 27
    if-gtz v5, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 31
    .line 32
    iget-object v6, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v5, v6, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    iget-wide v7, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    .line 39
    .line 40
    cmp-long v5, v7, v5

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 45
    .line 46
    iget-object v6, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {v5, v6, p1, v7, v8}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 49
    .line 50
    .line 51
    iget-object v4, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v4}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    or-int/2addr v3, v4

    .line 58
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    if-eqz v3, :cond_3

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 64
    .line 65
    const/16 p1, 0x9

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public static -$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    xor-int/lit8 p0, p0, 0x1

    .line 16
    .line 17
    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "persist.debug.time_correction"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    .line 10
    .line 11
    const-string/jumbo v0, "persist.debug.use_dedicated_handler_thread"

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/app/usage/Flags;->useDedicatedHandlerThread()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->USE_DEDICATED_HANDLER_THREAD:Z

    .line 23
    .line 24
    const-string v0, "UsageStatsService"

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    .line 32
    .line 33
    new-instance v0, Ljava/io/File;

    .line 34
    .line 35
    const-string v1, "/proc/uid_procstat/set"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    .line 41
    .line 42
    new-instance v0, Ljava/io/File;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string/jumbo v2, "usagestats"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DIR:Ljava/io/File;

    .line 55
    .line 56
    sput-object v0, Lcom/android/server/usage/UsageStatsService;->LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

    .line 57
    .line 58
    new-instance v0, Ljava/io/File;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/android/server/usage/UsageStatsService;->LEGACY_COMMON_USAGE_STATS_DIR:Ljava/io/File;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/usage/UsageStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/usage/UsageStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsService;-><init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$Injector;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 5
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 7
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchersComponent:Ljava/util/HashMap;

    .line 10
    new-instance p1, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;

    .line 11
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 12
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 13
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 14
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 15
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 16
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    new-instance p1, Landroid/util/SparseSetArray;

    invoke-direct {p1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 18
    new-instance p1, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/UsageStatsService$1;

    .line 19
    new-instance p1, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandlerCallback:Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

    .line 20
    new-instance p1, Lcom/android/server/usage/UsageStatsService$3;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$3;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Lcom/android/server/usage/UsageStatsService$3;

    .line 21
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

    return-void
.end method

.method public static buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/2addr v2, v1

    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 p0, 0x2f

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static copyRecursively(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-array v1, v1, [Ljava/nio/file/CopyOption;

    .line 26
    .line 27
    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v2, v1, v3

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "Failed to move usage stats file : "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "UsageStatsService"

    .line 56
    .line 57
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    new-instance p1, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_0
    array-length p1, v0

    .line 67
    sub-int/2addr p1, v1

    .line 68
    :goto_0
    if-ltz p1, :cond_4

    .line 69
    .line 70
    aget-object v1, v0, p1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    new-instance v1, Ljava/io/File;

    .line 79
    .line 80
    aget-object v2, v0, p1

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v0, "Failed to create usage stats directory during migration: "

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_2
    move-object v1, p0

    .line 127
    :cond_3
    :goto_1
    aget-object v2, v0, p1

    .line 128
    .line 129
    invoke-static {v1, v2}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    .line 130
    .line 131
    .line 132
    add-int/lit8 p1, p1, -0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    return-void
.end method

.method public static deleteLegacyUserDir(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/usage/UsageStatsService;->LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "Error occurred while attempting to delete legacy usage stats dir for user "

    .line 28
    .line 29
    const-string v1, "UsageStatsService"

    .line 30
    .line 31
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    aget-object v3, v0, v2

    .line 18
    .line 19
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "Failed to delete "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "UsageStatsService"

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public static loadPendingEventsLocked(ILjava/util/LinkedList;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "usagestats"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    array-length v1, v0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v1, :cond_6

    .line 30
    .line 31
    new-instance v3, Landroid/util/AtomicFile;

    .line 32
    .line 33
    aget-object v4, v0, v2

    .line 34
    .line 35
    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    sget v5, Lcom/android/server/usage/UsageStatsProtoV2;->$r8$clinit:I

    .line 48
    .line 49
    new-instance v5, Landroid/util/proto/ProtoInputStream;

    .line 50
    .line 51
    invoke-direct {v5, v3}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    invoke-virtual {v5}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 55
    .line 56
    .line 57
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    const/4 v7, -0x1

    .line 59
    if-eq v6, v7, :cond_3

    .line 60
    .line 61
    const/16 v7, 0x17

    .line 62
    .line 63
    if-eq v6, v7, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-wide v6, 0x20b00000017L

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :try_start_2
    invoke-virtual {v5, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    invoke-static {v5}, Lcom/android/server/usage/UsageStatsProtoV2;->parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v5, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 80
    .line 81
    .line 82
    if-eqz v8, :cond_1

    .line 83
    .line 84
    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception v6

    .line 89
    :try_start_3
    const-string v7, "UsageStatsProtoV2"

    .line 90
    .line 91
    const-string v8, "Unable to parse some pending events from proto."

    .line 92
    .line 93
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    if-eqz v3, :cond_4

    .line 98
    .line 99
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :catchall_0
    move-exception v4

    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_1
    move-exception v3

    .line 114
    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_2
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 118
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v4, "Could not read "

    .line 121
    .line 122
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    aget-object v4, v0, v2

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v4, " for user "

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const-string v4, "UsageStatsService"

    .line 143
    .line 144
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    :goto_4
    return-void
.end method

.method public static logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x7

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/16 v0, 0xb

    .line 19
    .line 20
    if-eq p0, v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0x13

    .line 23
    .line 24
    if-eq p0, v0, :cond_0

    .line 25
    .line 26
    const/16 v0, 0x14

    .line 27
    .line 28
    if-eq p0, v0, :cond_0

    .line 29
    .line 30
    const-string v0, "Unsupported usage event logging: "

    .line 31
    .line 32
    const-string v1, "UsageStatsService"

    .line 33
    .line 34
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    :cond_0
    const/16 p0, 0x10d

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static migrateStatsToSystemCeIfNeededLocked(I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "usagestats"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "Usage stats directory does not exist: "

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 51
    .line 52
    const-string/jumbo v3, "migrated"

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x4

    .line 63
    const-string v5, "UsageStatsService"

    .line 64
    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 68
    .line 69
    new-instance v6, Ljava/io/FileReader;

    .line 70
    .line 71
    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-lt v6, v4, :cond_2

    .line 86
    .line 87
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyUserDir(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catch_0
    move-exception v3

    .line 95
    goto :goto_3

    .line 96
    :catchall_0
    move-exception v6

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catchall_1
    move-exception v3

    .line 107
    :try_start_4
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    throw v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 111
    :goto_3
    const-string v6, "Failed to read migration status file, possibly corrupted."

    .line 112
    .line 113
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-nez v6, :cond_4

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_5

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_3

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :cond_4
    const-string p0, "Unable to delete usage stats CE directory."

    .line 161
    .line 162
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    new-instance p0, Ljava/lang/RuntimeException;

    .line 166
    .line 167
    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_5
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v3, "Starting migration to system CE for user "

    .line 174
    .line 175
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    new-instance v2, Ljava/io/File;

    .line 189
    .line 190
    sget-object v3, Lcom/android/server/usage/UsageStatsService;->LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

    .line 191
    .line 192
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_6

    .line 204
    .line 205
    invoke-static {v0, v2}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    .line 206
    .line 207
    .line 208
    :cond_6
    :try_start_5
    new-instance v0, Ljava/io/BufferedWriter;

    .line 209
    .line 210
    new-instance v2, Ljava/io/FileWriter;

    .line 211
    .line 212
    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 213
    .line 214
    .line 215
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 216
    .line 217
    .line 218
    :try_start_6
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string v1, "\n"

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 231
    .line 232
    .line 233
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 234
    .line 235
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v1, "Finished migration to system CE for user "

    .line 239
    .line 240
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyUserDir(I)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :catch_1
    move-exception p0

    .line 258
    goto :goto_6

    .line 259
    :catchall_2
    move-exception p0

    .line 260
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :catchall_3
    move-exception v0

    .line 265
    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    :goto_5
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 269
    :goto_6
    const-string v0, "Failed to write migrated status file"

    .line 270
    .line 271
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    new-instance v0, Ljava/lang/RuntimeException;

    .line 275
    .line 276
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    throw v0
.end method


# virtual methods
.method public final convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 14
    .line 15
    sub-long v4, v2, v4

    .line 16
    .line 17
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 18
    .line 19
    add-long/2addr v4, v6

    .line 20
    sub-long v4, v0, v4

    .line 21
    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    const-wide/16 v8, 0x7d0

    .line 27
    .line 28
    cmp-long v6, v6, v8

    .line 29
    .line 30
    if-lez v6, :cond_0

    .line 31
    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v7, "Time changed in by "

    .line 35
    .line 36
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v7, 0x3e8

    .line 40
    .line 41
    div-long/2addr v4, v7

    .line 42
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, " seconds"

    .line 46
    .line 47
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "UsageStatsService"

    .line 55
    .line 56
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 60
    .line 61
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 62
    .line 63
    :cond_0
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 64
    .line 65
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 66
    .line 67
    sub-long/2addr v0, v2

    .line 68
    const-wide/16 v2, 0x0

    .line 69
    .line 70
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 75
    .line 76
    add-long/2addr v0, v2

    .line 77
    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 78
    .line 79
    return-void
.end method

.method public final flushToDisk()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const/16 v4, 0x19

    .line 11
    .line 12
    invoke-direct {v1, v4, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 13
    .line 14
    .line 15
    const-string v2, "android"

    .line 16
    .line 17
    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 27
    .line 28
    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method public final flushToDiskLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getEstimatedPackageLaunchTime(ILjava/lang/String;)J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 8
    .line 9
    invoke-interface {v2, v8, v1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v9

    .line 17
    cmp-long v4, v2, v9

    .line 18
    .line 19
    if-ltz v4, :cond_0

    .line 20
    .line 21
    const-wide v4, 0x7fffffffffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmp-long v4, v2, v4

    .line 27
    .line 28
    if-nez v4, :cond_9

    .line 29
    .line 30
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v11

    .line 34
    const-wide/32 v13, 0x240c8400

    .line 35
    .line 36
    .line 37
    sub-long v3, v11, v13

    .line 38
    .line 39
    const-wide v5, 0x757b12c00L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    add-long v15, v11, v5

    .line 45
    .line 46
    const-string v2, "Failed to query earliest package events for locked user "

    .line 47
    .line 48
    iget-object v7, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v7

    .line 51
    :try_start_0
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 52
    .line 53
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/4 v6, 0x0

    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    const-string v3, "UsageStatsService"

    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    monitor-exit v7

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    move-object/from16 v17, v7

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-nez v2, :cond_2

    .line 93
    .line 94
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    move-wide v5, v11

    .line 97
    move-object/from16 v17, v7

    .line 98
    .line 99
    move-object/from16 v7, p2

    .line 100
    .line 101
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryEarliestEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    :goto_0
    if-nez v6, :cond_4

    .line 107
    .line 108
    :cond_3
    :goto_1
    move-wide v2, v15

    .line 109
    goto :goto_4

    .line 110
    :cond_4
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    .line 111
    .line 112
    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    sub-long v3, v11, v3

    .line 126
    .line 127
    const-wide/32 v17, 0x5265c00

    .line 128
    .line 129
    .line 130
    cmp-long v3, v3, v17

    .line 131
    .line 132
    const/4 v4, 0x1

    .line 133
    if-lez v3, :cond_5

    .line 134
    .line 135
    move v3, v4

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    const/4 v3, 0x0

    .line 138
    :cond_6
    :goto_2
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-ne v5, v4, :cond_8

    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 145
    .line 146
    .line 147
    move-result-wide v19

    .line 148
    if-eqz v3, :cond_7

    .line 149
    .line 150
    add-long v19, v19, v13

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    add-long v19, v19, v17

    .line 154
    .line 155
    :goto_3
    cmp-long v5, v19, v11

    .line 156
    .line 157
    if-lez v5, :cond_8

    .line 158
    .line 159
    move-wide/from16 v2, v19

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_8
    invoke-virtual {v6, v2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-nez v5, :cond_6

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :goto_4
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 170
    .line 171
    invoke-interface {v4, v8, v1, v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getOrCreateLaunchTimeAlarmQueue(I)Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 179
    .line 180
    .line 181
    move-result-wide v4

    .line 182
    sub-long v6, v2, v9

    .line 183
    .line 184
    add-long/2addr v6, v4

    .line 185
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_9
    return-wide v2

    .line 189
    :catchall_1
    move-exception v0

    .line 190
    :goto_5
    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    throw v0
.end method

.method public final getInstalledPackages(I)Ljava/util/HashMap;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    const/16 v0, 0x2000

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    :goto_0
    if-ltz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 31
    .line 32
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 35
    .line 36
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object p1
.end method

.method public final getOrCreateLaunchTimeAlarmQueue(I)Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;-><init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-object v1

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Failed to fetch usage stats service for user "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ". The user might not have been initialized yet."

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "UsageStatsService"

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object p0
.end method

.method public final initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "usagestats"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2, p1, v0, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->init(JLjava/util/HashMap;Z)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p2

    .line 32
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const-string p3, "UsageStatsService"

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    const-string p0, "Attempted to initialize service for stopped or removed user "

    .line 43
    .line 44
    invoke-static {p1, p0, p3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string p0, "Failed to initialized unlocked user "

    .line 49
    .line 50
    invoke-static {p1, p0, p3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final onBootPhase(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onBootPhase(I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x1f4

    .line 7
    .line 8
    if-ne p1, v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-class p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-class v1, Landroid/app/role/RoleManager;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/app/role/RoleManager;

    .line 43
    .line 44
    iput-object v0, p1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleManager:Landroid/app/role/RoleManager;

    .line 45
    .line 46
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object p1, p1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleHoldersChangedListener:Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Lcom/android/server/usage/UsageStatsService$3;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    const/4 v2, 0x3

    .line 73
    const/4 v3, -0x1

    .line 74
    invoke-interface {p1, v0, v2, v3, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    new-instance p1, Ljava/lang/RuntimeException;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "Missing procfs interface: "

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v0, "UsageStatsService"

    .line 100
    .line 101
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void
.end method

.method public final onStart()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "appops"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/AppOpsManager;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v1, "user"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/os/UserManager;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 49
    .line 50
    sget-boolean v0, Lcom/android/server/usage/UsageStatsService;->USE_DEDICATED_HANDLER_THREAD:Z

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    new-instance v2, Lcom/android/server/usage/UsageStatsService$H;

    .line 56
    .line 57
    sget-object v3, Lcom/android/server/usage/UsageStatsHandlerThread;->sLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v3

    .line 60
    :try_start_0
    sget-object v4, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    .line 61
    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v4, Lcom/android/server/usage/UsageStatsHandlerThread;

    .line 66
    .line 67
    const-string v5, "android.usagestats"

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-direct {v4, v6, v5, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    sput-object v4, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 76
    .line 77
    .line 78
    sget-object v4, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    .line 79
    .line 80
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-wide/32 v5, 0x80000

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v5, v6}, Landroid/os/Looper;->setTraceTag(J)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v5, 0x2710

    .line 91
    .line 92
    const-wide/16 v7, 0x7530

    .line 93
    .line 94
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 95
    .line 96
    .line 97
    :goto_0
    sget-object v4, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    .line 98
    .line 99
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-direct {v2, p0, v3}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    throw p0

    .line 111
    :cond_1
    new-instance v2, Lcom/android/server/usage/UsageStatsService$H;

    .line 112
    .line 113
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-direct {v2, p0, v3}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    iput-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 125
    .line 126
    new-instance v2, Landroid/os/Handler;

    .line 127
    .line 128
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandlerCallback:Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 139
    .line 140
    .line 141
    iput-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    .line 142
    .line 143
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    const-class v2, Lcom/android/server/usage/UsageStatsService;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->newAppStandbyController(Ljava/lang/ClassLoader;Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 163
    .line 164
    new-instance v3, Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-direct {v3, v2, v4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;-><init>(Lcom/android/server/usage/AppStandbyInternal;Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    iput-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 174
    .line 175
    new-instance v2, Lcom/android/server/usage/AppTimeLimitController;

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    new-instance v4, Lcom/android/server/usage/UsageStatsService$2;

    .line 182
    .line 183
    invoke-direct {v4, p0}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    .line 184
    .line 185
    .line 186
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 187
    .line 188
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/usage/AppTimeLimitController;-><init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$2;Landroid/os/Looper;)V

    .line 193
    .line 194
    .line 195
    iput-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 196
    .line 197
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 198
    .line 199
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/UsageStatsService$1;

    .line 200
    .line 201
    invoke-interface {v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    const/4 v4, 0x0

    .line 211
    if-eqz v0, :cond_2

    .line 212
    .line 213
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 214
    .line 215
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    goto :goto_2

    .line 220
    :cond_2
    move-object v5, v4

    .line 221
    :goto_2
    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 222
    .line 223
    invoke-virtual {v2, v3, v5, v12, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 224
    .line 225
    .line 226
    new-instance v9, Landroid/content/IntentFilter;

    .line 227
    .line 228
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 229
    .line 230
    invoke-direct {v9, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string v1, "android.intent.action.USER_STARTED"

    .line 234
    .line 235
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    new-instance v7, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;

    .line 243
    .line 244
    const/4 v1, 0x1

    .line 245
    invoke-direct {v7, p0, v1}, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;I)V

    .line 246
    .line 247
    .line 248
    if-eqz v0, :cond_3

    .line 249
    .line 250
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 251
    .line 252
    move-object v11, v1

    .line 253
    goto :goto_3

    .line 254
    :cond_3
    move-object v11, v4

    .line 255
    :goto_3
    const/4 v10, 0x0

    .line 256
    move-object v8, v12

    .line 257
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    new-instance v7, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;

    .line 265
    .line 266
    const/4 v1, 0x0

    .line 267
    invoke-direct {v7, p0, v1}, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;I)V

    .line 268
    .line 269
    .line 270
    new-instance v9, Landroid/content/IntentFilter;

    .line 271
    .line 272
    const-string v1, "android.intent.action.UID_REMOVED"

    .line 273
    .line 274
    invoke-direct {v9, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    if-eqz v0, :cond_4

    .line 278
    .line 279
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 280
    .line 281
    :cond_4
    move-object v11, v4

    .line 282
    const/4 v10, 0x0

    .line 283
    move-object v8, v12

    .line 284
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 288
    .line 289
    .line 290
    move-result-wide v0

    .line 291
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 292
    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 294
    .line 295
    .line 296
    move-result-wide v0

    .line 297
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 298
    .line 299
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 300
    .line 301
    new-instance v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 302
    .line 303
    invoke-direct {v1, p0}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    .line 310
    .line 311
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 312
    .line 313
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->publishBinderServices()V

    .line 317
    .line 318
    .line 319
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 320
    .line 321
    const/4 v0, 0x7

    .line 322
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 327
    .line 328
    .line 329
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 4

    .line 1
    const-string v0, "Removing user "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "UsageStatsService"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " and all data."

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 36
    .line 37
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    :try_start_1
    iget-object v0, v0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 41
    .line 42
    .line 43
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 44
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 71
    .line 72
    monitor-enter v1

    .line 73
    :try_start_4
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 76
    .line 77
    .line 78
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 80
    .line 81
    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onUserRemoved(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onUserRemoved(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string/jumbo v1, "usagestats_prune"

    .line 94
    .line 95
    .line 96
    sget v2, Lcom/android/server/usage/UsageStatsIdleService;->$r8$clinit:I

    .line 97
    .line 98
    const-class v2, Landroid/app/job/JobScheduler;

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 105
    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 113
    .line 114
    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string/jumbo v0, "usagestats_mapping"

    .line 120
    .line 121
    .line 122
    const-class v1, Landroid/app/job/JobScheduler;

    .line 123
    .line 124
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 129
    .line 130
    if-eqz p0, :cond_2

    .line 131
    .line 132
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 137
    .line 138
    .line 139
    :cond_2
    return-void

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    throw p0

    .line 143
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 144
    throw p0

    .line 145
    :catchall_2
    move-exception p0

    .line 146
    goto :goto_2

    .line 147
    :catchall_3
    move-exception p0

    .line 148
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 149
    :try_start_8
    throw p0

    .line 150
    :goto_2
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 151
    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const/16 v4, 0x1d

    .line 34
    .line 35
    invoke-direct {v1, v4, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 36
    .line 37
    .line 38
    const-string v2, "android"

    .line 39
    .line 40
    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(ILandroid/app/usage/UsageEvents$Event;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 56
    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 80
    .line 81
    monitor-enter v1

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    :goto_0
    monitor-exit v1

    .line 104
    return-void

    .line 105
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    throw p0

    .line 107
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x5

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I
    .locals 1

    .line 1
    add-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    const/16 v0, -0x2710

    .line 4
    .line 5
    :try_start_0
    aget-object p1, p1, p2

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-gez p2, :cond_0

    .line 18
    .line 19
    const-string/jumbo p0, "the specified user does not exist."

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    const-string/jumbo p0, "the specified user is currently in a locked state."

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_1
    return p1

    .line 46
    :catch_0
    const-string p0, "invalid user specified."

    .line 47
    .line 48
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v0
.end method

.method public final persistGlobalComponentUsageLocked()V
    .locals 5

    .line 1
    const-string v0, "Failed to write "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 4
    .line 5
    check-cast v1, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v1, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DIR:Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Common usage stats directory does not exist: "

    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    :goto_0
    new-instance v2, Ljava/io/File;

    .line 54
    .line 55
    const-string v3, "globalcomponentusage"

    .line 56
    .line 57
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Landroid/util/AtomicFile;

    .line 61
    .line 62
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 67
    .line 68
    .line 69
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 71
    .line 72
    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->writeGlobalComponentUsage(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    move-object v3, v4

    .line 84
    goto :goto_4

    .line 85
    :catch_0
    move-object v3, v4

    .line 86
    goto :goto_2

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    goto :goto_4

    .line 89
    :catch_1
    :goto_2
    :try_start_2
    const-string p0, "UsageStatsService"

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :goto_3
    return-void

    .line 112
    :goto_4
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public final persistPendingEventsLocked(I)V
    .locals 7

    .line 1
    const-string v0, "Failed to write "

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/LinkedList;

    .line 10
    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/io/File;

    .line 26
    .line 27
    const-string/jumbo v3, "usagestats"

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const-string v4, "UsageStatsService"

    .line 38
    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, "Failed to create "

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "User "

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, " was already removed! Discarding pending events"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void

    .line 97
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string/jumbo v5, "pendingevents_"

    .line 102
    .line 103
    .line 104
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v2, Landroid/util/AtomicFile;

    .line 122
    .line 123
    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 124
    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 128
    .line 129
    .line 130
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :try_start_1
    invoke-static {v5, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    .line 136
    .line 137
    :try_start_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .line 139
    .line 140
    :goto_1
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto :goto_3

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    move-object v3, v5

    .line 148
    goto :goto_3

    .line 149
    :catch_0
    move-object v3, v5

    .line 150
    :catch_1
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v0, " for user "

    .line 163
    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :goto_2
    return-void

    .line 179
    :goto_3
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :cond_3
    :goto_4
    return-void
.end method

.method public publishBinderServices()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/usage/UsageStatsService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "usagestats"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final queryConfigurationStats(IIJJ)Ljava/util/List;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "Failed to query configuration stats for locked user "

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v0, "UsageStatsService"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move v1, p1

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-object v4

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move v1, p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    monitor-exit v2

    .line 50
    return-object v4

    .line 51
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    move-wide/from16 v8, p3

    .line 56
    .line 57
    move-wide/from16 v10, p5

    .line 58
    .line 59
    invoke-static/range {v6 .. v11}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object v11, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    .line 67
    .line 68
    const/4 v12, 0x1

    .line 69
    move v6, p2

    .line 70
    move-wide/from16 v7, p3

    .line 71
    .line 72
    move-wide/from16 v9, p5

    .line 73
    .line 74
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    :goto_0
    monitor-exit v2

    .line 79
    return-object v4

    .line 80
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw v0
.end method

.method public final queryEventStats(IIJJ)Ljava/util/List;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "Failed to query event stats for locked user "

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v0, "UsageStatsService"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move v1, p1

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-object v4

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move v1, p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    monitor-exit v2

    .line 50
    return-object v4

    .line 51
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    move-wide/from16 v8, p3

    .line 56
    .line 57
    move-wide/from16 v10, p5

    .line 58
    .line 59
    invoke-static/range {v6 .. v11}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object v11, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    .line 67
    .line 68
    const/4 v12, 0x1

    .line 69
    move v6, p2

    .line 70
    move-wide/from16 v7, p3

    .line 71
    .line 72
    move-wide/from16 v9, p5

    .line 73
    .line 74
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    :goto_0
    monitor-exit v2

    .line 79
    return-object v4

    .line 80
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw v0
.end method

.method public final queryEventsForPackage(ILjava/lang/String;JJZ)Landroid/app/usage/UsageEvents;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "Failed to query package events for locked user "

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v0, "UsageStatsService"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move v1, p1

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-object v4

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v1, p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    monitor-exit v2

    .line 50
    return-object v4

    .line 51
    :cond_1
    move-wide v6, p3

    .line 52
    move-wide/from16 v8, p5

    .line 53
    .line 54
    move-object v10, p2

    .line 55
    move/from16 v11, p7

    .line 56
    .line 57
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/usage/UserUsageStatsService;->queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    monitor-exit v2

    .line 62
    return-object v0

    .line 63
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw v0
.end method

.method public final queryEventsWithQueryFilters(IJJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "Failed to query events for locked user "

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v0, "UsageStatsService"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move v1, p1

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-object v4

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v1, p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    monitor-exit v2

    .line 50
    return-object v4

    .line 51
    :cond_1
    move-wide v6, p2

    .line 52
    move-wide/from16 v8, p4

    .line 53
    .line 54
    move/from16 v10, p6

    .line 55
    .line 56
    move-object/from16 v11, p7

    .line 57
    .line 58
    move-object/from16 v12, p8

    .line 59
    .line 60
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    monitor-exit v2

    .line 65
    return-object v0

    .line 66
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v0
.end method

.method public final queryUsageStats(IJJIZ)Ljava/util/List;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    const-string v2, "Failed to query usage stats for locked user "

    .line 4
    .line 5
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v3

    .line 8
    :try_start_0
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x0

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    const-string v0, "UsageStatsService"

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v3

    .line 39
    return-object v5

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    monitor-exit v3

    .line 49
    return-object v5

    .line 50
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 51
    .line 52
    .line 53
    move-result-wide v7

    .line 54
    move-wide/from16 v9, p2

    .line 55
    .line 56
    move-wide/from16 v11, p4

    .line 57
    .line 58
    invoke-static/range {v7 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    move-object v2, v5

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object v12, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    .line 67
    .line 68
    const/4 v13, 0x1

    .line 69
    move/from16 v7, p6

    .line 70
    .line 71
    move-wide/from16 v8, p2

    .line 72
    .line 73
    move-wide/from16 v10, p4

    .line 74
    .line 75
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :goto_0
    if-nez v2, :cond_3

    .line 80
    .line 81
    monitor-exit v3

    .line 82
    return-object v5

    .line 83
    :cond_3
    if-eqz p7, :cond_5

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    add-int/lit8 v4, v4, -0x1

    .line 90
    .line 91
    :goto_1
    if-ltz v4, :cond_5

    .line 92
    .line 93
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Landroid/app/usage/UsageStats;

    .line 98
    .line 99
    iget-object v6, v5, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v7, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 102
    .line 103
    invoke-virtual {v7, p1, v6}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_4

    .line 108
    .line 109
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-interface {v2, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    monitor-exit v3

    .line 120
    return-object v2

    .line 121
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw v0
.end method

.method public final readUsageSourceSetting()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "app_time_limit_usage_source"

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v11, p2

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 8
    .line 9
    const-string v1, "Too many app usage observers added by uid "

    .line 10
    .line 11
    invoke-virtual {v12}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v2, p4, v2

    .line 16
    .line 17
    if-ltz v2, :cond_3

    .line 18
    .line 19
    iget-object v13, v12, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 20
    .line 21
    monitor-enter v13

    .line 22
    move/from16 v2, p9

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v12, v2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 25
    .line 26
    .line 27
    move-result-object v14

    .line 28
    invoke-virtual {v12, v0}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 29
    .line 30
    .line 31
    move-result-object v15

    .line 32
    iget-object v2, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    :goto_0
    iget-object v2, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    int-to-long v2, v2

    .line 55
    invoke-virtual {v12}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimitObserverPerUidLimit()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    cmp-long v2, v2, v4

    .line 60
    .line 61
    if-gez v2, :cond_2

    .line 62
    .line 63
    new-instance v10, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 64
    .line 65
    cmp-long v0, p6, p4

    .line 66
    .line 67
    if-ltz v0, :cond_1

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    move-object/from16 v16, v0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object/from16 v16, p8

    .line 74
    .line 75
    :goto_1
    move-object v0, v10

    .line 76
    move-object v1, v12

    .line 77
    move-object v2, v14

    .line 78
    move-object v3, v15

    .line 79
    move/from16 v4, p2

    .line 80
    .line 81
    move-object/from16 v5, p3

    .line 82
    .line 83
    move-wide/from16 v6, p4

    .line 84
    .line 85
    move-wide/from16 v8, p6

    .line 86
    .line 87
    move-object/from16 p0, v12

    .line 88
    .line 89
    move-object v12, v10

    .line 90
    move-object/from16 v10, v16

    .line 91
    .line 92
    invoke-direct/range {v0 .. v10}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    .line 96
    .line 97
    invoke-virtual {v0, v11, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v14, v12}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    invoke-static {v14, v12, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 108
    .line 109
    .line 110
    monitor-exit v13

    .line 111
    return-void

    .line 112
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v2

    .line 130
    :goto_2
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw v0

    .line 132
    :cond_3
    move-object/from16 p0, v12

    .line 133
    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v2, "Time limit must be >= "

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0
.end method

.method public final registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .locals 15

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v9, p2

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    iget-object v10, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 7
    .line 8
    const-string v1, "Too many app usage observers added by uid "

    .line 9
    .line 10
    invoke-virtual {v10}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    cmp-long v2, p4, v2

    .line 15
    .line 16
    if-ltz v2, :cond_2

    .line 17
    .line 18
    iget-object v11, v10, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 19
    .line 20
    monitor-enter v11

    .line 21
    move/from16 v2, p7

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v10, v2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    invoke-virtual {v10, v0}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 28
    .line 29
    .line 30
    move-result-object v13

    .line 31
    iget-object v2, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    iget-object v2, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-long v2, v2

    .line 54
    invoke-virtual {v10}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageObserverPerUidLimit()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    cmp-long v2, v2, v4

    .line 59
    .line 60
    if-gez v2, :cond_1

    .line 61
    .line 62
    new-instance v14, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    .line 63
    .line 64
    move-object v0, v14

    .line 65
    move-object v1, v10

    .line 66
    move-object v2, v12

    .line 67
    move-object v3, v13

    .line 68
    move/from16 v4, p2

    .line 69
    .line 70
    move-object/from16 v5, p3

    .line 71
    .line 72
    move-wide/from16 v6, p4

    .line 73
    .line 74
    move-object/from16 v8, p6

    .line 75
    .line 76
    invoke-direct/range {v0 .. v8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v0, v9, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v12, v14}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    invoke-static {v12, v14, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 92
    .line 93
    .line 94
    monitor-exit v11

    .line 95
    return-void

    .line 96
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v2

    .line 114
    :goto_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw v0

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "Time limit must be >= "

    .line 121
    .line 122
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0
.end method

.method public final registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v12, p2

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v13, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 8
    .line 9
    const-string v1, "Too many app usage observers added by uid "

    .line 10
    .line 11
    invoke-virtual {v13}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v2, p4, v2

    .line 16
    .line 17
    if-ltz v2, :cond_2

    .line 18
    .line 19
    iget-object v14, v13, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 20
    .line 21
    monitor-enter v14

    .line 22
    move/from16 v2, p10

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v13, v2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 25
    .line 26
    .line 27
    move-result-object v15

    .line 28
    invoke-virtual {v13, v0}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    iget-object v2, v11, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    iget-object v2, v11, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    int-to-long v2, v2

    .line 55
    invoke-virtual {v13}, Lcom/android/server/usage/AppTimeLimitController;->getUsageSessionObserverPerUidLimit()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    cmp-long v2, v2, v4

    .line 60
    .line 61
    if-gez v2, :cond_1

    .line 62
    .line 63
    new-instance v9, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 64
    .line 65
    move-object v0, v9

    .line 66
    move-object v1, v13

    .line 67
    move-object v2, v15

    .line 68
    move-object v3, v11

    .line 69
    move/from16 v4, p2

    .line 70
    .line 71
    move-object/from16 v5, p3

    .line 72
    .line 73
    move-wide/from16 v6, p4

    .line 74
    .line 75
    move-object/from16 v8, p8

    .line 76
    .line 77
    move-object/from16 p0, v13

    .line 78
    .line 79
    move-object v13, v9

    .line 80
    move-wide/from16 v9, p6

    .line 81
    .line 82
    move-object/from16 p10, v15

    .line 83
    .line 84
    move-object v15, v11

    .line 85
    move-object/from16 v11, p9

    .line 86
    .line 87
    invoke-direct/range {v0 .. v11}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    move-object/from16 v0, p10

    .line 96
    .line 97
    invoke-virtual {v0, v13}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    .line 101
    .line 102
    .line 103
    move-result-wide v1

    .line 104
    invoke-static {v0, v13, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 105
    .line 106
    .line 107
    monitor-exit v14

    .line 108
    return-void

    .line 109
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v2

    .line 127
    :goto_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    throw v0

    .line 129
    :cond_2
    move-object/from16 p0, v13

    .line 130
    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v2, "Time limit must be >= "

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0
.end method

.method public final reportEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 13

    .line 1
    const-string v0, "Unexpected activity event reported! ("

    .line 2
    .line 3
    const-string v1, "Failed to report event for locked user "

    .line 4
    .line 5
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x2

    .line 28
    const-wide/16 v5, 0x0

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/16 v8, 0x17

    .line 32
    .line 33
    if-eq v2, v3, :cond_1

    .line 34
    .line 35
    if-eq v2, v4, :cond_1

    .line 36
    .line 37
    if-eq v2, v8, :cond_1

    .line 38
    .line 39
    move v2, v7

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 42
    .line 43
    iget-object v9, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v9, v5, v6, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_0
    iget-object v9, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v9, :cond_2

    .line 52
    .line 53
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 54
    .line 55
    invoke-virtual {v10, p1, v9}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_2

    .line 60
    .line 61
    iget v9, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 62
    .line 63
    or-int/2addr v9, v3

    .line 64
    iput v9, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 65
    .line 66
    :cond_2
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v9

    .line 69
    :try_start_0
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-nez v10, :cond_3

    .line 80
    .line 81
    const-string p0, "UsageStatsService"

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, " ("

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, "/"

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " eventType:"

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, " instanceId:"

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, ")"

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    monitor-exit v9

    .line 144
    return-void

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    goto/16 :goto_b

    .line 147
    .line 148
    :cond_3
    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 149
    .line 150
    const/16 v10, 0x9

    .line 151
    .line 152
    if-eq v1, v3, :cond_11

    .line 153
    .line 154
    if-eq v1, v4, :cond_e

    .line 155
    .line 156
    const/4 v3, 0x7

    .line 157
    if-eq v1, v3, :cond_c

    .line 158
    .line 159
    const/16 v3, 0x8

    .line 160
    .line 161
    if-eq v1, v3, :cond_b

    .line 162
    .line 163
    if-eq v1, v10, :cond_b

    .line 164
    .line 165
    const/16 v3, 0x13

    .line 166
    .line 167
    if-eq v1, v3, :cond_b

    .line 168
    .line 169
    const/16 v3, 0x14

    .line 170
    .line 171
    if-eq v1, v3, :cond_b

    .line 172
    .line 173
    if-eq v1, v8, :cond_5

    .line 174
    .line 175
    const/16 v3, 0x18

    .line 176
    .line 177
    if-eq v1, v3, :cond_4

    .line 178
    .line 179
    const/16 v0, 0x1f

    .line 180
    .line 181
    if-eq v1, v0, :cond_d

    .line 182
    .line 183
    goto/16 :goto_a

    .line 184
    .line 185
    :cond_4
    iput v8, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 186
    .line 187
    :cond_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 188
    .line 189
    iget v3, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 196
    .line 197
    if-nez v1, :cond_6

    .line 198
    .line 199
    const-string p0, "UsageStatsService"

    .line 200
    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v0, "/"

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v0, " event : "

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v0, " instanceId : "

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget p2, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string p2, ")"

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    monitor-exit v9

    .line 254
    return-void

    .line 255
    :cond_6
    iget v0, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 256
    .line 257
    if-eq v0, v4, :cond_7

    .line 258
    .line 259
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v4, v2, v0}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 265
    .line 266
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 268
    .line 269
    iget v3, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 270
    .line 271
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Landroid/util/ArraySet;

    .line 276
    .line 277
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 278
    if-eqz v2, :cond_9

    .line 279
    .line 280
    :try_start_2
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :try_start_3
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    move v3, v7

    .line 286
    :goto_1
    if-ge v3, v0, :cond_8

    .line 287
    .line 288
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    check-cast v4, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 293
    .line 294
    :try_start_4
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 295
    .line 296
    iget-object v6, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {v6, v4}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v5, p1, v4}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :catchall_1
    move-exception p0

    .line 307
    goto :goto_3

    .line 308
    :catch_0
    move-exception v4

    .line 309
    :try_start_5
    const-string v5, "UsageStatsService"

    .line 310
    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v8, "Failed to stop usage for during reporter death: "

    .line 317
    .line 318
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 332
    .line 333
    goto :goto_1

    .line 334
    :cond_8
    monitor-exit v2

    .line 335
    goto :goto_4

    .line 336
    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 337
    :try_start_6
    throw p0

    .line 338
    :cond_9
    :goto_4
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 339
    .line 340
    if-nez v0, :cond_a

    .line 341
    .line 342
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    .line 343
    .line 344
    iput-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 345
    .line 346
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    .line 347
    .line 348
    iput-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 349
    .line 350
    :cond_a
    :try_start_7
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 351
    .line 352
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->mUsageSourcePackage:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v0, p1, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 355
    .line 356
    .line 357
    goto/16 :goto_a

    .line 358
    .line 359
    :catch_1
    move-exception v0

    .line 360
    :try_start_8
    const-string v1, "UsageStatsService"

    .line 361
    .line 362
    const-string v2, "Failed to note usage stop"

    .line 363
    .line 364
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 365
    .line 366
    .line 367
    goto/16 :goto_a

    .line 368
    .line 369
    :catchall_2
    move-exception p0

    .line 370
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 371
    :try_start_a
    throw p0

    .line 372
    :cond_b
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 373
    .line 374
    invoke-static {v1, v2, v0}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_a

    .line 378
    .line 379
    :cond_c
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 380
    .line 381
    invoke-static {v3, v2, v0}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 388
    .line 389
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 390
    .line 391
    iget-wide v2, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 392
    .line 393
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    check-cast v0, Landroid/util/ArrayMap;

    .line 398
    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    goto/16 :goto_a

    .line 403
    .line 404
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 405
    .line 406
    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    check-cast v0, Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 413
    .line 414
    if-nez v0, :cond_10

    .line 415
    .line 416
    iget v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    .line 417
    .line 418
    if-eq v0, v4, :cond_f

    .line 419
    .line 420
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 421
    .line 422
    goto :goto_5

    .line 423
    :cond_f
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 424
    .line 425
    :goto_5
    :try_start_b
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 426
    .line 427
    invoke-virtual {v1, p1, v0, v5, v6}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(ILjava/lang/String;J)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 428
    .line 429
    .line 430
    goto :goto_6

    .line 431
    :catch_2
    move-exception v1

    .line 432
    :try_start_c
    const-string v2, "UsageStatsService"

    .line 433
    .line 434
    const-string v3, "Failed to note usage start"

    .line 435
    .line 436
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .line 438
    .line 439
    :goto_6
    new-instance v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 440
    .line 441
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 442
    .line 443
    iget-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 444
    .line 445
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 449
    .line 450
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 451
    .line 452
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    move-object v0, v1

    .line 456
    goto :goto_7

    .line 457
    :cond_10
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 458
    .line 459
    invoke-static {v4, v2, v1}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    .line 460
    .line 461
    .line 462
    :goto_7
    iput v4, v0, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 463
    .line 464
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 465
    .line 466
    if-nez v1, :cond_15

    .line 467
    .line 468
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    .line 469
    .line 470
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 471
    .line 472
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    .line 473
    .line 474
    iput-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 475
    .line 476
    goto :goto_a

    .line 477
    :cond_11
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 478
    .line 479
    const-string v1, ""

    .line 480
    .line 481
    const/16 v8, 0x10d

    .line 482
    .line 483
    invoke-static {v8, v2, v0, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 484
    .line 485
    .line 486
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 487
    .line 488
    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 489
    .line 490
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    if-eqz v0, :cond_12

    .line 495
    .line 496
    goto :goto_a

    .line 497
    :cond_12
    iget v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    .line 498
    .line 499
    if-eq v0, v4, :cond_13

    .line 500
    .line 501
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 502
    .line 503
    goto :goto_8

    .line 504
    :cond_13
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 505
    .line 506
    :goto_8
    :try_start_d
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 507
    .line 508
    invoke-virtual {v1, p1, v0, v5, v6}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(ILjava/lang/String;J)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 509
    .line 510
    .line 511
    goto :goto_9

    .line 512
    :catch_3
    move-exception v1

    .line 513
    :try_start_e
    const-string v2, "UsageStatsService"

    .line 514
    .line 515
    const-string v4, "Failed to note usage start"

    .line 516
    .line 517
    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .line 519
    .line 520
    :goto_9
    new-instance v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 521
    .line 522
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 523
    .line 524
    iget-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 525
    .line 526
    invoke-direct {v1, v2, v4, v0}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    iput v3, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 530
    .line 531
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 532
    .line 533
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 534
    .line 535
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 539
    .line 540
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 541
    .line 542
    invoke-interface {v0, v1, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    .line 543
    .line 544
    .line 545
    move-result-wide v0

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 547
    .line 548
    .line 549
    move-result-wide v2

    .line 550
    cmp-long v4, v0, v2

    .line 551
    .line 552
    if-ltz v4, :cond_14

    .line 553
    .line 554
    const-wide/32 v11, 0x240c8400

    .line 555
    .line 556
    .line 557
    add-long/2addr v2, v11

    .line 558
    cmp-long v0, v0, v2

    .line 559
    .line 560
    if-lez v0, :cond_15

    .line 561
    .line 562
    :cond_14
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 563
    .line 564
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 565
    .line 566
    invoke-interface {v0, v1, p1, v5, v6}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 567
    .line 568
    .line 569
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 570
    .line 571
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    if-eqz v0, :cond_15

    .line 576
    .line 577
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 578
    .line 579
    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 580
    .line 581
    .line 582
    :cond_15
    :goto_a
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    if-nez v0, :cond_16

    .line 587
    .line 588
    monitor-exit v9

    .line 589
    return-void

    .line 590
    :cond_16
    invoke-virtual {v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 591
    .line 592
    .line 593
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 594
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    .line 595
    .line 596
    const/16 v0, 0xc

    .line 597
    .line 598
    invoke-virtual {p0, v0, p1, v7, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 599
    .line 600
    .line 601
    move-result-object p0

    .line 602
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 603
    .line 604
    .line 605
    return-void

    .line 606
    :goto_b
    :try_start_f
    monitor-exit v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 607
    throw p0
.end method

.method public final reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-wide/32 v0, 0x80000

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const-string/jumbo v2, "usageStatsQueueEvent("

    .line 34
    .line 35
    .line 36
    const-string v3, ") #"

    .line 37
    .line 38
    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v3, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 43
    .line 44
    invoke-static {v3}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/util/LinkedList;

    .line 68
    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    new-instance v3, Ljava/util/LinkedList;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 p2, 0x1

    .line 92
    if-ne p1, p2, :cond_3

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 95
    .line 96
    const-wide/32 v3, 0x124f80

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    .line 101
    .line 102
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw p0
.end method

.method public final reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    .line 14
    .line 15
    invoke-direct {v3, p1}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

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
