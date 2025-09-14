.class public final Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 23
    .line 24
    const-string v1, "Calling uid "

    .line 25
    .line 26
    const-string v2, " cannot query eventsfor package "

    .line 27
    .line 28
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final clearBroadcastEvents(Ljava/lang/String;I)V
    .locals 10

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    .line 11
    .line 12
    const-string v2, "clearBroadcastEvents"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v7, 0x0

    .line 26
    const-string v8, "clearBroadcastResponseStats"

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    move v4, v0

    .line 30
    move v5, p2

    .line 31
    move-object v9, p1

    .line 32
    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter p2

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/server/usage/UserBroadcastEvents;

    .line 50
    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    monitor-exit p2

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/usage/UserBroadcastEvents;->clear(I)V

    .line 58
    .line 59
    .line 60
    monitor-exit p2

    .line 61
    :goto_0
    return-void

    .line 62
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v2

    .line 9
    .line 10
    if-ltz v2, :cond_5

    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    .line 19
    .line 20
    const-string v5, "clearBroadcastResponseStats"

    .line 21
    .line 22
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/4 v10, 0x0

    .line 34
    const-string v11, "clearBroadcastResponseStats"

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    move v7, v3

    .line 38
    move/from16 v8, p5

    .line 39
    .line 40
    move-object/from16 v12, p4

    .line 41
    .line 42
    invoke-static/range {v6 .. v12}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 49
    .line 50
    iget-object v5, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v5

    .line 53
    :try_start_0
    iget-object v0, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/util/SparseArray;

    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    monitor-exit v5

    .line 64
    goto :goto_2

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_3

    .line 67
    :cond_0
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    monitor-exit v5

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    iget-object v3, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    add-int/lit8 v3, v3, -0x1

    .line 84
    .line 85
    :goto_0
    if-ltz v3, :cond_4

    .line 86
    .line 87
    iget-object v4, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/android/server/usage/BroadcastEvent;

    .line 94
    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    iget-wide v6, v4, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    .line 98
    .line 99
    cmp-long v6, p2, v6

    .line 100
    .line 101
    if-eqz v6, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    if-eqz v1, :cond_3

    .line 105
    .line 106
    iget-object v4, v4, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object v4, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    monitor-exit v5

    .line 124
    :goto_2
    return-void

    .line 125
    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw v0

    .line 127
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string v1, "id needs to be >=0"

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0
.end method

