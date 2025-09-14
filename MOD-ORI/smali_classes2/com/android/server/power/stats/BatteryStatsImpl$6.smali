.class public final Lcom/android/server/power/stats/BatteryStatsImpl$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$6;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAfterIsolatedUidRemoved(II)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$6;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    monitor-enter p0

    .line 16
    move-object v0, p0

    .line 17
    move v1, p2

    .line 18
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :goto_0
    if-gez p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p2, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 38
    .line 39
    .line 40
    :goto_1
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1
.end method

.method public final onBeforeIsolatedUidRemoved(I)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$6;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->retainIsolatedUid(I)V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPendingRemovedUids:Ljava/util/Queue;

    .line 16
    .line 17
    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;

    .line 18
    .line 19
    move-object v0, v7

    .line 20
    move-object v1, p0

    .line 21
    move v2, p1

    .line 22
    move v3, p1

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;IIJ)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v6, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mExternalSync:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    monitor-enter p0

    .line 35
    :try_start_1
    const-string/jumbo p1, "remove-uid"

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(ILjava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 48
    :catchall_1
    move-exception p1

    .line 49
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    throw p1
.end method

.method public final onIsolatedUidAdded(II)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$6;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    monitor-enter p0

    .line 16
    move-object v0, p0

    .line 17
    move v1, p2

    .line 18
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ltz v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    .line 42
    .line 43
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;

    .line 44
    .line 45
    invoke-direct {v1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p1
.end method
