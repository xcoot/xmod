.class public final Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTracker:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;->mTracker:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    goto/16 :goto_3

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;->mTracker:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    .line 9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 13
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 15
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 17
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 19
    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    .line 21
    iget-object v2, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 23
    check-cast v2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    .line 25
    iget-object v3, v2, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 27
    monitor-enter v3

    .line 28
    :try_start_0
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    const/4 v3, -0x1

    .line 40
    if-eqz v2, :cond_1

    .line 42
    const/16 v1, 0xc

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 47
    check-cast v2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    .line 49
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 51
    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServices(ILjava/lang/String;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 57
    const/16 v1, 0xe

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 62
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 64
    invoke-virtual {v1, p1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    .line 67
    move-result v1

    .line 68
    if-eq v1, v3, :cond_3

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move v1, v3

    .line 72
    :goto_0
    if-eq v1, v3, :cond_4

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 78
    move-result-wide v1

    .line 79
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 81
    monitor-enter v4

    .line 82
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 84
    invoke-virtual {v3, p1, v0}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 90
    if-nez v3, :cond_5

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BaseAppStateEventsTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;

    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 98
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 100
    invoke-virtual {v5, v0, p1, v3}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_4

    .line 106
    :cond_5
    :goto_1
    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->addEvent(J)V

    .line 109
    const-wide/16 v5, 0x0

    .line 111
    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 114
    move-result-wide v5

    .line 115
    invoke-virtual {v3, v5, v6, v1, v2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getTotalEventsSince(JJ)I

    .line 118
    move-result v3

    .line 119
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 121
    iget-object v5, v5, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 123
    check-cast v5, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    .line 125
    iget v5, v5, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    .line 127
    if-lt v3, v5, :cond_6

    .line 129
    const/4 v3, 0x1

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    const/4 v3, 0x0

    .line 132
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    if-eqz v3, :cond_7

    .line 135
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 137
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 139
    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    .line 141
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->onExcessiveEvents(ILjava/lang/String;J)V

    .line 144
    :cond_7
    :goto_3
    return-void

    .line 145
    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    throw p0

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    throw p0
.end method
