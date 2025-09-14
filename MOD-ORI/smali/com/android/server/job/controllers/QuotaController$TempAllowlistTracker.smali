.class public final Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppAdded(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    sub-int/2addr v6, v4

    .line 42
    :goto_0
    if-ltz v6, :cond_1

    .line 43
    .line 44
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 45
    .line 46
    iget-object v7, v7, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 47
    .line 48
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v7, v5, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    invoke-virtual {v7, v1, v2, v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 72
    .line 73
    invoke-static {v1, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-lez v1, :cond_2

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0
.end method

.method public final onAppRemoved(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 16
    .line 17
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 18
    .line 19
    add-long/2addr v1, v4

    .line 20
    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 28
    .line 29
    invoke-virtual {v3, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 45
    .line 46
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 47
    .line 48
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method
