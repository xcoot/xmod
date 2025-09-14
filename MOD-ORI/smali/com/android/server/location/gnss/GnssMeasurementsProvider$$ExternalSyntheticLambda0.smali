.class public final synthetic Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field public final synthetic f$1:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;->f$1:Landroid/location/GnssMeasurementsEvent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;->f$1:Landroid/location/GnssMeasurementsEvent;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/location/GnssMeasurementsEvent;->getMeasurements()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object p1, p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v3, v0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v4, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;

    .line 37
    .line 38
    invoke-direct {v4, v1, p1}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;-><init>(ILandroid/location/util/identity/CallerIdentity;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    invoke-virtual {v3, v5, v6, v4}, Lcom/android/server/location/eventlog/LocalEventLog;->addLog(JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/server/location/eventlog/LocationEventLog;->getGnssMeasurementAggregateStats(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    monitor-enter p1

    .line 54
    :try_start_1
    iget v0, p1, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mReceivedMeasurementEventCount:I

    .line 55
    .line 56
    add-int/2addr v0, v2

    .line 57
    iput v0, p1, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mReceivedMeasurementEventCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    monitor-exit p1

    .line 60
    new-instance p1, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;-><init>(Landroid/location/GnssMeasurementsEvent;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit p1

    .line 68
    throw p0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    throw p0

    .line 72
    :cond_0
    const/4 p1, 0x0

    .line 73
    :goto_0
    return-object p1
.end method
