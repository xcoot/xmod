.class public abstract Lcom/android/server/am/BaseAppStateEventsTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPkgEvents:Lcom/android/server/am/UidProcessMap;

.field public final mTopUids:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 4
    new-instance p1, Lcom/android/server/am/UidProcessMap;

    .line 6
    invoke-direct {p1}, Lcom/android/server/am/UidProcessMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 11
    new-instance p1, Landroid/util/ArraySet;

    .line 13
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
.end method

.method public abstract createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 7
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 9
    move-object v8, v1

    .line 10
    check-cast v8, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    .line 12
    iget-object v9, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v9

    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v10

    .line 19
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 21
    iget-object v12, v1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 26
    move-result v1

    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 29
    move v13, v1

    .line 30
    :goto_0
    if-ltz v13, :cond_1

    .line 32
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 35
    move-result v14

    .line 36
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    move-object v15, v1

    .line 41
    check-cast v15, Landroid/util/ArrayMap;

    .line 43
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 46
    move-result v1

    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 49
    move v5, v1

    .line 50
    :goto_1
    if-ltz v5, :cond_0

    .line 52
    invoke-virtual {v15, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/String;

    .line 58
    invoke-virtual {v15, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    move-object v4, v2

    .line 63
    check-cast v4, Lcom/android/server/am/BaseAppStateEvents;

    .line 65
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    const-string v2, "* "

    .line 70
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    const/16 v2, 0x2f

    .line 78
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 81
    invoke-static {v14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    const-string v2, " exemption="

    .line 90
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget v2, v4, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    .line 95
    invoke-virtual {v8, v14, v2, v1}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->getExemptionReasonString(IILjava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    move-object/from16 v1, p0

    .line 104
    move-object/from16 v2, p1

    .line 106
    move-object/from16 v3, p2

    .line 108
    move/from16 v16, v5

    .line 110
    move-wide v5, v10

    .line 111
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseAppStateEventsTracker;->dumpEventLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/BaseAppStateEvents;J)V

    .line 114
    add-int/lit8 v5, v16, -0x1

    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto :goto_2

    .line 119
    :cond_0
    add-int/lit8 v13, v13, -0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dumpOthers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p2

    .line 128
    invoke-virtual {v8, v7, v0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 131
    return-void

    .line 132
    :goto_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw v0
.end method

.method public dumpEventLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/BaseAppStateEvents;J)V
    .locals 0

    .line 1
    const-string p0, "  "

    .line 3
    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p3, p1, p0, p4, p5}, Lcom/android/server/am/BaseAppStateEvents;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 10
    return-void
.end method

.method public dumpOthers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/util/ArrayMap;

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 14
    return-object v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 18
    move-result v2

    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 21
    :goto_0
    if-ltz v2, :cond_3

    .line 23
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/am/BaseAppStateEvents;

    .line 29
    if-eqz v3, :cond_2

    .line 31
    if-nez v1, :cond_1

    .line 33
    iget-object v1, v3, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/BaseAppStateEventsTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;

    .line 38
    move-result-object v1

    .line 39
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/server/am/BaseAppStateEvents;->add(Lcom/android/server/am/BaseAppStateEvents;)V

    .line 42
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    return-object v1
.end method

.method public onUidGone(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public onUidProcStateChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 6
    iget-object v1, v1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 11
    move-result v1

    .line 12
    if-gez v1, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v1, 0x4

    .line 19
    if-ge p2, v1, :cond_1

    .line 21
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 40
    :goto_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final onUidRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 6
    iget-object v1, v1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker;->onUntrackingUidLocked(I)V

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

.method public onUntrackingUidLocked(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 6
    iget-object v1, v1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result v2

    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 14
    :goto_0
    if-ltz v2, :cond_1

    .line 16
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    move-result v3

    .line 20
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    move-result v4

    .line 24
    if-ne v4, p1, :cond_0

    .line 26
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 29
    invoke-virtual {p0, v3}, Lcom/android/server/am/BaseAppStateEventsTracker;->onUntrackingUidLocked(I)V

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 6
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 9
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    .line 11
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

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

.method public final trim(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->trimLocked(J)V

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public trimLocked(J)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    :goto_0
    if-ltz v0, :cond_4

    .line 13
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 22
    move-result v2

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 25
    :goto_1
    if-ltz v2, :cond_2

    .line 27
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/am/BaseAppStateEvents;

    .line 33
    const/4 v4, 0x0

    .line 34
    :goto_2
    iget-object v5, v3, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 36
    array-length v5, v5

    .line 37
    if-ge v4, v5, :cond_0

    .line 39
    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/am/BaseAppStateEvents;->trimEvents(IJ)V

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 54
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_3

    .line 63
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 66
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    return-void
.end method
