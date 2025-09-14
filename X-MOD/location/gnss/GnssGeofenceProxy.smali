.class public final Lcom/android/server/location/gnss/GnssGeofenceProxy;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;


# instance fields
.field public final mGeofenceEntries:Landroid/util/SparseArray;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 18
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 20
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final addCircularHardwareGeofence(IDDDIIII)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v13, p1

    .line 4
    iget-object v14, v0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v14

    .line 7
    :try_start_0
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 9
    move/from16 v2, p1

    .line 11
    move-wide/from16 v3, p2

    .line 13
    move-wide/from16 v5, p4

    .line 15
    move-wide/from16 v7, p6

    .line 17
    move/from16 v9, p8

    .line 19
    move/from16 v10, p9

    .line 21
    move/from16 v11, p10

    .line 23
    move/from16 v12, p11

    .line 25
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/location/gnss/hal/GnssNative;->addGeofence(IDDDIIII)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    new-instance v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    .line 33
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v13, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    .line 38
    move-wide/from16 v3, p2

    .line 40
    iput-wide v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->latitude:D

    .line 42
    move-wide/from16 v3, p4

    .line 44
    iput-wide v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->longitude:D

    .line 46
    move-wide/from16 v3, p6

    .line 48
    iput-wide v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->radius:D

    .line 50
    move/from16 v3, p8

    .line 52
    iput v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->lastTransition:I

    .line 54
    move/from16 v3, p9

    .line 56
    iput v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    .line 58
    move/from16 v3, p10

    .line 60
    iput v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->notificationResponsiveness:I

    .line 62
    move/from16 v3, p11

    .line 64
    iput v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->unknownTimer:I

    .line 66
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {v0, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    monitor-exit v14

    .line 75
    return v1

    .line 76
    :goto_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw v0
.end method

.method public final isHardwareGeofenceSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-exit p0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    throw v0
.end method

.method public final onHalRestarted()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    .line 21
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 23
    iget v4, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    .line 25
    iget-wide v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->latitude:D

    .line 27
    iget-wide v7, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->longitude:D

    .line 29
    iget-wide v9, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->radius:D

    .line 31
    iget v11, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->lastTransition:I

    .line 33
    iget v12, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    .line 35
    iget v13, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->notificationResponsiveness:I

    .line 37
    iget v14, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->unknownTimer:I

    .line 39
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/location/gnss/hal/GnssNative;->addGeofence(IDDDIIII)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 45
    iget-boolean v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    .line 47
    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 51
    iget v2, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    .line 53
    invoke-virtual {v3, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->pauseGeofence(I)Z

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final pauseHardwareGeofence(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 6
    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->pauseGeofence(I)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    return v1

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final removeHardwareGeofence(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 6
    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->removeGeofence(I)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return v1

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final resumeHardwareGeofence(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 6
    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->resumeGeofence(II)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    .line 25
    iput p2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return v1

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method
