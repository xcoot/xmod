.class public final Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;
.super Lcom/android/server/location/countrydetector/CountryDetectorBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEnabledProviders:Ljava/util/List;

.field public mLocationListeners:Ljava/util/List;

.field public mLocationManager:Landroid/location/LocationManager;

.field public mQueryThread:Ljava/lang/Thread;

.field public mTimer:Ljava/util/Timer;


# virtual methods
.method public final declared-synchronized detectCountry()Landroid/location/Country;
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 4
    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_3

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    iput-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-ge v2, v1, :cond_2

    .line 37
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    move-object v5, v3

    .line 42
    check-cast v5, Ljava/lang/String;

    .line 44
    const-string/jumbo v3, "passive"

    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 53
    new-instance v9, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;

    .line 55
    invoke-direct {v9, p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;-><init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;)V

    .line 58
    iget-object v3, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 60
    check-cast v3, Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 68
    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    iget-object v4, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 71
    const-wide/16 v6, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    throw v0

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    goto :goto_3

    .line 88
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Ljava/util/Timer;

    .line 93
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    .line 98
    new-instance v1, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;

    .line 100
    invoke-direct {v1, p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;-><init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;)V

    .line 103
    const-wide/32 v2, 0x493e0

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    .line 117
    :goto_2
    iget-object v0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    monitor-exit p0

    .line 120
    return-object v0

    .line 121
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 123
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 126
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :goto_3
    monitor-exit p0

    .line 128
    throw v0
.end method

.method public final getLastKnownLocation()Landroid/location/Location;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 7
    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_2

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/String;

    .line 28
    iget-object v5, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 30
    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 36
    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 41
    move-result-wide v5

    .line 42
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 45
    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    cmp-long v5, v5, v7

    .line 48
    if-gez v5, :cond_0

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    :goto_1
    move-object v3, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    return-object v3

    .line 59
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    throw p0
.end method

.method public final declared-synchronized queryCountryCode(Landroid/location/Location;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    .line 10
    new-instance v1, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;

    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;-><init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;Landroid/location/Location;)V

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 18
    iput-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public final declared-synchronized stop()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/location/LocationListener;

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 31
    invoke-virtual {v5, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    throw v0

    .line 43
    :catchall_1
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iput-object v1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    .line 49
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 54
    iput-object v1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    :cond_2
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit p0

    .line 59
    throw v0
.end method
