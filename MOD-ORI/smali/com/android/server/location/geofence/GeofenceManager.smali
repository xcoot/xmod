.class public final Lcom/android/server/location/geofence/GeofenceManager;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastLocation:Landroid/location/Location;

.field public final mLocationEnabledChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

.field public mLocationManager:Landroid/location/LocationManager;

.field public final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

.field public final mLocationPermissionsListener:Lcom/android/server/location/geofence/GeofenceManager$1;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mLock:Ljava/lang/Object;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

.field public final mUserChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

.field public final mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/geofence/GeofenceManager;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/geofence/GeofenceManager;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$1;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/geofence/GeofenceManager$1;

    .line 40
    .line 41
    const-string v0, "GeofencingService"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 52
    .line 53
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 56
    .line 57
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 60
    .line 61
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final getLastLocation()Landroid/location/Location;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide/32 v4, 0x493e0

    .line 24
    .line 25
    .line 26
    cmp-long p0, v2, v4

    .line 27
    .line 28
    if-lez p0, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :cond_1
    return-object v1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method public final getLocationManager()Landroid/location/LocationManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-class v2, Landroid/location/LocationManager;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/location/LocationManager;

    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Landroid/location/LocationManager;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object p0

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final isActive(Lcom/android/server/location/listeners/RemovableListenerRegistration;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getCurrentUserId()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p1, p0}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->isVisibleUserId(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 p0, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 76
    :goto_1
    return p0
.end method

.method public final mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLastLocation()Landroid/location/Location;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v3, 0x0

    .line 16
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    move-wide v6, v4

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-eqz v8, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    check-cast v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    .line 33
    .line 34
    iget-object v9, v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    .line 35
    .line 36
    invoke-virtual {v9, v1, v2}, Landroid/location/Geofence;->isExpired(J)Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-eqz v9, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v9, v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 44
    .line 45
    invoke-virtual {v9, v3}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v9, v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    .line 52
    .line 53
    invoke-virtual {v0, v9}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-nez v9, :cond_2

    .line 58
    .line 59
    iput-object v0, v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    .line 60
    .line 61
    iget-object v9, v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    .line 62
    .line 63
    invoke-virtual {v9, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    iput v9, v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    .line 68
    .line 69
    :cond_2
    iget-object v9, v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    .line 70
    .line 71
    invoke-virtual {v9}, Landroid/location/Geofence;->getRadius()F

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    iget v8, v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    .line 76
    .line 77
    sub-float/2addr v9, v8

    .line 78
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    float-to-double v8, v8

    .line 83
    cmpg-double v10, v8, v6

    .line 84
    .line 85
    if-gez v10, :cond_0

    .line 86
    .line 87
    move-wide v6, v8

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-gez p1, :cond_4

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    .line 98
    .line 99
    .line 100
    move-result-wide p0

    .line 101
    long-to-double p0, p0

    .line 102
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    mul-double/2addr v6, v0

    .line 108
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 109
    .line 110
    div-double/2addr v6, v0

    .line 111
    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->max(DD)D

    .line 112
    .line 113
    .line 114
    move-result-wide p0

    .line 115
    const-wide v0, 0x415b774000000000L    # 7200000.0

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 121
    .line 122
    .line 123
    move-result-wide p0

    .line 124
    double-to-long p0, p0

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    .line 129
    .line 130
    .line 131
    move-result-wide p0

    .line 132
    :goto_1
    new-instance v0, Landroid/location/LocationRequest$Builder;

    .line 133
    .line 134
    invoke-direct {v0, p0, p1}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 135
    .line 136
    .line 137
    const-wide/16 p0, 0x0

    .line 138
    .line 139
    invoke-virtual {v0, p0, p1}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    const/4 p1, 0x1

    .line 144
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0, v3}, Landroid/location/LocationRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda0;-><init>(Landroid/location/Location;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p0
.end method

.method public final onRegister()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/geofence/GeofenceManager$1;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 11

    .line 1
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 6
    .line 7
    iget-object p0, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object p0, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v9, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x1

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v10, 0x1

    .line 28
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 11

    .line 1
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 6
    .line 7
    iget-object p0, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object p0, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v9, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v10, 0x1

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onUnregister()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/geofence/GeofenceManager$1;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p2, Landroid/location/LocationRequest;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "fused"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, p2, v0, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method public final unregisterWithService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    .line 13
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
