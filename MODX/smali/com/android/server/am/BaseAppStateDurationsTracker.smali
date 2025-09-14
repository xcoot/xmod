.class public abstract Lcom/android/server/am/BaseAppStateDurationsTracker;
.super Lcom/android/server/am/BaseAppStateEventsTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUidStateDurations:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 11
    return-void
.end method


# virtual methods
.method public final dumpEventLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/BaseAppStateEvents;J)V
    .locals 8

    .line 1
    check-cast p3, Lcom/android/server/am/BaseAppStateDurations;

    .line 3
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 5
    iget v1, p3, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "  "

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    const-string v1, "(bg only)"

    .line 32
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    const-string v1, "    "

    .line 37
    if-eqz v0, :cond_4

    .line 39
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/BaseAppStateEventsTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;

    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/server/am/BaseAppStateDurations;

    .line 52
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 54
    array-length v4, v3

    .line 55
    if-lez v4, :cond_3

    .line 57
    const/4 v4, 0x0

    .line 58
    aget-object v3, v3, v4

    .line 60
    if-nez v3, :cond_1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v3, v4

    .line 64
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 66
    array-length v6, v5

    .line 67
    if-ge v3, v6, :cond_3

    .line 69
    aget-object v6, v5, v3

    .line 71
    if-eqz v6, :cond_2

    .line 73
    iget-object v7, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 75
    aget-object v7, v7, v4

    .line 77
    invoke-static {v6, v7}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 80
    move-result-object v6

    .line 81
    aput-object v6, v5, v3

    .line 83
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    :goto_1
    invoke-static {v1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/android/server/am/BaseAppStateEvents;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    const-string p0, "(fg + bg)"

    .line 110
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p3, p1, p0, p4, p5}, Lcom/android/server/am/BaseAppStateEvents;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    :goto_2
    invoke-static {v1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p3, p1, p0, p4, p5}, Lcom/android/server/am/BaseAppStateEvents;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 136
    :goto_3
    return-void
.end method

.method public final getTotalDurationsSince(IIJJ)J
    .locals 8

    .line 11
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/BaseAppStateDurations;

    if-nez v2, :cond_0

    .line 13
    monitor-exit v0

    const-wide/16 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-eqz p0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    invoke-virtual {v2, p0, p2}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;I)V

    :cond_1
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 17
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    move-result-wide p0

    monitor-exit v0

    :goto_0
    return-wide p0

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTotalDurationsSince(IILjava/lang/String;JJ)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/android/server/am/BaseAppStateDurations;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    const-wide/16 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseAppStateEventsTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/am/BaseAppStateDurations;

    .line 7
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;I)V

    move v2, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    move-result-wide p0

    monitor-exit v0

    goto :goto_0

    :cond_1
    move v2, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 9
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    move-result-wide p0

    monitor-exit v0

    :goto_0
    return-wide p0

    .line 10
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUidGone(I)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->onUidProcStateChanged(II)V

    .line 6
    return-void
.end method

.method public final onUidProcStateChanged(II)V
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
    goto :goto_2

    .line 18
    :cond_0
    const/4 v1, 0x4

    .line 19
    if-ge p2, v1, :cond_1

    .line 21
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 48
    if-nez v2, :cond_2

    .line 50
    new-instance v2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 52
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 54
    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 56
    check-cast v3, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    .line 58
    const-string v4, ""

    .line 60
    invoke-direct {v2, p1, v4, v3}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    .line 63
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    :cond_2
    const/4 p0, 0x0

    .line 69
    if-ge p2, v1, :cond_3

    .line 71
    const/4 p1, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move p1, p0

    .line 74
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 77
    move-result-wide v3

    .line 78
    new-instance p2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 80
    invoke-direct {p2, v3, v4}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    .line 83
    invoke-virtual {v2, p1, p2, p0}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final onUntrackingUidLocked(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 6
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateEventsTracker;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final trimLocked(J)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->trimLocked(J)V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 12
    :goto_0
    if-ltz v0, :cond_2

    .line 14
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_1
    iget-object v3, v1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 25
    array-length v3, v3

    .line 26
    if-ge v2, v3, :cond_0

    .line 28
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/am/BaseAppStateDurations;->trimEvents(IJ)V

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 45
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method
