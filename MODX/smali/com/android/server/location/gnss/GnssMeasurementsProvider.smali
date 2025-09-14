.class public final Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;


# instance fields
.field public final mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public mLastGnssMeasurementsEvent:Landroid/location/GnssMeasurementsEvent;

.field public final mLogger:Lcom/android/server/location/injector/LocationUsageLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 4
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 6
    iget-object v0, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 8
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 10
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 12
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 14
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 16
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 19
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addMeasurementCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final addListener(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method public final addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .locals 1

    .line 1
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    .line 3
    check-cast p3, Landroid/location/IGnssMeasurementsListener;

    .line 5
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;

    .line 7
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V

    .line 10
    return-object v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    const-string/jumbo p1, "last measurements="

    .line 7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLastGnssMeasurementsEvent:Landroid/location/GnssMeasurementsEvent;

    .line 15
    if-nez p3, :cond_0

    .line 17
    monitor-exit p1

    .line 18
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    const-string v0, "["

    .line 26
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "elapsedRealtimeNs="

    .line 32
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLastGnssMeasurementsEvent:Landroid/location/GnssMeasurementsEvent;

    .line 37
    invoke-virtual {v0}, Landroid/location/GnssMeasurementsEvent;->getClock()Landroid/location/GnssClock;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/location/GnssClock;->getElapsedRealtimeNanos()J

    .line 44
    move-result-wide v0

    .line 45
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, " measurementCount="

    .line 50
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLastGnssMeasurementsEvent:Landroid/location/GnssMeasurementsEvent;

    .line 55
    invoke-virtual {v0}, Landroid/location/GnssMeasurementsEvent;->getMeasurements()Ljava/util/Collection;

    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 62
    move-result v0

    .line 63
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLastGnssMeasurementsEvent:Landroid/location/GnssMeasurementsEvent;

    .line 68
    invoke-virtual {p0}, Landroid/location/GnssMeasurementsEvent;->getMeasurements()Ljava/util/Collection;

    .line 71
    move-result-object p0

    .line 72
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p0

    .line 76
    const/4 v0, 0x0

    .line 77
    const/4 v1, 0x0

    .line 78
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroid/location/GnssMeasurement;

    .line 90
    invoke-virtual {v2}, Landroid/location/GnssMeasurement;->hasBasebandCn0DbHz()Z

    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_1

    .line 96
    float-to-double v3, v0

    .line 97
    invoke-virtual {v2}, Landroid/location/GnssMeasurement;->getBasebandCn0DbHz()D

    .line 100
    move-result-wide v5

    .line 101
    add-double/2addr v3, v5

    .line 102
    double-to-float v0, v3

    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    if-lez v1, :cond_3

    .line 108
    const-string p0, " avgBasebandCn0="

    .line 110
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    int-to-float p0, v1

    .line 114
    div-float/2addr v0, p0

    .line 115
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 118
    :cond_3
    const-string p0, "]"

    .line 120
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_1
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    return-void

    .line 132
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0
.end method

.method public final getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;
    .locals 0

    .line 1
    sget-object p0, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_MEASUREMENT:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 3
    return-object p0
.end method

.method public final isSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->isMeasurementSupported()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    move-result-wide v0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v2

    .line 18
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v2, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 24
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz p0, :cond_0

    .line 28
    move p0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p0, v3

    .line 31
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    check-cast p1, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p1

    .line 40
    const v0, 0x7fffffff

    .line 43
    move v1, v0

    .line 44
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_4

    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 56
    iget-object v4, v4, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mRequest:Ljava/lang/Object;

    .line 58
    check-cast v4, Landroid/location/GnssMeasurementRequest;

    .line 60
    invoke-virtual {v4}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    .line 63
    move-result v5

    .line 64
    if-ne v5, v0, :cond_1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v4}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_2

    .line 73
    move p0, v2

    .line 74
    :cond_2
    invoke-virtual {v4}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_3

    .line 80
    move v3, v2

    .line 81
    :cond_3
    invoke-virtual {v4}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    .line 84
    move-result v4

    .line 85
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 88
    move-result v1

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    new-instance p1, Landroid/location/GnssMeasurementRequest$Builder;

    .line 92
    invoke-direct {p1}, Landroid/location/GnssMeasurementRequest$Builder;-><init>()V

    .line 95
    invoke-virtual {p1, p0}, Landroid/location/GnssMeasurementRequest$Builder;->setFullTracking(Z)Landroid/location/GnssMeasurementRequest$Builder;

    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0, v3}, Landroid/location/GnssMeasurementRequest$Builder;->setCorrelationVectorOutputsEnabled(Z)Landroid/location/GnssMeasurementRequest$Builder;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0, v1}, Landroid/location/GnssMeasurementRequest$Builder;->setIntervalMillis(I)Landroid/location/GnssMeasurementRequest$Builder;

    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/location/GnssMeasurementRequest$Builder;->build()Landroid/location/GnssMeasurementRequest;

    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    throw p0
.end method

.method public final onActive()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 8
    return-void
.end method

.method public final onInactive()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 8
    return-void
.end method

.method public final onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 12

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 3
    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 5
    iget-object v0, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 7
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v4

    .line 11
    iget-object v0, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 13
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 16
    move-result-object v5

    .line 17
    iget-boolean v11, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    .line 34
    return-void
.end method

.method public final onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 12

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 3
    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 5
    iget-object v0, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 7
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v4

    .line 11
    iget-object v0, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 13
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 16
    move-result-object v5

    .line 17
    iget-boolean v11, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x1

    .line 21
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x2

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    .line 34
    return-void
.end method

.method public final registerWithService(Landroid/location/GnssMeasurementRequest;)Z
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v3

    .line 6
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/location/gnss/hal/GnssNative;->startMeasurementCollection(ZZI)Z

    move-result p0

    const-string v0, "GnssManager"

    if-eqz p0, :cond_1

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "starting gnss measurements ("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 8
    :cond_1
    const-string/jumbo p0, "error starting gnss measurements"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/location/GnssMeasurementRequest;

    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->registerWithService(Landroid/location/GnssMeasurementRequest;)Z

    move-result p0

    return p0
.end method

.method public final reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 1

    .line 1
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    .line 3
    check-cast p2, Landroid/location/GnssMeasurementRequest;

    .line 5
    invoke-virtual {p2}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    .line 8
    move-result p1

    .line 9
    const p3, 0x7fffffff

    .line 12
    if-ne p1, p3, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->unregisterWithService()V

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 21
    iget-object p1, p1, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    .line 29
    move-result-object p1

    .line 30
    iget p3, p1, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    .line 32
    const/4 v0, 0x3

    .line 33
    if-ne p3, v0, :cond_1

    .line 35
    iget p1, p1, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMinor:I

    .line 37
    if-lt p1, v0, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->unregisterWithService()V

    .line 43
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->registerWithService(Landroid/location/GnssMeasurementRequest;)Z

    .line 46
    move-result p0

    .line 47
    :goto_1
    return p0
.end method

.method public final unregisterWithService()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopMeasurementCollection()Z

    .line 6
    move-result p0

    .line 7
    const-string v0, "GnssManager"

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const-string/jumbo p0, "stopping gnss measurements"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p0, "error stopping gnss measurements"

    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    return-void
.end method
