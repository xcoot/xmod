.class public final Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 2
    .line 3
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 6
    .line 7
    const/16 v2, 0x2a

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onInactive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 6
    .line 7
    const/16 v2, 0x2a

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onRegister()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onRegister()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mRequest:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Landroid/location/GnssMeasurementRequest;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v3, v4, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;-><init>(ZLandroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->getGnssMeasurementAggregateStats(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v2}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    int-to-long v5, v1

    .line 33
    invoke-virtual {v2}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget v2, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    .line 39
    .line 40
    add-int/lit8 v3, v2, 0x1

    .line 41
    .line 42
    iput v3, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    .line 43
    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    iput-wide v2, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iput-boolean v4, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mHasFullTracking:Z

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iput-boolean v4, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mHasDutyCycling:Z

    .line 61
    .line 62
    :goto_1
    iget-wide v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mFastestIntervalMs:J

    .line 63
    .line 64
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    iput-wide v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mFastestIntervalMs:J

    .line 69
    .line 70
    iget-wide v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mSlowestIntervalMs:J

    .line 71
    .line 72
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    iput-wide v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mSlowestIntervalMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    monitor-exit v0

    .line 79
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_2
    monitor-exit v0

    .line 89
    throw p0
.end method

.method public final onUnregister()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v2, v3, v1, v4}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;-><init>(ZLandroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->getGnssMeasurementAggregateStats(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->updateTotals()V

    .line 24
    .line 25
    .line 26
    iget v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    sub-int/2addr v1, v2

    .line 30
    iput v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    .line 31
    .line 32
    if-ltz v1, :cond_0

    .line 33
    .line 34
    move v3, v2

    .line 35
    :cond_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    invoke-super {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->onUnregister()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0

    .line 45
    throw p0
.end method