.method public final deleteUsageStats()V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x3e8

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    iget-object v1, v2, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/usage/UsageStatsDatabase;->prune(JZ)V

    .line 35
    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    :goto_0
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 39
    .line 40
    array-length v8, v7

    .line 41
    if-ge v6, v8, :cond_1

    .line 42
    .line 43
    aget-object v7, v7, v6

    .line 44
    .line 45
    if-eqz v7, :cond_0

    .line 46
    .line 47
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->clear()V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/android/server/usage/UserUsageStatsService;->init(JLjava/util/HashMap;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    :try_start_2
    const-string v1, "deleteUsageData fail: "

    .line 59
    .line 60
    const-string v2, "UsageStatsService"

    .line 61
    .line 62
    invoke-static {p0, v1, v2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    monitor-exit v0

    .line 66
    goto :goto_2

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_2
    :goto_2
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v4, "UsageStatsService"

    .line 14
    .line 15
    invoke-static {v3, v4, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 28
    .line 29
    const-string v4, "  "

    .line 30
    .line 31
    invoke-direct {v3, v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x1

    .line 41
    const/4 v7, 0x0

    .line 42
    if-eqz v2, :cond_19

    .line 43
    .line 44
    move v8, v5

    .line 45
    move v9, v8

    .line 46
    move v10, v9

    .line 47
    :goto_0
    array-length v11, v2

    .line 48
    if-ge v8, v11, :cond_1a

    .line 49
    .line 50
    aget-object v11, v2, v8

    .line 51
    .line 52
    const-string v12, "--checkin"

    .line 53
    .line 54
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    if-eqz v12, :cond_1

    .line 59
    .line 60
    move v9, v6

    .line 61
    goto/16 :goto_f

    .line 62
    .line 63
    :cond_1
    const-string v12, "-c"

    .line 64
    .line 65
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    if-eqz v12, :cond_2

    .line 70
    .line 71
    move v10, v6

    .line 72
    goto/16 :goto_f

    .line 73
    .line 74
    :cond_2
    const-string v12, "flush"

    .line 75
    .line 76
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    if-eqz v12, :cond_3

    .line 81
    .line 82
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v12

    .line 85
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 86
    .line 87
    .line 88
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 90
    .line 91
    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    .line 92
    .line 93
    .line 94
    const-string v0, "Flushed stats to disk"

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_17

    .line 100
    .line 101
    :catchall_0
    move-exception v0

    .line 102
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw v0

    .line 104
    :cond_3
    const-string v12, "is-app-standby-enabled"

    .line 105
    .line 106
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    if-eqz v12, :cond_4

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 113
    .line 114
    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_17

    .line 122
    .line 123
    :cond_4
    const-string v12, "apptimelimit"

    .line 124
    .line 125
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-eqz v12, :cond_6

    .line 130
    .line 131
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 132
    .line 133
    monitor-enter v12

    .line 134
    add-int/2addr v8, v6

    .line 135
    :try_start_2
    array-length v3, v2

    .line 136
    if-lt v8, v3, :cond_5

    .line 137
    .line 138
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 139
    .line 140
    invoke-virtual {v0, v1, v7}, Lcom/android/server/usage/AppTimeLimitController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    array-length v3, v2

    .line 147
    invoke-static {v2, v8, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, [Ljava/lang/String;

    .line 152
    .line 153
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_1
    monitor-exit v12

    .line 159
    goto/16 :goto_17

    .line 160
    .line 161
    :goto_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    throw v0

    .line 163
    :cond_6
    const-string v12, "file"

    .line 164
    .line 165
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    const/16 v13, -0x2710

    .line 170
    .line 171
    if-eqz v12, :cond_a

    .line 172
    .line 173
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 174
    .line 175
    const-string v4, "  "

    .line 176
    .line 177
    invoke-direct {v3, v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 181
    .line 182
    monitor-enter v12

    .line 183
    add-int/lit8 v1, v8, 0x1

    .line 184
    .line 185
    :try_start_3
    array-length v4, v2

    .line 186
    if-lt v1, v4, :cond_8

    .line 187
    .line 188
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    :goto_3
    if-ge v5, v1, :cond_9

    .line 195
    .line 196
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 197
    .line 198
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 203
    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-nez v4, :cond_7

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string/jumbo v6, "user="

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 237
    .line 238
    .line 239
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 240
    .line 241
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    .line 246
    .line 247
    invoke-virtual {v2, v3, v7}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 251
    .line 252
    .line 253
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :catchall_2
    move-exception v0

    .line 257
    goto :goto_5

    .line 258
    :cond_8
    invoke-virtual {v0, v2, v8, v3}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eq v1, v13, :cond_9

    .line 263
    .line 264
    add-int/lit8 v8, v8, 0x2

    .line 265
    .line 266
    array-length v4, v2

    .line 267
    invoke-static {v2, v8, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, [Ljava/lang/String;

    .line 272
    .line 273
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 280
    .line 281
    invoke-virtual {v0, v3, v2}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :cond_9
    monitor-exit v12

    .line 285
    goto/16 :goto_17

    .line 286
    .line 287
    :goto_5
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 288
    throw v0

    .line 289
    :cond_a
    const-string v12, "database-info"

    .line 290
    .line 291
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v12

    .line 295
    if-eqz v12, :cond_e

    .line 296
    .line 297
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 298
    .line 299
    const-string v4, "  "

    .line 300
    .line 301
    invoke-direct {v3, v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 305
    .line 306
    monitor-enter v12

    .line 307
    add-int/lit8 v1, v8, 0x1

    .line 308
    .line 309
    :try_start_4
    array-length v4, v2

    .line 310
    if-lt v1, v4, :cond_c

    .line 311
    .line 312
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 313
    .line 314
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    move v2, v5

    .line 319
    :goto_6
    if-ge v2, v1, :cond_d

    .line 320
    .line 321
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 322
    .line 323
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 328
    .line 329
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-nez v6, :cond_b

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string/jumbo v7, "user="

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 362
    .line 363
    .line 364
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 365
    .line 366
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    check-cast v4, Lcom/android/server/usage/UserUsageStatsService;

    .line 371
    .line 372
    iget-object v4, v4, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 373
    .line 374
    invoke-virtual {v4, v3, v5}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 378
    .line 379
    .line 380
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :catchall_3
    move-exception v0

    .line 384
    goto :goto_8

    .line 385
    :cond_c
    invoke-virtual {v0, v2, v8, v3}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eq v1, v13, :cond_d

    .line 390
    .line 391
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 398
    .line 399
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 400
    .line 401
    invoke-virtual {v0, v3, v5}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 402
    .line 403
    .line 404
    :cond_d
    monitor-exit v12

    .line 405
    goto/16 :goto_17

    .line 406
    .line 407
    :goto_8
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 408
    throw v0

    .line 409
    :cond_e
    const-string v12, "appstandby"

    .line 410
    .line 411
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v12

    .line 415
    if-eqz v12, :cond_f

    .line 416
    .line 417
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 418
    .line 419
    invoke-interface {v0, v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_17

    .line 423
    .line 424
    :cond_f
    const-string/jumbo v12, "stats-directory"

    .line 425
    .line 426
    .line 427
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v12

    .line 431
    if-eqz v12, :cond_11

    .line 432
    .line 433
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 434
    .line 435
    const-string v4, "  "

    .line 436
    .line 437
    invoke-direct {v3, v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 441
    .line 442
    monitor-enter v12

    .line 443
    :try_start_5
    invoke-virtual {v0, v2, v8, v3}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eq v0, v13, :cond_10

    .line 448
    .line 449
    new-instance v1, Ljava/io/File;

    .line 450
    .line 451
    invoke-static {v0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    const-string/jumbo v2, "usagestats"

    .line 456
    .line 457
    .line 458
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    goto :goto_9

    .line 469
    :catchall_4
    move-exception v0

    .line 470
    goto :goto_a

    .line 471
    :cond_10
    :goto_9
    monitor-exit v12

    .line 472
    goto/16 :goto_17

    .line 473
    .line 474
    :goto_a
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 475
    throw v0

    .line 476
    :cond_11
    const-string/jumbo v12, "mappings"

    .line 477
    .line 478
    .line 479
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v12

    .line 483
    if-eqz v12, :cond_13

    .line 484
    .line 485
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 486
    .line 487
    const-string v4, "  "

    .line 488
    .line 489
    invoke-direct {v3, v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 493
    .line 494
    monitor-enter v12

    .line 495
    :try_start_6
    invoke-virtual {v0, v2, v8, v3}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-eq v1, v13, :cond_12

    .line 500
    .line 501
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 508
    .line 509
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 510
    .line 511
    invoke-virtual {v0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 512
    .line 513
    .line 514
    goto :goto_b

    .line 515
    :catchall_5
    move-exception v0

    .line 516
    goto :goto_c

    .line 517
    :cond_12
    :goto_b
    monitor-exit v12

    .line 518
    goto/16 :goto_17

    .line 519
    .line 520
    :goto_c
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 521
    throw v0

    .line 522
    :cond_13
    const-string v12, "broadcast-response-stats"

    .line 523
    .line 524
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v12

    .line 528
    if-eqz v12, :cond_14

    .line 529
    .line 530
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 531
    .line 532
    monitor-enter v12

    .line 533
    :try_start_7
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 534
    .line 535
    invoke-virtual {v0, v3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 536
    .line 537
    .line 538
    monitor-exit v12

    .line 539
    goto/16 :goto_17

    .line 540
    .line 541
    :catchall_6
    move-exception v0

    .line 542
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 543
    throw v0

    .line 544
    :cond_14
    const-string v12, "app-component-usage"

    .line 545
    .line 546
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v12

    .line 550
    if-eqz v12, :cond_17

    .line 551
    .line 552
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 553
    .line 554
    const-string v3, "  "

    .line 555
    .line 556
    invoke-direct {v2, v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 560
    .line 561
    monitor-enter v12

    .line 562
    :try_start_8
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 563
    .line 564
    check-cast v1, Landroid/util/ArrayMap;

    .line 565
    .line 566
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    if-nez v1, :cond_16

    .line 571
    .line 572
    const-string v1, "App Component Usages:"

    .line 573
    .line 574
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 578
    .line 579
    .line 580
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 581
    .line 582
    check-cast v1, Landroid/util/ArrayMap;

    .line 583
    .line 584
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    if-eqz v3, :cond_15

    .line 597
    .line 598
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    check-cast v3, Ljava/lang/String;

    .line 603
    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    .line 605
    .line 606
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .line 608
    .line 609
    const-string/jumbo v5, "package="

    .line 610
    .line 611
    .line 612
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const-string v5, " lastUsed="

    .line 619
    .line 620
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 624
    .line 625
    check-cast v5, Landroid/util/ArrayMap;

    .line 626
    .line 627
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    check-cast v3, Ljava/lang/Long;

    .line 632
    .line 633
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 634
    .line 635
    .line 636
    move-result-wide v7

    .line 637
    invoke-static {v7, v8, v6}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    goto :goto_d

    .line 652
    :catchall_7
    move-exception v0

    .line 653
    goto :goto_e

    .line 654
    :cond_15
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 655
    .line 656
    .line 657
    :cond_16
    monitor-exit v12

    .line 658
    goto/16 :goto_17

    .line 659
    .line 660
    :goto_e
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 661
    throw v0

    .line 662
    :cond_17
    if-eqz v11, :cond_18

    .line 663
    .line 664
    const-string v12, "-"

    .line 665
    .line 666
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 667
    .line 668
    .line 669
    move-result v12

    .line 670
    if-nez v12, :cond_18

    .line 671
    .line 672
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    :cond_18
    :goto_f
    add-int/lit8 v8, v8, 0x1

    .line 676
    .line 677
    goto/16 :goto_0

    .line 678
    .line 679
    :cond_19
    move v9, v5

    .line 680
    move v10, v9

    .line 681
    :cond_1a
    const-string v8, "Flags:"

    .line 682
    .line 683
    const-string v11, "    android.app.usage.user_interaction_type_api: "

    .line 684
    .line 685
    invoke-static {v1, v8, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    move-result-object v8

    .line 689
    invoke-static {}, Landroid/app/usage/Flags;->userInteractionTypeApi()Z

    .line 690
    .line 691
    .line 692
    move-result v11

    .line 693
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    new-instance v8, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    const-string v11, "    android.app.usage.use_parceled_list: "

    .line 706
    .line 707
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-static {}, Landroid/app/usage/Flags;->useParceledList()Z

    .line 711
    .line 712
    .line 713
    move-result v11

    .line 714
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v8

    .line 721
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    new-instance v8, Ljava/lang/StringBuilder;

    .line 725
    .line 726
    const-string v11, "    android.app.usage.filter_based_event_query_api: "

    .line 727
    .line 728
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-static {}, Landroid/app/usage/Flags;->filterBasedEventQueryApi()Z

    .line 732
    .line 733
    .line 734
    move-result v11

    .line 735
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v8

    .line 742
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    new-instance v8, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    const-string v11, "    android.app.usage.disable_idle_check: "

    .line 748
    .line 749
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-static {}, Landroid/app/usage/Flags;->disableIdleCheck()Z

    .line 753
    .line 754
    .line 755
    move-result v11

    .line 756
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v8

    .line 763
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    iget-object v8, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 767
    .line 768
    monitor-enter v8

    .line 769
    :try_start_9
    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 770
    .line 771
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 772
    .line 773
    .line 774
    move-result v11

    .line 775
    new-array v12, v11, [I

    .line 776
    .line 777
    move v13, v5

    .line 778
    :goto_10
    if-ge v13, v11, :cond_1f

    .line 779
    .line 780
    iget-object v14, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 781
    .line 782
    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 783
    .line 784
    .line 785
    move-result v14

    .line 786
    aput v14, v12, v13

    .line 787
    .line 788
    const-string/jumbo v15, "user"

    .line 789
    .line 790
    .line 791
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 792
    .line 793
    .line 794
    move-result-object v5

    .line 795
    invoke-virtual {v3, v15, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 802
    .line 803
    .line 804
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 805
    .line 806
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 807
    .line 808
    .line 809
    move-result-object v15

    .line 810
    invoke-virtual {v5, v15}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    move-result v5

    .line 814
    if-eqz v5, :cond_1c

    .line 815
    .line 816
    if-eqz v9, :cond_1b

    .line 817
    .line 818
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 819
    .line 820
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v5

    .line 824
    check-cast v5, Lcom/android/server/usage/UserUsageStatsService;

    .line 825
    .line 826
    invoke-virtual {v5, v3}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 827
    .line 828
    .line 829
    :goto_11
    move/from16 v16, v9

    .line 830
    .line 831
    move v9, v6

    .line 832
    goto :goto_14

    .line 833
    :catchall_8
    move-exception v0

    .line 834
    goto/16 :goto_19

    .line 835
    .line 836
    :cond_1b
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 837
    .line 838
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    check-cast v5, Lcom/android/server/usage/UserUsageStatsService;

    .line 843
    .line 844
    invoke-virtual {v5, v3, v4, v10}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 848
    .line 849
    .line 850
    goto :goto_11

    .line 851
    :cond_1c
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 852
    .line 853
    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 854
    :try_start_a
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 855
    .line 856
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v14

    .line 860
    check-cast v14, Ljava/util/LinkedList;

    .line 861
    .line 862
    if-eqz v14, :cond_1e

    .line 863
    .line 864
    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z

    .line 865
    .line 866
    .line 867
    move-result v15

    .line 868
    if-nez v15, :cond_1e

    .line 869
    .line 870
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    .line 871
    .line 872
    .line 873
    move-result v15

    .line 874
    new-instance v7, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .line 878
    .line 879
    const-string v6, "Pending events: count="

    .line 880
    .line 881
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v6

    .line 891
    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 895
    .line 896
    .line 897
    const/4 v6, 0x0

    .line 898
    :goto_12
    if-ge v6, v15, :cond_1d

    .line 899
    .line 900
    invoke-virtual {v14, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v7

    .line 904
    check-cast v7, Landroid/app/usage/UsageEvents$Event;

    .line 905
    .line 906
    move/from16 v16, v9

    .line 907
    .line 908
    const/4 v9, 0x1

    .line 909
    invoke-static {v3, v7, v9}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 910
    .line 911
    .line 912
    add-int/lit8 v6, v6, 0x1

    .line 913
    .line 914
    move/from16 v9, v16

    .line 915
    .line 916
    goto :goto_12

    .line 917
    :catchall_9
    move-exception v0

    .line 918
    goto :goto_15

    .line 919
    :cond_1d
    move/from16 v16, v9

    .line 920
    .line 921
    const/4 v9, 0x1

    .line 922
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 923
    .line 924
    .line 925
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 926
    .line 927
    .line 928
    goto :goto_13

    .line 929
    :cond_1e
    move/from16 v16, v9

    .line 930
    .line 931
    move v9, v6

    .line 932
    :goto_13
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 933
    :goto_14
    :try_start_b
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 934
    .line 935
    .line 936
    add-int/lit8 v13, v13, 0x1

    .line 937
    .line 938
    move v6, v9

    .line 939
    move/from16 v9, v16

    .line 940
    .line 941
    const/4 v5, 0x0

    .line 942
    const/4 v7, 0x0

    .line 943
    goto/16 :goto_10

    .line 944
    .line 945
    :goto_15
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 946
    :try_start_d
    throw v0

    .line 947
    :cond_1f
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 948
    .line 949
    .line 950
    const-string v5, "Usage Source"

    .line 951
    .line 952
    iget v6, v0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    .line 953
    .line 954
    invoke-static {v6}, Landroid/app/usage/UsageStatsManager;->usageSourceToString(I)Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v6

    .line 958
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 962
    .line 963
    .line 964
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 965
    .line 966
    const/4 v6, 0x0

    .line 967
    invoke-virtual {v5, v1, v6}, Lcom/android/server/usage/AppTimeLimitController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 971
    .line 972
    .line 973
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 974
    .line 975
    invoke-virtual {v5, v3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 976
    .line 977
    .line 978
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 979
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 980
    .line 981
    invoke-interface {v5, v3, v12, v4}, Lcom/android/server/usage/AppStandbyInternal;->dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V

    .line 982
    .line 983
    .line 984
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 985
    .line 986
    .line 987
    move-result v4

    .line 988
    if-eqz v4, :cond_20

    .line 989
    .line 990
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 991
    .line 992
    .line 993
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 994
    .line 995
    invoke-interface {v4, v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 996
    .line 997
    .line 998
    :cond_20
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 999
    .line 1000
    monitor-enter v1

    .line 1001
    :try_start_e
    const-string/jumbo v2, "mUsageStatsWatchers = ["

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 1008
    .line 1009
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1018
    .line 1019
    .line 1020
    move-result v2

    .line 1021
    if-eqz v2, :cond_21

    .line 1022
    .line 1023
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v2

    .line 1027
    check-cast v2, Ljava/util/Map$Entry;

    .line 1028
    .line 1029
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    check-cast v2, Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    .line 1034
    .line 1035
    const-string v4, "  "

    .line 1036
    .line 1037
    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1041
    .line 1042
    .line 1043
    goto :goto_16

    .line 1044
    :catchall_a
    move-exception v0

    .line 1045
    goto :goto_18

    .line 1046
    :cond_21
    const-string v0, "]"

    .line 1047
    .line 1048
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    monitor-exit v1

    .line 1052
    :goto_17
    return-void

    .line 1053
    :goto_18
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 1054
    throw v0

    .line 1055
    :goto_19
    :try_start_f
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 1056
    throw v0
.end method

.method public final forceUsageSourceSettingRead()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v6, "getAppStandbyBucket"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    move v2, v8

    .line 19
    move v3, p3

    .line 20
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eq v0, v8, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 44
    .line 45
    const-string p1, "Don\'t have permission to query min app standby bucket"

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 54
    .line 55
    invoke-virtual {p2, p3, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 60
    .line 61
    invoke-static {v1, v8, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-ltz v0, :cond_3

    .line 66
    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    :try_start_1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 78
    .line 79
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/server/usage/AppStandbyInternal;->getAppMinStandbyBucket(Ljava/lang/String;IIZ)I

    .line 85
    .line 86
    .line 87
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    return p0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string p2, "Cannot get min standby bucket for non existent package ("

    .line 100
    .line 101
    const-string p3, ")"

    .line 102
    .line 103
    invoke-static {p2, p1, p3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    throw p0
.end method

.method public final getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v10

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-string v8, "getAppStandbyBucket"

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    move v4, v10

    .line 19
    move v5, p3

    .line 20
    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    invoke-virtual {v3, p1, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-ne v3, v10, :cond_0

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v4, 0x0

    .line 39
    :goto_0
    if-nez v4, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 49
    .line 50
    const-string v1, "Don\'t have permission to query app standby bucket"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 57
    .line 58
    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 59
    .line 60
    invoke-virtual {v5, v2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 65
    .line 66
    invoke-static {v6, v10, v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ltz v3, :cond_4

    .line 71
    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    if-nez v6, :cond_4

    .line 77
    .line 78
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 85
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    const/4 v5, 0x0

    .line 91
    move-object v1, p1

    .line 92
    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    .line 93
    .line 94
    .line 95
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    return v0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string v2, "Cannot get standby bucket for non existent package ("

    .line 108
    .line 109
    const-string v3, ")"

    .line 110
    .line 111
    invoke-static {v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    throw v0
.end method

.method public final getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v6, "getAppStandbyBucket"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    move v2, v8

    .line 19
    move v3, p2

    .line 20
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 31
    .line 32
    invoke-static {p1, v8, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 43
    .line 44
    invoke-interface {v2, p2}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBuckets(I)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return-object p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :try_start_2
    new-instance v3, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    invoke-direct {v3, p0, v8, p2, p1}, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/UsageStatsService$BinderService;IIZ)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 66
    .line 67
    .line 68
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 69
    .line 70
    invoke-direct {p0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 82
    .line 83
    const-string p1, "Don\'t have permission to query app standby bucket"

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    throw p0
.end method

.method public final getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-string v0, "android.permission.READ_DEVICE_CONFIG"

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 26
    .line 27
    const-string p1, "Caller doesn\'t have READ_DEVICE_CONFIG permission"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    .line 1
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p2

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 45
    .line 46
    const-wide/16 v1, 0x1

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    div-long/2addr p0, v3

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    mul-long/2addr p0, v0

    .line 58
    monitor-exit p2

    .line 59
    return-wide p0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 64
    .line 65
    const-string p1, "Don\'t have permission to query usage stats"

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 72
    .line 73
    const-string p1, "Caller doesn\'t have INTERACT_ACROSS_USERS permission"

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final getUsageSource()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 22
    .line 23
    const-string v0, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/usage/UsageStatsShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/usage/UsageStatsShellCommand;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    move-object v1, p0

    .line 21
    move-object v5, p4

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final hasObserverPermission()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0x3e8

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "android.permission.OBSERVE_APP_USAGE"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v3, 0x0

    .line 47
    :cond_2
    :goto_0
    return v3
.end method

.method public final varargs hasPermissions([Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x0

    .line 18
    move v1, v0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    array-length v4, p1

    .line 21
    if-ge v1, v4, :cond_2

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    aget-object v3, p1, v1

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    move v3, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v3, v0

    .line 36
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return v3
.end method

.method public final hasQueryPermission(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 14
    .line 15
    const/16 v3, 0x2b

    .line 16
    .line 17
    invoke-virtual {v1, v3, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x3

    .line 22
    const/4 v1, 0x0

    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "android.permission.PACKAGE_USAGE_STATS"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v2, v1

    .line 41
    :goto_0
    return v2

    .line 42
    :cond_2
    if-nez p1, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    move v2, v1

    .line 46
    :goto_1
    return v2
.end method

.method public final isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v10

    .line 9
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const-string v8, "isAppInactive"

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    move v4, v10

    .line 23
    move/from16 v5, p2

    .line 24
    .line 25
    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v13
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    move-object/from16 v2, p1

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 41
    .line 42
    const-wide/16 v5, 0x0

    .line 43
    .line 44
    invoke-virtual {v3, v1, v5, v6, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eq v1, v10, :cond_1

    .line 49
    .line 50
    return v4

    .line 51
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    return v4

    .line 58
    :cond_1
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 59
    .line 60
    invoke-static {v1, v10, v13}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    .line 61
    .line 62
    .line 63
    move-result v16

    .line 64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    :try_start_1
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 69
    .line 70
    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v14

    .line 76
    move-object/from16 v12, p1

    .line 77
    .line 78
    invoke-interface/range {v11 .. v16}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleFiltered(Ljava/lang/String;IJZ)Z

    .line 79
    .line 80
    .line 81
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    return v0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    throw v0
.end method

.method public final isAppStandbyEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isPackageExemptedFromBroadcastResponseStats(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.permission.DUMP"

    .line 11
    .line 12
    const-string v2, "isPackageExemptedFromBroadcastResponseStats"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 20
    .line 21
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    monitor-exit v0

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_0
    return v2

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final onCarrierPrivilegedAppsChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.BIND_CARRIER_SERVICES"

    .line 8
    .line 9
    const-string/jumbo v2, "onCarrierPrivilegedAppsChanged can only be called by privileged apps."

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 18
    .line 19
    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->clearCarrierPrivilegedApps()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v2

    .line 9
    .line 10
    if-ltz v2, :cond_5

    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    .line 19
    .line 20
    const-string/jumbo v5, "queryBroadcastResponseStats"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v10, 0x0

    .line 35
    const-string/jumbo v11, "queryBroadcastResponseStats"

    .line 36
    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    move v7, v3

    .line 40
    move/from16 v8, p5

    .line 41
    .line 42
    move-object/from16 v12, p4

    .line 43
    .line 44
    invoke-static/range {v6 .. v12}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    new-instance v5, Landroid/app/usage/BroadcastResponseStatsList;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v6, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v7, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v7

    .line 65
    :try_start_0
    iget-object v0, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/util/SparseArray;

    .line 72
    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    monitor-exit v7

    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_3

    .line 79
    :cond_0
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 84
    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    monitor-exit v7

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    iget-object v3, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    add-int/lit8 v3, v3, -0x1

    .line 96
    .line 97
    :goto_0
    if-ltz v3, :cond_4

    .line 98
    .line 99
    iget-object v4, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lcom/android/server/usage/BroadcastEvent;

    .line 106
    .line 107
    if-eqz v2, :cond_2

    .line 108
    .line 109
    iget-wide v8, v4, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    .line 110
    .line 111
    cmp-long v8, p2, v8

    .line 112
    .line 113
    if-eqz v8, :cond_2

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    if-eqz v1, :cond_3

    .line 117
    .line 118
    iget-object v4, v4, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    iget-object v4, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Landroid/app/usage/BroadcastResponseStats;

    .line 134
    .line 135
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_2
    invoke-direct {v5, v6}, Landroid/app/usage/BroadcastResponseStatsList;-><init>(Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    return-object v5

    .line 146
    :goto_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw v0

    .line 148
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string v1, "id needs to be >=0"

    .line 151
    .line 152
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0
.end method

.method public final queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p6

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v2

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v10

    .line 20
    :try_start_0
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 21
    .line 22
    move v5, p1

    .line 23
    move-wide v6, p2

    .line 24
    move-wide/from16 v8, p4

    .line 25
    .line 26
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p6

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v2

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v10

    .line 20
    :try_start_0
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 21
    .line 22
    move v5, p1

    .line 23
    move-wide v6, p2

    .line 24
    move-wide/from16 v8, p4

    .line 25
    .line 26
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventStats(IIJJ)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 9

    .line 1
    invoke-virtual {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    move-object v0, p0

    .line 17
    move-wide v2, p1

    .line 18
    move-wide v4, p3

    .line 19
    move-object v6, p5

    .line 20
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/UsageStatsService$BinderService;->queryEventsHelper(IJJLjava/lang/String;[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v8

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 21
    .line 22
    move-object v2, p5

    .line 23
    move-wide v3, p1

    .line 24
    move-wide v5, p3

    .line 25
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(ILjava/lang/String;JJZ)Landroid/app/usage/UsageEvents;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public final queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p7

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    move/from16 v3, p5

    .line 17
    .line 18
    if-eq v3, v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 27
    .line 28
    const-string v4, "No permission to query usage stats for this user"

    .line 29
    .line 30
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/16 v2, 0x3e8

    .line 42
    .line 43
    if-ne v1, v2, :cond_2

    .line 44
    .line 45
    move-object/from16 v1, p6

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object/from16 v1, p6

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 54
    .line 55
    .line 56
    move-result-wide v10

    .line 57
    :try_start_0
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 58
    .line 59
    const/4 v9, 0x1

    .line 60
    move/from16 v3, p5

    .line 61
    .line 62
    move-object/from16 v4, p6

    .line 63
    .line 64
    move-wide v5, p1

    .line 65
    move-wide v7, p3

    .line 66
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(ILjava/lang/String;JJZ)Landroid/app/usage/UsageEvents;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method public final queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 9

    .line 1
    invoke-virtual {p0, p6}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq p5, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 22
    .line 23
    const-string v4, "No permission to query usage stats for this user"

    .line 24
    .line 25
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    move-object v0, p0

    .line 32
    move v1, p5

    .line 33
    move-wide v2, p1

    .line 34
    move-wide v4, p3

    .line 35
    move-object v6, p6

    .line 36
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/UsageStatsService$BinderService;->queryEventsHelper(IJJLjava/lang/String;[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public final queryEventsHelper(IJJLjava/lang/String;[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static {v3, v1, v4}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    :try_start_0
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 26
    .line 27
    iget-object v7, v6, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 28
    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    const-class v7, Landroid/content/pm/ShortcutServiceInternal;

    .line 32
    .line 33
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Landroid/content/pm/ShortcutServiceInternal;

    .line 38
    .line 39
    iput-object v7, v6, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 40
    .line 41
    :cond_0
    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    move/from16 v9, p1

    .line 47
    .line 48
    move-object/from16 v8, p6

    .line 49
    .line 50
    invoke-virtual {v6, v9, v8, v2, v1}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    xor-int/2addr v6, v7

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move/from16 v9, p1

    .line 57
    .line 58
    move v6, v7

    .line 59
    :goto_0
    iget-object v8, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    const/16 v11, 0x3e8

    .line 63
    .line 64
    if-ne v1, v11, :cond_3

    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    :cond_2
    move v8, v10

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string v12, "android.permission.ACCESS_LOCUS_ID_USAGE_STATS"

    .line 76
    .line 77
    invoke-virtual {v8, v12, v2, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_2

    .line 82
    .line 83
    move v8, v7

    .line 84
    :goto_1
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 85
    .line 86
    if-ne v1, v11, :cond_4

    .line 87
    .line 88
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {v12}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    const-string v12, "android.permission.MANAGE_NOTIFICATIONS"

    .line 97
    .line 98
    invoke-virtual {v11, v12, v2, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move v7, v10

    .line 106
    :goto_2
    move v10, v7

    .line 107
    :goto_3
    if-eqz v6, :cond_6

    .line 108
    .line 109
    or-int/lit8 v3, v3, 0x2

    .line 110
    .line 111
    :cond_6
    if-eqz v8, :cond_7

    .line 112
    .line 113
    or-int/lit8 v3, v3, 0x8

    .line 114
    .line 115
    :cond_7
    if-eqz v10, :cond_8

    .line 116
    .line 117
    or-int/lit8 v1, v3, 0x4

    .line 118
    .line 119
    move v14, v1

    .line 120
    goto :goto_4

    .line 121
    :cond_8
    move v14, v3

    .line 122
    :goto_4
    iget-object v8, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 123
    .line 124
    move/from16 v9, p1

    .line 125
    .line 126
    move-wide/from16 v10, p2

    .line 127
    .line 128
    move-wide/from16 v12, p4

    .line 129
    .line 130
    move-object/from16 v15, p7

    .line 131
    .line 132
    move-object/from16 v16, p8

    .line 133
    .line 134
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/usage/UsageStatsService;->queryEventsWithQueryFilters(IJJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    .line 135
    .line 136
    .line 137
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    .line 145
    .line 146
    throw v0
.end method

.method public final queryEventsWithFilter(Landroid/app/usage/UsageEventsQuery;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 12

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/app/usage/UsageEventsQuery;->getUserId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, -0x2710

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    move v4, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v4, v1

    .line 30
    :goto_0
    if-eq v4, v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "No permission to query usage stats for user "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/app/usage/UsageEventsQuery;->getBeginTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    invoke-virtual {p1}, Landroid/app/usage/UsageEventsQuery;->getEndTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    invoke-virtual {p1}, Landroid/app/usage/UsageEventsQuery;->getEventTypes()[I

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    new-instance v11, Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/app/usage/UsageEventsQuery;->getPackageNames()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v11, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    move-object v3, p0

    .line 79
    move-object v9, p2

    .line 80
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/usage/UsageStatsService$BinderService;->queryEventsHelper(IJJLjava/lang/String;[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public final queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p6

    .line 4
    .line 5
    invoke-virtual {v0, v7}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasQueryPermission(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v8, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v8

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v5, 0x1

    .line 22
    const-string/jumbo v6, "queryUsageStats"

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    move v2, v9

    .line 27
    move/from16 v3, p7

    .line 28
    .line 29
    move-object/from16 v7, p6

    .line 30
    .line 31
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v1, v9, v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    .line 42
    .line 43
    .line 44
    move-result v17

    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    :try_start_0
    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 50
    .line 51
    move-wide/from16 v12, p2

    .line 52
    .line 53
    move-wide/from16 v14, p4

    .line 54
    .line 55
    move/from16 v16, p1

    .line 56
    .line 57
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IJJIZ)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    .line 64
    .line 65
    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-object v3

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    return-object v8

    .line 78
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public final registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v3, p2

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v4, "android.permission.SUSPEND_APPS"

    .line 14
    .line 15
    const-string v5, "android.permission.OBSERVE_APP_USAGE"

    .line 16
    .line 17
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p0, v4}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveSupervisionApp(I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 37
    .line 38
    const-string v1, "Caller must be the active supervision app or it must have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    .line 45
    .line 46
    array-length v2, v3

    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    if-nez p7, :cond_3

    .line 50
    .line 51
    cmp-long v2, p5, p3

    .line 52
    .line 53
    if-ltz v2, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 57
    .line 58
    const-string v1, "callbackIntent can\'t be null"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 69
    .line 70
    .line 71
    move-result-wide v10

    .line 72
    :try_start_0
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 73
    .line 74
    move v2, p1

    .line 75
    move-object v3, p2

    .line 76
    move-wide v4, p3

    .line 77
    move-wide/from16 v6, p5

    .line 78
    .line 79
    move-object/from16 v8, p7

    .line 80
    .line 81
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string v1, "Must specify at least one package"

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0
.end method

.method public final registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 11

    .line 1
    move-object v0, p2

    .line 2
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    if-eqz p5, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v9

    .line 27
    move-object v1, p0

    .line 28
    :try_start_0
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 29
    .line 30
    move v3, p1

    .line 31
    move-object v4, p2

    .line 32
    move-wide v5, p3

    .line 33
    move-object/from16 v7, p5

    .line 34
    .line 35
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 48
    .line 49
    const-string v1, "callbackIntent can\'t be null"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string v1, "Must specify at least one package"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 64
    .line 65
    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public final registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eqz p7, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    .line 22
    .line 23
    move-result v11

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v12

    .line 28
    move-object v1, p0

    .line 29
    :try_start_0
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 30
    .line 31
    move v3, p1

    .line 32
    move-object/from16 v4, p2

    .line 33
    .line 34
    move-wide/from16 v5, p3

    .line 35
    .line 36
    move-wide/from16 v7, p5

    .line 37
    .line 38
    move-object/from16 v9, p7

    .line 39
    .line 40
    move-object/from16 v10, p8

    .line 41
    .line 42
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/usage/UsageStatsService;->registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 55
    .line 56
    const-string v1, "limitReachedCallbackIntent can\'t be null"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string v1, "Must specify at least one observed entity"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 71
    .line 72
    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method public final registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final registerUsageStatsWatcherWithComponent(Lcom/samsung/android/app/usage/IUsageStatsWatcher;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchersComponent:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p3, :cond_5

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->isBlank()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_5

    .line 10
    .line 11
    if-eqz p5, :cond_5

    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/String;->isBlank()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {}, Landroid/app/usage/Flags;->reportUsageStatsPermission()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v1, 0x3e8

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "android.permission.REPORT_USAGE_STATS"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 55
    .line 56
    const-string p1, "Only the system or holders of the REPORT_USAGE_STATS permission are allowed to call reportChooserSelection"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 65
    .line 66
    const-wide/16 v1, 0x0

    .line 67
    .line 68
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-gez v0, :cond_4

    .line 73
    .line 74
    const-string p0, "UsageStatsService"

    .line 75
    .line 76
    const-string p1, "Event report user selecting an invalid package"

    .line 77
    .line 78
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    .line 83
    .line 84
    const/16 v1, 0x9

    .line 85
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 91
    .line 92
    .line 93
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 94
    .line 95
    iput-object p5, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 96
    .line 97
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 98
    .line 99
    iput-object p4, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 102
    .line 103
    invoke-virtual {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_1
    return-void

    .line 107
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string p1, "Package selection must not be null."

    .line 110
    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0
.end method

.method public final reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 16
    .line 17
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/util/ArraySet;

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    new-instance v4, Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 40
    .line 41
    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    :try_start_3
    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 62
    :try_start_4
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 65
    .line 66
    invoke-static {p5, p2}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(ILjava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :catchall_2
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :try_start_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p2, " for "

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p2, " is already reported as started for this activity"

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :goto_1
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 113
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 114
    :goto_2
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 115
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 116
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method public final reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-wide/16 v3, 0x0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Unknown reporter trying to stop token "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 16
    .line 17
    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 18
    .line 19
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 21
    .line 22
    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/util/ArraySet;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 37
    :try_start_2
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :try_start_4
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 48
    .line 49
    invoke-static {p3, p2}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    :try_start_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p2, " for "

    .line 75
    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p2, " is already reported as stopped for this activity"

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :goto_0
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 97
    :catchall_2
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    :try_start_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p2, " for "

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :goto_1
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 126
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 127
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    .line 129
    .line 130
    throw p0
.end method

.method public final reportUserInteraction(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportUserInteractionInnerHelper(Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final reportUserInteractionInnerHelper(Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/app/usage/Flags;->reportUsageStatsPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "android.permission.REPORT_USAGE_STATS"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eq p2, v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 47
    .line 48
    const-string v2, "Caller doesn\'t have INTERACT_ACROSS_USERS_FULL permission"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 55
    .line 56
    const-string p1, "Only the system or holders of the REPORT_USAGE_STATS permission are allowed to call reportUserInteraction"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ne v0, v1, :cond_5

    .line 71
    .line 72
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 75
    .line 76
    const-wide/16 v1, 0x0

    .line 77
    .line 78
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ltz v0, :cond_4

    .line 83
    .line 84
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    .line 85
    .line 86
    const/4 v1, 0x7

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 92
    .line 93
    .line 94
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 95
    .line 96
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 99
    .line 100
    invoke-virtual {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string p2, "Package "

    .line 107
    .line 108
    const-string p3, " does not exist!"

    .line 109
    .line 110
    invoke-static {p2, p1, p3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 119
    .line 120
    const-string p1, "Only system is allowed to call reportUserInteraction"

    .line 121
    .line 122
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0
.end method

.method public final reportUserInteractionWithBundle(Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_2

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/os/PersistableBundle;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const-string v0, "android.app.usage.extra.EVENT_CATEGORY"

    .line 13
    .line 14
    invoke-virtual {p3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    const-string v2, "android.app.usage.extra.EVENT_ACTION"

    .line 25
    .line 26
    invoke-virtual {p3, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    new-instance v3, Landroid/os/PersistableBundle;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 42
    .line 43
    invoke-static {v4, v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetTrimmedString(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v3, v0, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 51
    .line 52
    invoke-static {v0, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetTrimmedString(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {v3, v2, p3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportUserInteractionInnerHelper(Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string p1, "Empty android.app.usage.extra.EVENT_ACTION"

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string p1, "Empty android.app.usage.extra.EVENT_CATEGORY"

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string p1, "Emtry extras!"

    .line 82
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final setAppInactive(Ljava/lang/String;ZI)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string/jumbo v6, "setAppInactive"

    .line 14
    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    move v3, p3

    .line 20
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    .line 31
    .line 32
    const-string v2, "No permission to change app idle state"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 44
    .line 45
    invoke-interface {v2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppId(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    if-gez v2, :cond_0

    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 58
    .line 59
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->setAppIdleAsync(Ljava/lang/String;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    throw p0
.end method

.method public final setAppStandbyBucket(Ljava/lang/String;II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBucket_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v4

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v6

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 19
    .line 20
    move-object v1, p1

    .line 21
    move v2, p2

    .line 22
    move v3, p3

    .line 23
    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucket(Ljava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBuckets_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBuckets(Ljava/util/List;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final setEstimatedLaunchTime(Ljava/lang/String;JI)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTime_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v2, p2, v2

    .line 18
    .line 19
    if-gtz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 23
    .line 24
    invoke-interface {v2, p1, p4}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    cmp-long v2, p2, v2

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 33
    .line 34
    invoke-interface {v2, p1, p4, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p4, p1}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 44
    .line 45
    const/16 p1, 0x9

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTimes_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p0, p2, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$msetEstimatedLaunchTimes(Lcom/android/server/usage/UsageStatsService;ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final unregisterAppUsageLimitObserver(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "android.permission.SUSPEND_APPS"

    .line 12
    .line 13
    const-string v2, "android.permission.OBSERVE_APP_USAGE"

    .line 14
    .line 15
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveSupervisionApp(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 35
    .line 36
    const-string p1, "Caller must be the active supervision app or it must have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 54
    .line 55
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 67
    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    throw p0
.end method

.method public final unregisterAppUsageObserver(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 23
    .line 24
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 58
    .line 59
    const-string p1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public final unregisterUsageSessionObserver(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 23
    .line 24
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 58
    .line 59
    const-string p1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public final unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchersComponent:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method
