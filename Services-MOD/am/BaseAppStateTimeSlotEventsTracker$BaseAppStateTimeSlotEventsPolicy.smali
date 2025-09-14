.class public abstract Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;
.super Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultNumOfEventsThreshold:I

.field public final mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

.field public final mKeyNumOfEventsThreshold:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public volatile mNumOfEventsThreshold:I

.field public mTimeSlotSize:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v4, 0x1

    .line 2
    const-wide/32 v6, 0x5265c00

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v5, p4

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 13
    new-instance p1, Lcom/android/internal/app/ProcessMap;

    .line 15
    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    .line 20
    const-wide/32 p3, 0xdbba0

    .line 23
    iput-wide p3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    .line 25
    iput-object p5, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    .line 27
    const/16 p1, 0x2710

    .line 29
    iput p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mDefaultNumOfEventsThreshold:I

    .line 31
    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    const/16 v0, 0x3d

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 21
    iget v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 26
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    const-string/jumbo p2, "event_time_slot_size="

    .line 32
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    .line 37
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 40
    return-void
.end method

.method public final getProposedRestrictionLevel(IILjava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    .line 6
    invoke-virtual {v1, p3, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    const/16 p3, 0x1e

    .line 12
    const/16 v1, 0x28

    .line 14
    if-eqz p1, :cond_1

    .line 16
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 18
    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    .line 20
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 22
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 24
    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    .line 26
    if-nez p0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v1

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_0
    move p0, p3

    .line 34
    :goto_1
    if-le p2, v1, :cond_2

    .line 36
    monitor-exit v0

    .line 37
    return p0

    .line 38
    :cond_2
    if-ne p2, v1, :cond_3

    .line 40
    monitor-exit v0

    .line 41
    return p3

    .line 42
    :cond_3
    monitor-exit v0

    .line 43
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final onExcessiveEvents(ILjava/lang/String;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    .line 6
    invoke-virtual {v1, p2, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Long;

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    .line 17
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {v1, p2, p1, p3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 24
    move p2, v2

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 p2, 0x0

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eqz p2, :cond_1

    .line 32
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 34
    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    .line 36
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 38
    const/16 p2, 0x600

    .line 40
    const/4 p3, 0x2

    .line 41
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 44
    :cond_1
    return-void

    .line 45
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method

.method public final onMaxTrackingDurationChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 3
    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    .line 5
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy$$ExternalSyntheticLambda0;

    .line 12
    invoke-direct {v1, p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void
.end method

.method public final onPropertiesChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->updateNumOfEventsThreshold()V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onPropertiesChanged(Ljava/lang/String;)V

    .line 16
    :goto_0
    return-void
.end method

.method public final onSystemReady()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onSystemReady()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->updateNumOfEventsThreshold()V

    .line 7
    return-void
.end method

.method public final onTrackerEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 3
    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    .line 5
    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 15
    monitor-exit p1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    :goto_0
    return-void
.end method

.method public setTimeSlotSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    .line 3
    return-void
.end method

.method public final updateNumOfEventsThreshold()V
    .locals 11

    .line 1
    const-string v0, "activity_manager"

    .line 3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    .line 5
    iget v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mDefaultNumOfEventsThreshold:I

    .line 7
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    .line 13
    if-eq v0, v1, :cond_4

    .line 15
    iput v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    .line 17
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 19
    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v1

    .line 28
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v3

    .line 31
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 33
    iget-object v4, v4, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 38
    move-result v5

    .line 39
    add-int/lit8 v5, v5, -0x1

    .line 41
    :goto_0
    if-ltz v5, :cond_2

    .line 43
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroid/util/ArrayMap;

    .line 49
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 52
    move-result v7

    .line 53
    add-int/lit8 v7, v7, -0x1

    .line 55
    :goto_1
    if-ltz v7, :cond_1

    .line 57
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 60
    move-result-object v8

    .line 61
    check-cast v8, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 63
    const-wide/16 v9, 0x0

    .line 65
    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 68
    move-result-wide v9

    .line 69
    invoke-virtual {v8, v9, v10, v1, v2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getTotalEventsSince(JJ)I

    .line 72
    move-result v9

    .line 73
    if-lt v9, v0, :cond_0

    .line 75
    iget-object v10, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    .line 77
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v10, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_4

    .line 87
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, -0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    .line 96
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 99
    move-result v0

    .line 100
    add-int/lit8 v0, v0, -0x1

    .line 102
    :goto_3
    if-ltz v0, :cond_3

    .line 104
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    .line 106
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 112
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 114
    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 116
    check-cast v4, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    .line 118
    iget-object v5, v3, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 120
    iget v3, v3, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 122
    iget-object v6, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    .line 124
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Ljava/lang/Integer;

    .line 130
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    invoke-virtual {v4, v3, v5, v1, v2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->onExcessiveEvents(ILjava/lang/String;J)V

    .line 136
    add-int/lit8 v0, v0, -0x1

    .line 138
    goto :goto_3

    .line 139
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    .line 141
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 144
    goto :goto_5

    .line 145
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    throw p0

    .line 147
    :cond_4
    :goto_5
    return-void
.end method
