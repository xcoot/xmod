.class public final Lcom/android/server/usage/UsageStatsService$LocalService;
.super Landroid/app/usage/UsageStatsManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(ILjava/lang/String;[B)V
    .locals 4

    .line 1
    const-string v0, "Failed to apply restored payload for locked user "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string p0, "UsageStatsService"

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 57
    .line 58
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->applyRestoredPayload(Ljava/lang/String;[B)Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 65
    .line 66
    invoke-interface {p0, p2, p1}, Lcom/android/server/usage/AppStandbyInternal;->restoreAppsToRare(Ljava/util/Set;I)V

    .line 67
    .line 68
    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 71
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final getAppStandbyBucket(ILjava/lang/String;J)I
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v1, p2

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p3

    .line 9
    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getBackupPayload(ILjava/lang/String;)[B
    .locals 4

    .line 1
    const-string v0, "Returning backup payload for u="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string p0, "UsageStatsService"

    .line 19
    .line 20
    const-string p2, "Failed to get backup payload for locked user "

    .line 21
    .line 22
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    monitor-exit v1

    .line 40
    return-object v2

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v2, "UsageStatsService"

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 67
    .line 68
    const/4 p1, 0x4

    .line 69
    invoke-virtual {p0, p2, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;I)[B

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    monitor-exit v1

    .line 74
    return-object p0

    .line 75
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final reportEvent(IILjava/lang/String;)V
    .locals 3

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string p0, "Event reported without a package name, eventType:"

    .line 4
    .line 5
    const-string p1, "UsageStatsService"

    .line 6
    .line 7
    invoke-static {p2, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-direct {v0, p2, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 18
    .line 19
    .line 20
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final reportUserInteractionEvent(Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/os/PersistableBundle;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "android.app.usage.extra.EVENT_CATEGORY"

    .line 10
    .line 11
    invoke-virtual {p3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "android.app.usage.extra.EVENT_ACTION"

    .line 16
    .line 17
    invoke-virtual {p3, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetTrimmedString(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p3, v0, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetTrimmedString(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p3, v2, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    .line 36
    .line 37
    const/4 v1, 0x7

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 43
    .line 44
    .line 45
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 48
    .line 49
    invoke-virtual {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
