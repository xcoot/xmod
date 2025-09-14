.class public final Lcom/android/server/job/JobSchedulerService$LocalService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/job/JobSchedulerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addBackingUpUid(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

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

.method public final cancelJobsForUid(IZIILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    move v1, p1

    .line 6
    move v2, p3

    .line 7
    move v3, p4

    .line 8
    move v4, p2

    .line 9
    move-object v7, p5

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final clearAllBackingUpUids()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final getCloudMediaProviderPackage(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>(Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final getSystemScheduledOwnJobs(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 18
    .line 19
    const/16 v2, 0x3e8

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/util/ArraySet;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-int/lit8 v3, v3, -0x1

    .line 34
    .line 35
    :goto_0
    if-ltz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 42
    .line 43
    iget v5, v4, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 44
    .line 45
    if-ne v5, v2, :cond_0

    .line 46
    .line 47
    iget-object v5, v4, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    const-string v5, "android"

    .line 56
    .line 57
    iget-object v6, v4, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    iget-object v4, v4, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 66
    .line 67
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    monitor-exit v0

    .line 74
    return-object v1

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final isAppConsideredBuggy(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 4
    .line 5
    const-string v1, "anr"

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 16
    .line 17
    const-string v1, ".schedulePersisted()"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 28
    .line 29
    const-string/jumbo p1, "timeout-total"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 42
    :goto_1
    return p0
.end method

.method public final isNotificationAssociatedWithAnyUserInitiatedJobs(IILjava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    .line 15
    .line 16
    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/util/IntArray;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 p1, -0x1

    .line 29
    if-eq p0, p1, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_1
    monitor-exit v1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    monitor-exit v1

    .line 37
    :goto_0
    return v0

    .line 38
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final isNotificationChannelAssociatedWithAnyUserInitiatedJobs(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_2

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/util/ArraySet;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    monitor-exit v1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v1

    .line 35
    :goto_0
    return v0

    .line 36
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_2
    :goto_2
    return v0
.end method

.method public final removeBackingUpUid(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final reportAppUsage(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
