.class public final Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Lcom/samsung/android/knox/location/IGeofencing$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;


# instance fields
.field public final mActiveGeofenceList:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public final mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mLocation:Landroid/location/Location;

.field public mLocationManager:Landroid/location/LocationManager;

.field public final mReceiver:Lcom/android/server/enterprise/geofencing/GeofenceService$1;

.field public final mUserRemovedReceiver:Lcom/android/server/enterprise/geofencing/GeofenceService$1;


# direct methods
.method public static -$$Nest$mcheckMonitoring(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "checkMonitoring - EX"

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string/jumbo v2, "location"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/location/LocationManager;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    .line 21
    .line 22
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 30
    .line 31
    .line 32
    sput-object v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :try_start_1
    new-instance v7, Landroid/location/Criteria;

    .line 48
    .line 49
    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v7, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v7, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    .line 72
    .line 73
    .line 74
    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinTimeParameter()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinDistanceParameter()F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    sget-object v8, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move-exception v1

    .line 99
    :try_start_2
    const-string v3, "GeofenceService"

    .line 100
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    sput-object v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 117
    .line 118
    const/4 v0, -0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    .line 122
    :goto_1
    monitor-exit p0

    .line 123
    :goto_2
    return-void

    .line 124
    :goto_3
    monitor-exit p0

    .line 125
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/location/IGeofencing$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 40
    .line 41
    new-instance v1, Landroid/os/HandlerThread;

    .line 42
    .line 43
    const-string v2, "GeofenceService"

    .line 44
    .line 45
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 71
    .line 72
    new-instance p0, Landroid/content/IntentFilter;

    .line 73
    .line 74
    const-string v1, "android.location.PROVIDERS_CHANGED"

    .line 75
    .line 76
    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/knox/location/BoundingBox;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 29
    .line 30
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/knox/location/BoundingBox;-><init>(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v1, v2, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 45
    .line 46
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 47
    .line 48
    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 49
    .line 50
    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 51
    .line 52
    cmpg-double v5, v3, v5

    .line 53
    .line 54
    if-gez v5, :cond_0

    .line 55
    .line 56
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 57
    .line 58
    :cond_0
    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 59
    .line 60
    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 61
    .line 62
    cmpl-double v3, v3, v5

    .line 63
    .line 64
    if-lez v3, :cond_1

    .line 65
    .line 66
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 67
    .line 68
    :cond_1
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 69
    .line 70
    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 71
    .line 72
    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 73
    .line 74
    cmpl-double v5, v3, v5

    .line 75
    .line 76
    if-lez v5, :cond_2

    .line 77
    .line 78
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 79
    .line 80
    :cond_2
    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 81
    .line 82
    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 83
    .line 84
    cmpg-double v3, v3, v5

    .line 85
    .line 86
    if-gez v3, :cond_3

    .line 87
    .line 88
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 89
    .line 90
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    return-object v0
.end method

.method public static checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    iget-object v1, p1, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    iget-object p0, p1, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 20
    .line 21
    cmpg-double p0, v1, v5

    .line 22
    .line 23
    if-gtz p0, :cond_1

    .line 24
    .line 25
    iget-object p0, p1, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 26
    .line 27
    iget-wide v5, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 28
    .line 29
    cmpl-double p0, v1, v5

    .line 30
    .line 31
    if-ltz p0, :cond_1

    .line 32
    .line 33
    iget-object p0, p1, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 34
    .line 35
    iget-wide v1, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 36
    .line 37
    cmpg-double p0, v3, v1

    .line 38
    .line 39
    if-gtz p0, :cond_1

    .line 40
    .line 41
    iget-object p0, p1, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 42
    .line 43
    iget-wide p0, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 44
    .line 45
    cmpl-double p0, v3, p0

    .line 46
    .line 47
    if-ltz p0, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_1
    :goto_0
    return v0
.end method

.method public static checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    new-array v2, v2, [D

    .line 12
    .line 13
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    new-array v3, v3, [D

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    move v5, v4

    .line 21
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-ge v5, v6, :cond_0

    .line 26
    .line 27
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 32
    .line 33
    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 34
    .line 35
    aput-wide v6, v2, v5

    .line 36
    .line 37
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 42
    .line 43
    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 44
    .line 45
    aput-wide v6, v3, v5

    .line 46
    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    add-int/lit8 v0, v1, -0x1

    .line 51
    .line 52
    move v5, v0

    .line 53
    move v0, v4

    .line 54
    move v6, v0

    .line 55
    :goto_1
    if-ge v0, v1, :cond_5

    .line 56
    .line 57
    aget-wide v7, v3, v0

    .line 58
    .line 59
    cmpl-double v9, v7, p3

    .line 60
    .line 61
    const/4 v10, 0x1

    .line 62
    if-lez v9, :cond_1

    .line 63
    .line 64
    move v9, v10

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    move v9, v4

    .line 67
    :goto_2
    aget-wide v11, v3, v5

    .line 68
    .line 69
    cmpl-double v13, v11, p3

    .line 70
    .line 71
    if-lez v13, :cond_2

    .line 72
    .line 73
    move v13, v10

    .line 74
    goto :goto_3

    .line 75
    :cond_2
    move v13, v4

    .line 76
    :goto_3
    if-eq v9, v13, :cond_4

    .line 77
    .line 78
    aget-wide v13, v2, v5

    .line 79
    .line 80
    aget-wide v15, v2, v0

    .line 81
    .line 82
    sub-double/2addr v13, v15

    .line 83
    sub-double v17, p3, v7

    .line 84
    .line 85
    mul-double v17, v17, v13

    .line 86
    .line 87
    sub-double/2addr v11, v7

    .line 88
    div-double v17, v17, v11

    .line 89
    .line 90
    add-double v17, v17, v15

    .line 91
    .line 92
    cmpg-double v5, p1, v17

    .line 93
    .line 94
    if-gtz v5, :cond_4

    .line 95
    .line 96
    if-nez v6, :cond_3

    .line 97
    .line 98
    move v6, v10

    .line 99
    goto :goto_4

    .line 100
    :cond_3
    move v6, v4

    .line 101
    :cond_4
    :goto_4
    add-int/lit8 v5, v0, 0x1

    .line 102
    .line 103
    move/from16 v19, v5

    .line 104
    .line 105
    move v5, v0

    .line 106
    move/from16 v0, v19

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    return v6
.end method

.method public static checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z
    .locals 14

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/location/Geofence;->type:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/samsung/android/knox/location/CircularGeofence;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    iget-object p0, p1, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 17
    .line 18
    iget-wide v6, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 19
    .line 20
    iget-wide v8, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 21
    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v10

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v12

    .line 46
    mul-double/2addr v12, v10

    .line 47
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    mul-double/2addr v2, v6

    .line 56
    sub-double/2addr v4, v8

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    mul-double/2addr v4, v2

    .line 62
    add-double/2addr v4, v12

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    const-wide v4, 0x40b8e30000000000L    # 6371.0

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    mul-double/2addr v2, v4

    .line 73
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    mul-double/2addr v2, v4

    .line 79
    iget-wide p0, p1, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    .line 80
    .line 81
    cmpg-double p0, v2, p0

    .line 82
    .line 83
    if-gtz p0, :cond_3

    .line 84
    .line 85
    return v1

    .line 86
    :cond_0
    const/4 v2, 0x2

    .line 87
    if-ne v0, v2, :cond_2

    .line 88
    .line 89
    check-cast p1, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 90
    .line 91
    iget-object v0, p1, Lcom/samsung/android/knox/location/PolygonalGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    .line 92
    .line 93
    invoke-static {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    iget-object v0, p1, Lcom/samsung/android/knox/location/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-ne v0, v1, :cond_1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p1, Lcom/samsung/android/knox/location/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    invoke-static {p1, v2, v3, v4, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-ne p0, v1, :cond_3

    .line 131
    .line 132
    :goto_0
    return v1

    .line 133
    :cond_2
    const/4 v2, 0x3

    .line 134
    if-ne v0, v2, :cond_3

    .line 135
    .line 136
    check-cast p1, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 137
    .line 138
    iget-object v0, p1, Lcom/samsung/android/knox/location/LinearGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    .line 139
    .line 140
    invoke-static {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    iget-object p1, p1, Lcom/samsung/android/knox/location/LinearGeofence;->optimizedPoints:Ljava/util/List;

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 149
    .line 150
    .line 151
    move-result-wide v2

    .line 152
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 153
    .line 154
    .line 155
    move-result-wide v4

    .line 156
    invoke-static {p1, v2, v3, v4, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-ne p0, v1, :cond_3

    .line 161
    .line 162
    return v1

    .line 163
    :cond_3
    const/4 p0, 0x0

    .line 164
    return p0
.end method

.method public static convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    div-int/lit8 v4, v0, 0x2

    .line 16
    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 26
    .line 27
    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 28
    .line 29
    iget-object v6, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 36
    .line 37
    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 38
    .line 39
    add-double/2addr v4, v6

    .line 40
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 41
    .line 42
    mul-double/2addr v4, v6

    .line 43
    iget-object v8, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 50
    .line 51
    iget-wide v8, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 52
    .line 53
    iget-object v10, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 60
    .line 61
    iget-wide v10, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 62
    .line 63
    add-double/2addr v8, v10

    .line 64
    mul-double/2addr v8, v6

    .line 65
    new-instance v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 66
    .line 67
    invoke-direct {v6, v4, v5, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v1, v1, -0x1

    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    return-object v2
.end method

.method public static deserializeGeoFence([B)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    .line 3
    .line 4
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 5
    .line 6
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :catch_0
    return-object v0
.end method

.method public static findCollinear(Ljava/util/List;)Ljava/util/List;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 19
    .line 20
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    move v6, v3

    .line 25
    const/4 v7, 0x1

    .line 26
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-ge v5, v8, :cond_9

    .line 31
    .line 32
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 37
    .line 38
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 43
    .line 44
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 49
    .line 50
    iget-wide v11, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 51
    .line 52
    iget-wide v13, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 53
    .line 54
    move v15, v5

    .line 55
    iget-wide v4, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 56
    .line 57
    sub-double v16, v13, v4

    .line 58
    .line 59
    mul-double v16, v16, v11

    .line 60
    .line 61
    iget-wide v11, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 62
    .line 63
    move/from16 v18, v6

    .line 64
    .line 65
    move/from16 v19, v7

    .line 66
    .line 67
    iget-wide v6, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 68
    .line 69
    sub-double/2addr v4, v6

    .line 70
    mul-double/2addr v4, v11

    .line 71
    add-double v4, v4, v16

    .line 72
    .line 73
    iget-wide v11, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 74
    .line 75
    sub-double/2addr v6, v13

    .line 76
    mul-double/2addr v6, v11

    .line 77
    add-double/2addr v6, v4

    .line 78
    const-wide/16 v4, 0x0

    .line 79
    .line 80
    cmpl-double v4, v6, v4

    .line 81
    .line 82
    if-nez v4, :cond_2

    .line 83
    .line 84
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_0

    .line 89
    .line 90
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_1

    .line 98
    .line 99
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_8

    .line 107
    .line 108
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_7

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 124
    .line 125
    const/4 v5, 0x1

    .line 126
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-ge v5, v6, :cond_4

    .line 131
    .line 132
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 137
    .line 138
    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 139
    .line 140
    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 141
    .line 142
    cmpg-double v6, v6, v8

    .line 143
    .line 144
    if-gez v6, :cond_3

    .line 145
    .line 146
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 151
    .line 152
    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 153
    .line 154
    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 155
    .line 156
    cmpg-double v6, v6, v8

    .line 157
    .line 158
    if-gez v6, :cond_3

    .line 159
    .line 160
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 165
    .line 166
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 177
    .line 178
    const/4 v5, 0x1

    .line 179
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-ge v5, v6, :cond_6

    .line 184
    .line 185
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 190
    .line 191
    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 192
    .line 193
    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 194
    .line 195
    cmpl-double v6, v6, v8

    .line 196
    .line 197
    if-lez v6, :cond_5

    .line 198
    .line 199
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 204
    .line 205
    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 206
    .line 207
    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 208
    .line 209
    cmpl-double v6, v6, v8

    .line 210
    .line 211
    if-lez v6, :cond_5

    .line 212
    .line 213
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 218
    .line 219
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_7
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    :cond_8
    :goto_3
    add-int/lit8 v6, v18, 0x1

    .line 233
    .line 234
    add-int/lit8 v7, v19, 0x1

    .line 235
    .line 236
    add-int/lit8 v5, v15, 0x1

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_9
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    const/4 v3, 0x1

    .line 245
    sub-int/2addr v2, v3

    .line 246
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 251
    .line 252
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    return-object v1
.end method

.method public static serializeGeoFence(Ljava/lang/Object;)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static validatePolygonalGeofence(Ljava/util/List;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 14
    .line 15
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 16
    .line 17
    const-wide v5, 0x4056800000000000L    # 90.0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmpl-double v5, v3, v5

    .line 23
    .line 24
    if-gtz v5, :cond_1

    .line 25
    .line 26
    const-wide v5, -0x3fa9800000000000L    # -90.0

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmpg-double v3, v3, v5

    .line 32
    .line 33
    if-ltz v3, :cond_1

    .line 34
    .line 35
    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 36
    .line 37
    const-wide v4, 0x4066800000000000L    # 180.0

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    cmpl-double v4, v2, v4

    .line 43
    .line 44
    if-gtz v4, :cond_1

    .line 45
    .line 46
    const-wide v4, -0x3f99800000000000L    # -180.0

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmpg-double v2, v2, v4

    .line 52
    .line 53
    if-gez v2, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    return v0

    .line 60
    :cond_2
    const/4 p0, 0x1

    .line 61
    return p0
.end method


# virtual methods
.method public final declared-synchronized checkDeviceInsideOrOutsideGeo(ZLandroid/location/Location;)Ljava/util/List;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Integer;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/samsung/android/knox/location/Geofence;

    .line 45
    .line 46
    invoke-static {p2, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    const/4 p2, 0x1

    .line 59
    if-ne p1, p2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->sendIntenttoAdmins(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move-object v1, v0

    .line 72
    :goto_1
    monitor-exit p0

    .line 73
    return-object v1

    .line 74
    :cond_4
    monitor-exit p0

    .line 75
    return-object v1

    .line 76
    :goto_2
    monitor-exit p0

    .line 77
    throw p1
.end method

.method public final createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/Geofence;)I
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v1, Lcom/samsung/android/knox/location/Geofence;->type:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-string/jumbo v5, "createGeofence"

    .line 10
    .line 11
    .line 12
    const-string v6, "GeofenceService"

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    if-ne v2, v8, :cond_3

    .line 16
    .line 17
    check-cast v1, Lcom/samsung/android/knox/location/CircularGeofence;

    .line 18
    .line 19
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    .line 28
    iget-object v6, v1, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 29
    .line 30
    iget-wide v9, v1, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    .line 31
    .line 32
    cmpg-double v3, v9, v3

    .line 33
    .line 34
    if-gtz v3, :cond_0

    .line 35
    .line 36
    goto/16 :goto_1e

    .line 37
    .line 38
    :cond_0
    iget-wide v3, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 39
    .line 40
    const-wide v9, 0x4056800000000000L    # 90.0

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmpl-double v9, v3, v9

    .line 46
    .line 47
    if-gtz v9, :cond_31

    .line 48
    .line 49
    const-wide v9, -0x3fa9800000000000L    # -90.0

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    cmpg-double v3, v3, v9

    .line 55
    .line 56
    if-ltz v3, :cond_31

    .line 57
    .line 58
    iget-wide v3, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 59
    .line 60
    const-wide v9, 0x4066800000000000L    # 180.0

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    cmpl-double v6, v3, v9

    .line 66
    .line 67
    if-gtz v6, :cond_31

    .line 68
    .line 69
    const-wide v9, -0x3f99800000000000L    # -180.0

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    cmpg-double v3, v3, v9

    .line 75
    .line 76
    if-gez v3, :cond_1

    .line 77
    .line 78
    goto/16 :goto_1e

    .line 79
    .line 80
    :cond_1
    invoke-static {v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    goto/16 :goto_1e

    .line 87
    .line 88
    :cond_2
    invoke-virtual {v0, v2, v8, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_32

    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 99
    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    .line 112
    .line 113
    goto/16 :goto_1f

    .line 114
    .line 115
    :cond_3
    const/4 v15, 0x0

    .line 116
    const-wide v16, 0x3ee2cc82c7677f8dL    # 8.964E-6

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    const/4 v7, 0x2

    .line 122
    if-ne v2, v7, :cond_13

    .line 123
    .line 124
    check-cast v1, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 125
    .line 126
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 134
    .line 135
    iget-object v6, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-le v6, v7, :cond_31

    .line 142
    .line 143
    iget-object v6, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    .line 144
    .line 145
    invoke-static {v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_31

    .line 150
    .line 151
    iget-object v6, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    .line 152
    .line 153
    invoke-static {v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v23

    .line 157
    move-object/from16 v6, v23

    .line 158
    .line 159
    check-cast v6, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-gt v9, v7, :cond_4

    .line 166
    .line 167
    goto/16 :goto_1e

    .line 168
    .line 169
    :cond_4
    invoke-static/range {v23 .. v23}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    .line 170
    .line 171
    .line 172
    move-result-object v25

    .line 173
    iget-wide v9, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    .line 174
    .line 175
    cmpl-double v18, v9, v3

    .line 176
    .line 177
    if-nez v18, :cond_5

    .line 178
    .line 179
    move-object v4, v1

    .line 180
    move-object/from16 p1, v2

    .line 181
    .line 182
    move/from16 v16, v5

    .line 183
    .line 184
    move-object/from16 v24, v23

    .line 185
    .line 186
    goto/16 :goto_8

    .line 187
    .line 188
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    new-instance v11, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    new-instance v12, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .line 202
    .line 203
    mul-double v9, v9, v16

    .line 204
    .line 205
    move v13, v15

    .line 206
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    if-ge v13, v14, :cond_11

    .line 211
    .line 212
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v14

    .line 216
    sub-int/2addr v14, v8

    .line 217
    if-ne v13, v14, :cond_6

    .line 218
    .line 219
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v14

    .line 223
    check-cast v14, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 224
    .line 225
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v16

    .line 229
    check-cast v16, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 230
    .line 231
    :goto_1
    move-wide/from16 p1, v9

    .line 232
    .line 233
    move-object/from16 v15, v16

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_6
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v14

    .line 240
    check-cast v14, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 241
    .line 242
    add-int/lit8 v15, v13, 0x1

    .line 243
    .line 244
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    move-object/from16 v16, v15

    .line 249
    .line 250
    check-cast v16, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :goto_2
    iget-wide v8, v15, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 254
    .line 255
    move v10, v5

    .line 256
    move-object/from16 v26, v6

    .line 257
    .line 258
    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 259
    .line 260
    sub-double v5, v8, v5

    .line 261
    .line 262
    cmpl-double v5, v5, v3

    .line 263
    .line 264
    if-nez v5, :cond_8

    .line 265
    .line 266
    cmpl-double v5, v8, v3

    .line 267
    .line 268
    if-ltz v5, :cond_7

    .line 269
    .line 270
    const-wide v5, 0x3f747ae147ae147bL    # 0.005

    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    sub-double/2addr v8, v5

    .line 276
    iput-wide v8, v15, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_7
    const-wide v5, 0x3f747ae147ae147bL    # 0.005

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    add-double/2addr v8, v5

    .line 285
    iput-wide v8, v15, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_8
    const-wide v5, 0x3f747ae147ae147bL    # 0.005

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :goto_3
    iget-wide v8, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 294
    .line 295
    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 296
    .line 297
    sub-double v5, v8, v5

    .line 298
    .line 299
    cmpl-double v5, v5, v3

    .line 300
    .line 301
    if-nez v5, :cond_a

    .line 302
    .line 303
    cmpl-double v5, v8, v3

    .line 304
    .line 305
    if-ltz v5, :cond_9

    .line 306
    .line 307
    const-wide v5, 0x3f747ae147ae147bL    # 0.005

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    sub-double/2addr v8, v5

    .line 313
    iput-wide v8, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_9
    const-wide v5, 0x3f747ae147ae147bL    # 0.005

    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    add-double/2addr v8, v5

    .line 322
    iput-wide v8, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 323
    .line 324
    :cond_a
    :goto_4
    iget-wide v5, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 325
    .line 326
    iget-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 327
    .line 328
    sub-double/2addr v5, v8

    .line 329
    iget-wide v8, v15, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 330
    .line 331
    iget-wide v3, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 332
    .line 333
    sub-double/2addr v8, v3

    .line 334
    div-double/2addr v5, v8

    .line 335
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 343
    .line 344
    iget-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 345
    .line 346
    move-object v4, v1

    .line 347
    iget-wide v0, v15, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 348
    .line 349
    add-double/2addr v8, v0

    .line 350
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 351
    .line 352
    div-double/2addr v8, v0

    .line 353
    iget-wide v0, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 354
    .line 355
    move/from16 v16, v10

    .line 356
    .line 357
    move-object/from16 v18, v11

    .line 358
    .line 359
    iget-wide v10, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 360
    .line 361
    add-double/2addr v0, v10

    .line 362
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 363
    .line 364
    div-double/2addr v0, v10

    .line 365
    invoke-direct {v3, v8, v9, v0, v1}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 366
    .line 367
    .line 368
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 369
    .line 370
    div-double v9, v0, v5

    .line 371
    .line 372
    neg-double v8, v9

    .line 373
    mul-double v10, v8, v8

    .line 374
    .line 375
    add-double/2addr v10, v0

    .line 376
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 377
    .line 378
    .line 379
    move-result-wide v0

    .line 380
    move-wide/from16 v10, p1

    .line 381
    .line 382
    div-double v0, v10, v0

    .line 383
    .line 384
    const-wide/16 v27, 0x0

    .line 385
    .line 386
    cmpl-double v17, v5, v27

    .line 387
    .line 388
    if-lez v17, :cond_b

    .line 389
    .line 390
    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 391
    .line 392
    move-object/from16 v29, v12

    .line 393
    .line 394
    move/from16 v30, v13

    .line 395
    .line 396
    iget-wide v12, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 397
    .line 398
    cmpg-double v10, v10, v12

    .line 399
    .line 400
    if-ltz v10, :cond_c

    .line 401
    .line 402
    goto :goto_5

    .line 403
    :cond_b
    move-object/from16 v29, v12

    .line 404
    .line 405
    move/from16 v30, v13

    .line 406
    .line 407
    :goto_5
    cmpg-double v5, v5, v27

    .line 408
    .line 409
    if-gez v5, :cond_d

    .line 410
    .line 411
    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 412
    .line 413
    iget-wide v12, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 414
    .line 415
    cmpl-double v6, v10, v12

    .line 416
    .line 417
    if-lez v6, :cond_d

    .line 418
    .line 419
    :cond_c
    iget-wide v5, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 420
    .line 421
    mul-double/2addr v0, v8

    .line 422
    add-double/2addr v0, v5

    .line 423
    sub-double v5, v0, v5

    .line 424
    .line 425
    iget-wide v10, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 426
    .line 427
    mul-double/2addr v10, v8

    .line 428
    add-double/2addr v10, v5

    .line 429
    div-double/2addr v10, v8

    .line 430
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 431
    .line 432
    invoke-direct {v3, v10, v11, v0, v1}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 433
    .line 434
    .line 435
    move-object/from16 v6, v29

    .line 436
    .line 437
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    goto :goto_6

    .line 441
    :cond_d
    move-object/from16 v6, v29

    .line 442
    .line 443
    if-lez v17, :cond_e

    .line 444
    .line 445
    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 446
    .line 447
    iget-wide v12, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 448
    .line 449
    cmpl-double v10, v10, v12

    .line 450
    .line 451
    if-gtz v10, :cond_f

    .line 452
    .line 453
    :cond_e
    if-gez v5, :cond_10

    .line 454
    .line 455
    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 456
    .line 457
    iget-wide v12, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 458
    .line 459
    cmpg-double v5, v10, v12

    .line 460
    .line 461
    if-gez v5, :cond_10

    .line 462
    .line 463
    :cond_f
    iget-wide v10, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 464
    .line 465
    mul-double/2addr v0, v8

    .line 466
    sub-double v0, v10, v0

    .line 467
    .line 468
    sub-double v10, v0, v10

    .line 469
    .line 470
    iget-wide v12, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 471
    .line 472
    mul-double/2addr v12, v8

    .line 473
    add-double/2addr v12, v10

    .line 474
    div-double/2addr v12, v8

    .line 475
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 476
    .line 477
    invoke-direct {v3, v12, v13, v0, v1}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    :cond_10
    :goto_6
    add-int/lit8 v13, v30, 0x1

    .line 484
    .line 485
    const/4 v8, 0x1

    .line 486
    const/4 v15, 0x0

    .line 487
    move-object/from16 v0, p0

    .line 488
    .line 489
    move-wide/from16 v9, p1

    .line 490
    .line 491
    move-object v1, v4

    .line 492
    move-object v12, v6

    .line 493
    move/from16 v5, v16

    .line 494
    .line 495
    move-object/from16 v11, v18

    .line 496
    .line 497
    move-object/from16 v6, v26

    .line 498
    .line 499
    const-wide/16 v3, 0x0

    .line 500
    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :cond_11
    move-object v4, v1

    .line 504
    move/from16 v16, v5

    .line 505
    .line 506
    move-object/from16 v18, v11

    .line 507
    .line 508
    move-object v6, v12

    .line 509
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    const/4 v1, 0x1

    .line 514
    sub-int/2addr v0, v1

    .line 515
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    sub-int/2addr v3, v1

    .line 520
    const/4 v5, 0x0

    .line 521
    const/4 v15, 0x0

    .line 522
    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    .line 523
    .line 524
    .line 525
    move-result v8

    .line 526
    sub-int/2addr v8, v1

    .line 527
    if-ge v15, v8, :cond_12

    .line 528
    .line 529
    move-object/from16 v1, v18

    .line 530
    .line 531
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    check-cast v8, Ljava/lang/Double;

    .line 536
    .line 537
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 538
    .line 539
    .line 540
    move-result-wide v8

    .line 541
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    check-cast v3, Ljava/lang/Double;

    .line 546
    .line 547
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 548
    .line 549
    .line 550
    move-result-wide v10

    .line 551
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 556
    .line 557
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 562
    .line 563
    iget-wide v12, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 564
    .line 565
    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 566
    .line 567
    mul-double/2addr v0, v10

    .line 568
    sub-double/2addr v12, v0

    .line 569
    iget-wide v0, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 570
    .line 571
    move-object/from16 p1, v2

    .line 572
    .line 573
    iget-wide v2, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 574
    .line 575
    mul-double/2addr v2, v8

    .line 576
    sub-double/2addr v0, v2

    .line 577
    sub-double/2addr v12, v0

    .line 578
    sub-double v2, v8, v10

    .line 579
    .line 580
    div-double/2addr v12, v2

    .line 581
    mul-double/2addr v8, v12

    .line 582
    add-double/2addr v8, v0

    .line 583
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 584
    .line 585
    invoke-direct {v0, v12, v13, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    add-int/lit8 v0, v5, 0x1

    .line 592
    .line 593
    add-int/lit8 v1, v15, 0x1

    .line 594
    .line 595
    move-object/from16 v2, p1

    .line 596
    .line 597
    move v3, v15

    .line 598
    move v15, v1

    .line 599
    const/4 v1, 0x1

    .line 600
    move/from16 v36, v5

    .line 601
    .line 602
    move v5, v0

    .line 603
    move/from16 v0, v36

    .line 604
    .line 605
    goto :goto_7

    .line 606
    :cond_12
    move-object/from16 p1, v2

    .line 607
    .line 608
    move-object/from16 v24, v7

    .line 609
    .line 610
    :goto_8
    new-instance v0, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 611
    .line 612
    iget-object v1, v4, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    .line 613
    .line 614
    iget-wide v2, v4, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    .line 615
    .line 616
    move-object/from16 v19, v0

    .line 617
    .line 618
    move-object/from16 v20, v1

    .line 619
    .line 620
    move-wide/from16 v21, v2

    .line 621
    .line 622
    invoke-direct/range {v19 .. v25}, Lcom/samsung/android/knox/location/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;)V

    .line 623
    .line 624
    .line 625
    invoke-static {v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    const/4 v1, 0x2

    .line 630
    move-object/from16 v3, p0

    .line 631
    .line 632
    move-object/from16 v2, p1

    .line 633
    .line 634
    invoke-virtual {v3, v2, v1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    .line 635
    .line 636
    .line 637
    move-result v7

    .line 638
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    if-eqz v0, :cond_32

    .line 643
    .line 644
    iget-object v0, v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 645
    .line 646
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    const/4 v2, 0x1

    .line 651
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    iget-object v1, v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 656
    .line 657
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 658
    .line 659
    .line 660
    goto/16 :goto_1f

    .line 661
    .line 662
    :cond_13
    move-object v3, v0

    .line 663
    const/4 v0, 0x3

    .line 664
    if-ne v2, v0, :cond_31

    .line 665
    .line 666
    check-cast v1, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 667
    .line 668
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 676
    .line 677
    iget-wide v9, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 678
    .line 679
    new-instance v5, Ljava/util/ArrayList;

    .line 680
    .line 681
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .line 683
    .line 684
    iget-wide v5, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 685
    .line 686
    const-wide/16 v7, 0x0

    .line 687
    .line 688
    cmpg-double v11, v5, v7

    .line 689
    .line 690
    if-gtz v11, :cond_14

    .line 691
    .line 692
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 693
    .line 694
    iput-wide v7, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 695
    .line 696
    goto :goto_9

    .line 697
    :cond_14
    const-wide v7, 0x412e848000000000L    # 1000000.0

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    cmpl-double v5, v5, v7

    .line 703
    .line 704
    if-lez v5, :cond_15

    .line 705
    .line 706
    const-wide v5, 0x412e847e00000000L    # 999999.0

    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    iput-wide v5, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 712
    .line 713
    :cond_15
    :goto_9
    iget-object v5, v1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    .line 714
    .line 715
    iget-wide v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 716
    .line 717
    new-instance v1, Ljava/util/ArrayList;

    .line 718
    .line 719
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .line 721
    .line 722
    new-instance v8, Ljava/util/ArrayList;

    .line 723
    .line 724
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .line 726
    .line 727
    new-instance v11, Ljava/util/ArrayList;

    .line 728
    .line 729
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .line 731
    .line 732
    new-instance v12, Ljava/util/ArrayList;

    .line 733
    .line 734
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .line 736
    .line 737
    new-instance v13, Ljava/util/ArrayList;

    .line 738
    .line 739
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .line 741
    .line 742
    mul-double v6, v6, v16

    .line 743
    .line 744
    const/4 v14, 0x0

    .line 745
    move/from16 v23, v4

    .line 746
    .line 747
    move-object v15, v14

    .line 748
    move-object/from16 v16, v15

    .line 749
    .line 750
    const/4 v0, 0x0

    .line 751
    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 752
    .line 753
    .line 754
    move-result v4

    .line 755
    if-ge v0, v4, :cond_2d

    .line 756
    .line 757
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 758
    .line 759
    .line 760
    move-result v4

    .line 761
    const/16 v25, 0x1

    .line 762
    .line 763
    add-int/lit8 v4, v4, -0x1

    .line 764
    .line 765
    if-ne v0, v4, :cond_16

    .line 766
    .line 767
    add-int/lit8 v4, v0, -0x1

    .line 768
    .line 769
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 774
    .line 775
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v25

    .line 779
    check-cast v25, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 780
    .line 781
    :goto_b
    move-object/from16 p1, v2

    .line 782
    .line 783
    move-wide/from16 v29, v9

    .line 784
    .line 785
    move-object/from16 v2, v25

    .line 786
    .line 787
    goto :goto_c

    .line 788
    :cond_16
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v4

    .line 792
    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 793
    .line 794
    move-object/from16 p1, v4

    .line 795
    .line 796
    add-int/lit8 v4, v0, 0x1

    .line 797
    .line 798
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v4

    .line 802
    move-object/from16 v25, v4

    .line 803
    .line 804
    check-cast v25, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 805
    .line 806
    move-object/from16 v4, p1

    .line 807
    .line 808
    goto :goto_b

    .line 809
    :goto_c
    iget-wide v9, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 810
    .line 811
    move-object/from16 v25, v14

    .line 812
    .line 813
    move-object/from16 v26, v15

    .line 814
    .line 815
    iget-wide v14, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 816
    .line 817
    sub-double v14, v9, v14

    .line 818
    .line 819
    const-wide/16 v27, 0x0

    .line 820
    .line 821
    cmpl-double v14, v14, v27

    .line 822
    .line 823
    if-nez v14, :cond_18

    .line 824
    .line 825
    cmpl-double v14, v9, v27

    .line 826
    .line 827
    if-ltz v14, :cond_17

    .line 828
    .line 829
    const-wide v14, 0x3f747ae147ae147bL    # 0.005

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    sub-double/2addr v9, v14

    .line 835
    iput-wide v9, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 836
    .line 837
    goto :goto_d

    .line 838
    :cond_17
    const-wide v14, 0x3f747ae147ae147bL    # 0.005

    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    add-double/2addr v9, v14

    .line 844
    iput-wide v9, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 845
    .line 846
    goto :goto_d

    .line 847
    :cond_18
    const-wide v14, 0x3f747ae147ae147bL    # 0.005

    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    :goto_d
    iget-wide v9, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 853
    .line 854
    iget-wide v14, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 855
    .line 856
    sub-double v14, v9, v14

    .line 857
    .line 858
    const-wide/16 v27, 0x0

    .line 859
    .line 860
    cmpl-double v14, v14, v27

    .line 861
    .line 862
    if-nez v14, :cond_1a

    .line 863
    .line 864
    cmpl-double v14, v9, v27

    .line 865
    .line 866
    if-ltz v14, :cond_19

    .line 867
    .line 868
    const-wide v14, 0x3f747ae147ae147bL    # 0.005

    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    sub-double/2addr v9, v14

    .line 874
    iput-wide v9, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 875
    .line 876
    goto :goto_e

    .line 877
    :cond_19
    const-wide v14, 0x3f747ae147ae147bL    # 0.005

    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    add-double/2addr v9, v14

    .line 883
    iput-wide v9, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 884
    .line 885
    goto :goto_e

    .line 886
    :cond_1a
    const-wide v14, 0x3f747ae147ae147bL    # 0.005

    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    :goto_e
    iget-wide v9, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 892
    .line 893
    iget-wide v14, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 894
    .line 895
    sub-double/2addr v9, v14

    .line 896
    iget-wide v14, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 897
    .line 898
    move/from16 v31, v0

    .line 899
    .line 900
    move-object/from16 p2, v1

    .line 901
    .line 902
    iget-wide v0, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 903
    .line 904
    sub-double/2addr v14, v0

    .line 905
    div-double/2addr v9, v14

    .line 906
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    .line 912
    .line 913
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 914
    .line 915
    iget-wide v14, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 916
    .line 917
    move-object v1, v11

    .line 918
    move-object/from16 v32, v12

    .line 919
    .line 920
    iget-wide v11, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 921
    .line 922
    add-double/2addr v14, v11

    .line 923
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 924
    .line 925
    div-double/2addr v14, v11

    .line 926
    iget-wide v11, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 927
    .line 928
    move-object/from16 v33, v4

    .line 929
    .line 930
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 931
    .line 932
    add-double/2addr v11, v3

    .line 933
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 934
    .line 935
    div-double/2addr v11, v3

    .line 936
    invoke-direct {v0, v14, v15, v11, v12}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 937
    .line 938
    .line 939
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 940
    .line 941
    div-double v14, v11, v9

    .line 942
    .line 943
    neg-double v14, v14

    .line 944
    mul-double v19, v14, v14

    .line 945
    .line 946
    add-double v19, v19, v11

    .line 947
    .line 948
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    .line 949
    .line 950
    .line 951
    move-result-wide v19

    .line 952
    div-double v19, v6, v19

    .line 953
    .line 954
    const-wide/16 v21, 0x0

    .line 955
    .line 956
    cmpl-double v27, v9, v21

    .line 957
    .line 958
    if-lez v27, :cond_1b

    .line 959
    .line 960
    move-object/from16 v3, v33

    .line 961
    .line 962
    iget-wide v11, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 963
    .line 964
    move-wide/from16 v34, v6

    .line 965
    .line 966
    iget-wide v6, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 967
    .line 968
    cmpg-double v4, v11, v6

    .line 969
    .line 970
    if-ltz v4, :cond_1c

    .line 971
    .line 972
    goto :goto_f

    .line 973
    :cond_1b
    move-wide/from16 v34, v6

    .line 974
    .line 975
    move-object/from16 v3, v33

    .line 976
    .line 977
    :goto_f
    cmpg-double v4, v9, v21

    .line 978
    .line 979
    if-gez v4, :cond_24

    .line 980
    .line 981
    iget-wide v6, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 982
    .line 983
    iget-wide v9, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 984
    .line 985
    cmpl-double v6, v6, v9

    .line 986
    .line 987
    if-lez v6, :cond_24

    .line 988
    .line 989
    :cond_1c
    iget-wide v6, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 990
    .line 991
    mul-double v19, v19, v14

    .line 992
    .line 993
    add-double v9, v6, v19

    .line 994
    .line 995
    sub-double v6, v9, v6

    .line 996
    .line 997
    iget-wide v11, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 998
    .line 999
    mul-double/2addr v11, v14

    .line 1000
    add-double/2addr v11, v6

    .line 1001
    div-double/2addr v11, v14

    .line 1002
    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1003
    .line 1004
    invoke-direct {v4, v11, v12, v9, v10}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1005
    .line 1006
    .line 1007
    move-object/from16 v6, v32

    .line 1008
    .line 1009
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    .line 1011
    .line 1012
    iget-wide v9, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1013
    .line 1014
    sub-double v11, v9, v19

    .line 1015
    .line 1016
    sub-double v9, v11, v9

    .line 1017
    .line 1018
    move-object v7, v1

    .line 1019
    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1020
    .line 1021
    mul-double/2addr v0, v14

    .line 1022
    add-double/2addr v0, v9

    .line 1023
    div-double/2addr v0, v14

    .line 1024
    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1025
    .line 1026
    invoke-direct {v4, v0, v1, v11, v12}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    if-nez v31, :cond_1d

    .line 1033
    .line 1034
    move-object/from16 v16, v3

    .line 1035
    .line 1036
    :cond_1d
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1037
    .line 1038
    .line 1039
    move-result v0

    .line 1040
    const/4 v1, 0x1

    .line 1041
    sub-int/2addr v0, v1

    .line 1042
    move/from16 v9, v31

    .line 1043
    .line 1044
    if-ne v9, v0, :cond_1e

    .line 1045
    .line 1046
    goto :goto_10

    .line 1047
    :cond_1e
    move-object/from16 v2, v16

    .line 1048
    .line 1049
    :goto_10
    if-eqz v9, :cond_21

    .line 1050
    .line 1051
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    sub-int/2addr v0, v1

    .line 1056
    if-ne v9, v0, :cond_1f

    .line 1057
    .line 1058
    goto :goto_14

    .line 1059
    :cond_1f
    :goto_11
    move-object/from16 v16, v2

    .line 1060
    .line 1061
    move-object v12, v7

    .line 1062
    move-object v1, v8

    .line 1063
    :cond_20
    :goto_12
    move-object/from16 v14, v25

    .line 1064
    .line 1065
    :goto_13
    move-object/from16 v15, v26

    .line 1066
    .line 1067
    goto/16 :goto_1b

    .line 1068
    .line 1069
    :cond_21
    :goto_14
    iget-wide v0, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1070
    .line 1071
    add-double v3, v0, v19

    .line 1072
    .line 1073
    sub-double v0, v3, v0

    .line 1074
    .line 1075
    iget-wide v10, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1076
    .line 1077
    mul-double/2addr v10, v14

    .line 1078
    add-double/2addr v10, v0

    .line 1079
    div-double/2addr v10, v14

    .line 1080
    if-nez v9, :cond_22

    .line 1081
    .line 1082
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1083
    .line 1084
    invoke-direct {v0, v10, v11, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1085
    .line 1086
    .line 1087
    move-object/from16 v1, p2

    .line 1088
    .line 1089
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    goto :goto_15

    .line 1093
    :cond_22
    move-object/from16 v1, p2

    .line 1094
    .line 1095
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1096
    .line 1097
    invoke-direct {v0, v10, v11, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1098
    .line 1099
    .line 1100
    move-object/from16 v26, v0

    .line 1101
    .line 1102
    :goto_15
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1103
    .line 1104
    sub-double v10, v3, v19

    .line 1105
    .line 1106
    sub-double v3, v10, v3

    .line 1107
    .line 1108
    move-object/from16 p2, v1

    .line 1109
    .line 1110
    iget-wide v0, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1111
    .line 1112
    mul-double/2addr v0, v14

    .line 1113
    add-double/2addr v0, v3

    .line 1114
    div-double/2addr v0, v14

    .line 1115
    if-nez v9, :cond_23

    .line 1116
    .line 1117
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1118
    .line 1119
    invoke-direct {v3, v0, v1, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    .line 1124
    .line 1125
    goto :goto_11

    .line 1126
    :cond_23
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1127
    .line 1128
    invoke-direct {v3, v0, v1, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1129
    .line 1130
    .line 1131
    move-object/from16 v16, v2

    .line 1132
    .line 1133
    move-object v14, v3

    .line 1134
    move-object v12, v7

    .line 1135
    move-object v1, v8

    .line 1136
    goto :goto_13

    .line 1137
    :cond_24
    move-object v7, v1

    .line 1138
    move/from16 v9, v31

    .line 1139
    .line 1140
    move-object/from16 v6, v32

    .line 1141
    .line 1142
    if-lez v27, :cond_25

    .line 1143
    .line 1144
    iget-wide v10, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1145
    .line 1146
    move-object v12, v7

    .line 1147
    move-object v1, v8

    .line 1148
    iget-wide v7, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1149
    .line 1150
    cmpl-double v7, v10, v7

    .line 1151
    .line 1152
    if-gtz v7, :cond_26

    .line 1153
    .line 1154
    goto :goto_16

    .line 1155
    :cond_25
    move-object v12, v7

    .line 1156
    move-object v1, v8

    .line 1157
    :goto_16
    if-gez v4, :cond_20

    .line 1158
    .line 1159
    iget-wide v7, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1160
    .line 1161
    iget-wide v10, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1162
    .line 1163
    cmpg-double v4, v7, v10

    .line 1164
    .line 1165
    if-gez v4, :cond_20

    .line 1166
    .line 1167
    :cond_26
    iget-wide v7, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1168
    .line 1169
    mul-double v19, v19, v14

    .line 1170
    .line 1171
    sub-double v10, v7, v19

    .line 1172
    .line 1173
    sub-double v7, v10, v7

    .line 1174
    .line 1175
    move-object v4, v2

    .line 1176
    move-object/from16 v33, v3

    .line 1177
    .line 1178
    iget-wide v2, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1179
    .line 1180
    mul-double/2addr v2, v14

    .line 1181
    add-double/2addr v2, v7

    .line 1182
    div-double/2addr v2, v14

    .line 1183
    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1184
    .line 1185
    invoke-direct {v7, v2, v3, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    iget-wide v2, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1192
    .line 1193
    add-double v7, v2, v19

    .line 1194
    .line 1195
    sub-double v2, v7, v2

    .line 1196
    .line 1197
    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1198
    .line 1199
    mul-double/2addr v10, v14

    .line 1200
    add-double/2addr v10, v2

    .line 1201
    div-double/2addr v10, v14

    .line 1202
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1203
    .line 1204
    invoke-direct {v0, v10, v11, v7, v8}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    if-nez v9, :cond_27

    .line 1211
    .line 1212
    move-object/from16 v16, v33

    .line 1213
    .line 1214
    :cond_27
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1215
    .line 1216
    .line 1217
    move-result v0

    .line 1218
    const/4 v2, 0x1

    .line 1219
    sub-int/2addr v0, v2

    .line 1220
    if-ne v9, v0, :cond_28

    .line 1221
    .line 1222
    goto :goto_17

    .line 1223
    :cond_28
    move-object/from16 v4, v16

    .line 1224
    .line 1225
    :goto_17
    if-eqz v9, :cond_2a

    .line 1226
    .line 1227
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1228
    .line 1229
    .line 1230
    move-result v0

    .line 1231
    sub-int/2addr v0, v2

    .line 1232
    if-ne v9, v0, :cond_29

    .line 1233
    .line 1234
    goto :goto_19

    .line 1235
    :cond_29
    :goto_18
    move-object/from16 v16, v4

    .line 1236
    .line 1237
    goto/16 :goto_12

    .line 1238
    .line 1239
    :cond_2a
    :goto_19
    iget-wide v2, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1240
    .line 1241
    sub-double v7, v2, v19

    .line 1242
    .line 1243
    sub-double v2, v7, v2

    .line 1244
    .line 1245
    iget-wide v10, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1246
    .line 1247
    mul-double/2addr v10, v14

    .line 1248
    add-double/2addr v10, v2

    .line 1249
    div-double/2addr v10, v14

    .line 1250
    if-nez v9, :cond_2b

    .line 1251
    .line 1252
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1253
    .line 1254
    invoke-direct {v0, v10, v11, v7, v8}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1255
    .line 1256
    .line 1257
    move-object/from16 v2, p2

    .line 1258
    .line 1259
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    .line 1261
    .line 1262
    goto :goto_1a

    .line 1263
    :cond_2b
    move-object/from16 v2, p2

    .line 1264
    .line 1265
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1266
    .line 1267
    invoke-direct {v0, v10, v11, v7, v8}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1268
    .line 1269
    .line 1270
    move-object/from16 v26, v0

    .line 1271
    .line 1272
    :goto_1a
    iget-wide v7, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1273
    .line 1274
    add-double v10, v7, v19

    .line 1275
    .line 1276
    sub-double v7, v10, v7

    .line 1277
    .line 1278
    move-object/from16 p2, v2

    .line 1279
    .line 1280
    iget-wide v2, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1281
    .line 1282
    mul-double/2addr v2, v14

    .line 1283
    add-double/2addr v2, v7

    .line 1284
    div-double/2addr v2, v14

    .line 1285
    if-nez v9, :cond_2c

    .line 1286
    .line 1287
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1288
    .line 1289
    invoke-direct {v0, v2, v3, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    .line 1294
    .line 1295
    goto :goto_18

    .line 1296
    :cond_2c
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1297
    .line 1298
    invoke-direct {v0, v2, v3, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1299
    .line 1300
    .line 1301
    move-object v14, v0

    .line 1302
    move-object/from16 v16, v4

    .line 1303
    .line 1304
    goto/16 :goto_13

    .line 1305
    .line 1306
    :goto_1b
    add-int/lit8 v0, v9, 0x1

    .line 1307
    .line 1308
    move-object/from16 v3, p0

    .line 1309
    .line 1310
    move-object/from16 v2, p1

    .line 1311
    .line 1312
    move-object v8, v1

    .line 1313
    move-object v11, v12

    .line 1314
    move-wide/from16 v9, v29

    .line 1315
    .line 1316
    move-object/from16 v1, p2

    .line 1317
    .line 1318
    move-object v12, v6

    .line 1319
    move-wide/from16 v6, v34

    .line 1320
    .line 1321
    goto/16 :goto_a

    .line 1322
    .line 1323
    :cond_2d
    move-object/from16 p2, v1

    .line 1324
    .line 1325
    move-object/from16 p1, v2

    .line 1326
    .line 1327
    move-object v1, v8

    .line 1328
    move-wide/from16 v29, v9

    .line 1329
    .line 1330
    move-object v6, v12

    .line 1331
    move-object/from16 v25, v14

    .line 1332
    .line 1333
    move-object/from16 v26, v15

    .line 1334
    .line 1335
    move-object v12, v11

    .line 1336
    const/4 v0, 0x0

    .line 1337
    const/4 v15, 0x0

    .line 1338
    :goto_1c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1339
    .line 1340
    .line 1341
    move-result v2

    .line 1342
    const/4 v3, 0x2

    .line 1343
    sub-int/2addr v2, v3

    .line 1344
    if-ge v15, v2, :cond_2e

    .line 1345
    .line 1346
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v2

    .line 1350
    check-cast v2, Ljava/lang/Double;

    .line 1351
    .line 1352
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1353
    .line 1354
    .line 1355
    move-result-wide v2

    .line 1356
    add-int/lit8 v15, v15, 0x1

    .line 1357
    .line 1358
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v4

    .line 1362
    check-cast v4, Ljava/lang/Double;

    .line 1363
    .line 1364
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 1365
    .line 1366
    .line 1367
    move-result-wide v4

    .line 1368
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v7

    .line 1372
    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1373
    .line 1374
    add-int/lit8 v8, v0, 0x1

    .line 1375
    .line 1376
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v9

    .line 1380
    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1381
    .line 1382
    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1383
    .line 1384
    move/from16 v16, v15

    .line 1385
    .line 1386
    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1387
    .line 1388
    mul-double/2addr v14, v4

    .line 1389
    sub-double/2addr v10, v14

    .line 1390
    iget-wide v14, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1391
    .line 1392
    move-object/from16 v32, v6

    .line 1393
    .line 1394
    iget-wide v6, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1395
    .line 1396
    mul-double/2addr v6, v2

    .line 1397
    sub-double/2addr v14, v6

    .line 1398
    sub-double/2addr v10, v14

    .line 1399
    sub-double v6, v2, v4

    .line 1400
    .line 1401
    div-double/2addr v10, v6

    .line 1402
    mul-double v19, v2, v10

    .line 1403
    .line 1404
    add-double v14, v19, v14

    .line 1405
    .line 1406
    new-instance v9, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1407
    .line 1408
    invoke-direct {v9, v10, v11, v14, v15}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1409
    .line 1410
    .line 1411
    move-object/from16 v10, p2

    .line 1412
    .line 1413
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v0

    .line 1420
    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1421
    .line 1422
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v9

    .line 1426
    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1427
    .line 1428
    iget-wide v14, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1429
    .line 1430
    move/from16 p2, v8

    .line 1431
    .line 1432
    iget-wide v8, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1433
    .line 1434
    mul-double/2addr v4, v8

    .line 1435
    sub-double v4, v14, v4

    .line 1436
    .line 1437
    iget-wide v8, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1438
    .line 1439
    mul-double/2addr v8, v2

    .line 1440
    sub-double/2addr v14, v8

    .line 1441
    sub-double/2addr v4, v14

    .line 1442
    div-double/2addr v4, v6

    .line 1443
    mul-double/2addr v2, v4

    .line 1444
    add-double/2addr v2, v14

    .line 1445
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1446
    .line 1447
    invoke-direct {v0, v4, v5, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    .line 1452
    .line 1453
    move/from16 v0, p2

    .line 1454
    .line 1455
    move-object/from16 p2, v10

    .line 1456
    .line 1457
    move/from16 v15, v16

    .line 1458
    .line 1459
    move-object/from16 v6, v32

    .line 1460
    .line 1461
    goto :goto_1c

    .line 1462
    :cond_2e
    move-object/from16 v10, p2

    .line 1463
    .line 1464
    move-object/from16 v14, v26

    .line 1465
    .line 1466
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    .line 1468
    .line 1469
    move-object/from16 v14, v25

    .line 1470
    .line 1471
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1475
    .line 1476
    .line 1477
    move-result v0

    .line 1478
    const/4 v2, 0x1

    .line 1479
    sub-int/2addr v0, v2

    .line 1480
    :goto_1d
    if-ltz v0, :cond_2f

    .line 1481
    .line 1482
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v2

    .line 1486
    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1487
    .line 1488
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    .line 1490
    .line 1491
    add-int/lit8 v0, v0, -0x1

    .line 1492
    .line 1493
    goto :goto_1d

    .line 1494
    :cond_2f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1495
    .line 1496
    .line 1497
    move-result v0

    .line 1498
    const/4 v1, 0x2

    .line 1499
    if-le v0, v1, :cond_31

    .line 1500
    .line 1501
    invoke-static {v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    .line 1502
    .line 1503
    .line 1504
    move-result v0

    .line 1505
    if-eqz v0, :cond_31

    .line 1506
    .line 1507
    invoke-static {v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v7

    .line 1511
    move-object v0, v7

    .line 1512
    check-cast v0, Ljava/util/ArrayList;

    .line 1513
    .line 1514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1515
    .line 1516
    .line 1517
    move-result v0

    .line 1518
    if-gt v0, v1, :cond_30

    .line 1519
    .line 1520
    goto :goto_1e

    .line 1521
    :cond_30
    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v8

    .line 1525
    new-instance v0, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 1526
    .line 1527
    move-object v5, v0

    .line 1528
    move-object v6, v10

    .line 1529
    move-wide/from16 v9, v29

    .line 1530
    .line 1531
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/knox/location/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;D)V

    .line 1532
    .line 1533
    .line 1534
    invoke-static {v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    .line 1535
    .line 1536
    .line 1537
    move-result-object v0

    .line 1538
    const/4 v2, 0x3

    .line 1539
    move-object/from16 v1, p0

    .line 1540
    .line 1541
    move-object/from16 v3, p1

    .line 1542
    .line 1543
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    .line 1544
    .line 1545
    .line 1546
    move-result v7

    .line 1547
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1548
    .line 1549
    .line 1550
    move-result v0

    .line 1551
    if-eqz v0, :cond_32

    .line 1552
    .line 1553
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 1554
    .line 1555
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v2

    .line 1559
    const/4 v3, 0x1

    .line 1560
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v0

    .line 1564
    iget-object v1, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 1565
    .line 1566
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1567
    .line 1568
    .line 1569
    goto :goto_1f

    .line 1570
    :cond_31
    :goto_1e
    const/4 v7, -0x1

    .line 1571
    :cond_32
    :goto_1f
    return v7
.end method

.method public final declared-synchronized deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "_id"

    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    .line 22
    const-string v2, "GEOFENCING"

    .line 23
    .line 24
    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByFieldsAsUser(ILjava/lang/String;Ljava/util/HashMap;)I

    .line 25
    .line 26
    .line 27
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    .line 47
    throw p1
.end method

.method public final declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    const-string v1, "_id"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    const-string v3, "GEOFENCING"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v2, p1, v4, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 27
    .line 28
    const-string v1, "_id"

    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_5

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_2

    .line 50
    :catch_1
    move-exception p1

    .line 51
    goto :goto_3

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    goto :goto_6

    .line 60
    :goto_2
    :try_start_2
    const-string v1, "GeofenceService"

    .line 61
    .line 62
    const-string/jumbo v2, "deleteGeofenceActiveListByAdmin - EX"

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :goto_3
    const-string v1, "GeofenceService"

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v3, "Exception occurred accessing Enterprise db "

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_2
    :cond_1
    :goto_4
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :goto_5
    if-eqz v0, :cond_2

    .line 103
    .line 104
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    .line 107
    :catch_3
    :cond_2
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    :goto_6
    monitor-exit p0

    .line 109
    throw p1
.end method

.method public final declared-synchronized destroyGeofence(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "GeofenceService"

    .line 3
    .line 4
    const-string/jumbo v1, "destroyGeofence"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    .line 30
    const-string v4, "GEOFENCINGSETTINGS"

    .line 31
    .line 32
    const-string/jumbo v5, "state"

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 69
    .line 70
    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    monitor-exit p0

    .line 74
    return p1

    .line 75
    :goto_1
    monitor-exit p0

    .line 76
    throw p1
.end method

.method public final deviceLocationUnavailableMessage(I)V
    .locals 8

    .line 1
    const-string v0, "GeofenceService"

    .line 2
    .line 3
    const-string v1, "DEVICE_LOCATION_UNAVAILABLE"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.DEVICE_LOCATION_UNAVAILABLE"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.USER_ID"

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    if-eq p1, v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid$2(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 43
    .line 44
    invoke-static {v3, p1}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    new-instance v5, Landroid/os/UserHandle;

    .line 51
    .line 52
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v4}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    new-instance v5, Landroid/content/Intent;

    .line 76
    .line 77
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    if-eq p1, v2, :cond_1

    .line 98
    .line 99
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    new-instance p1, Landroid/os/UserHandle;

    .line 108
    .line 109
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v5, p1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    :goto_2
    return-void
.end method

.method public final enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getActiveGeofenceIdsbyAdmin(ILjava/util/List;)Ljava/util/List;
    .locals 8

    .line 1
    const-string v0, "_id"

    .line 2
    .line 3
    const-string v1, "adminUid"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    .line 30
    const-string v6, "GEOFENCING"

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-virtual {p0, v7, v3, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/content/ContentValues;

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-ne v3, p1, :cond_1

    .line 73
    .line 74
    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move-object v2, v4

    .line 94
    :goto_1
    return-object v2

    .line 95
    :goto_2
    const-string p1, "GeofenceService"

    .line 96
    .line 97
    const-string/jumbo p2, "getActiveGeofenceIdsbyAdmin - EX"

    .line 98
    .line 99
    .line 100
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_3
    return-object v2
.end method

.method public final getEffectiveMinDistanceParameter()F
    .locals 6

    .line 1
    const-string/jumbo v0, "distance"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "state"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, "GEOFENCINGSETTINGS"

    .line 15
    .line 16
    invoke-virtual {p0, v3, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroid/content/ContentValues;

    .line 39
    .line 40
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 58
    .line 59
    .line 60
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move v4, v2

    .line 63
    :goto_1
    cmpl-float v5, v3, v2

    .line 64
    .line 65
    if-nez v5, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    cmpl-float v5, v4, v2

    .line 69
    .line 70
    if-eqz v5, :cond_0

    .line 71
    .line 72
    cmpl-float v5, v3, v4

    .line 73
    .line 74
    if-lez v5, :cond_0

    .line 75
    .line 76
    :goto_2
    move v3, v4

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    return v3
.end method

.method public final getEffectiveMinTimeParameter()J
    .locals 9

    .line 1
    const-string/jumbo v0, "time"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "state"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, "GEOFENCINGSETTINGS"

    .line 15
    .line 16
    invoke-virtual {p0, v3, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    move-wide v4, v2

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_3

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Landroid/content/ContentValues;

    .line 40
    .line 41
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-wide v6, v2

    .line 64
    :goto_1
    cmp-long v8, v4, v2

    .line 65
    .line 66
    if-nez v8, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    cmp-long v8, v6, v2

    .line 70
    .line 71
    if-eqz v8, :cond_0

    .line 72
    .line 73
    cmp-long v8, v4, v6

    .line 74
    .line 75
    if-lez v8, :cond_0

    .line 76
    .line 77
    :goto_2
    move-wide v4, v6

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    cmp-long p0, v4, v2

    .line 80
    .line 81
    if-nez p0, :cond_4

    .line 82
    .line 83
    const-wide/32 v4, 0xea60

    .line 84
    .line 85
    .line 86
    :cond_4
    return-wide v4
.end method

.method public final getGeofences(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 9

    .line 1
    const-string/jumbo v0, "blobdata"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "type"

    .line 5
    .line 6
    .line 7
    const-string v2, "_id"

    .line 8
    .line 9
    const-string v3, "GeofenceService"

    .line 10
    .line 11
    const-string/jumbo v4, "getGeofences"

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 22
    .line 23
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    :try_start_0
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    .line 35
    const-string v7, "GEOFENCING"

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    invoke-virtual {p0, p1, v8, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    const/4 v8, 0x2

    .line 75
    if-ne v6, v8, :cond_0

    .line 76
    .line 77
    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 82
    .line 83
    iput p1, v7, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    .line 84
    .line 85
    iput v6, v7, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    .line 86
    .line 87
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    move-object v5, p0

    .line 93
    goto/16 :goto_7

    .line 94
    .line 95
    :catch_0
    move-exception p1

    .line 96
    goto :goto_4

    .line 97
    :catch_1
    move-exception p1

    .line 98
    goto :goto_5

    .line 99
    :cond_0
    const/4 v8, 0x3

    .line 100
    if-ne v6, v8, :cond_1

    .line 101
    .line 102
    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 107
    .line 108
    iput p1, v7, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    .line 109
    .line 110
    iput v6, v7, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    .line 111
    .line 112
    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, v7, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    .line 117
    .line 118
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    check-cast v7, Lcom/samsung/android/knox/location/CircularGeofence;

    .line 127
    .line 128
    iput p1, v7, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    .line 129
    .line 130
    iput v6, v7, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    .line 131
    .line 132
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    if-eqz p0, :cond_3

    .line 137
    .line 138
    :goto_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :goto_2
    move-object p0, v5

    .line 143
    goto :goto_4

    .line 144
    :goto_3
    move-object p0, v5

    .line 145
    goto :goto_5

    .line 146
    :catchall_1
    move-exception p1

    .line 147
    goto :goto_7

    .line 148
    :catch_2
    move-exception p1

    .line 149
    goto :goto_2

    .line 150
    :catch_3
    move-exception p1

    .line 151
    goto :goto_3

    .line 152
    :goto_4
    :try_start_3
    const-string/jumbo v0, "getGeofences - EX"

    .line 153
    .line 154
    .line 155
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    if-eqz p0, :cond_3

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v1, "Exception occurred accessing Enterprise db "

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    .line 184
    .line 185
    if-eqz p0, :cond_3

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :catch_4
    :cond_3
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-eqz p0, :cond_4

    .line 193
    .line 194
    move-object v4, v5

    .line 195
    :cond_4
    return-object v4

    .line 196
    :goto_7
    if-eqz v5, :cond_5

    .line 197
    .line 198
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 199
    .line 200
    .line 201
    :catch_5
    :cond_5
    throw p1
.end method

.method public final getMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;)F
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    const-string v0, "GEOFENCINGSETTINGS"

    .line 12
    .line 13
    const-string/jumbo v1, "distance"

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public final getMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    const-string v0, "GEOFENCINGSETTINGS"

    .line 12
    .line 13
    const-string/jumbo v1, "time"

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const-wide/16 p0, 0x0

    .line 27
    .line 28
    :goto_0
    return-wide p0
.end method

.method public final getPackageNameForUid$2(I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "@getPackageNameForUid - uid = "

    .line 2
    .line 3
    const-string v1, "GeofenceService"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x3e8

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x2710

    .line 13
    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x4e1f

    .line 17
    .line 18
    if-le p1, v0, :cond_1

    .line 19
    .line 20
    :cond_0
    const-string p0, "@getPackageNameForUid - returning UMC PACKAGENAME"

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const-string/jumbo p0, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    const-string v2, "ADMIN_INFO"

    .line 33
    .line 34
    const-string v3, "adminName"

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 p1, 0x0

    .line 41
    const-string v0, "@getPackageNameForUid - returning null"

    .line 42
    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v0, "@getPackageNameForUid - returning compName.getPackageName() --> "

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public final isAdminHasGeofence(I)Z
    .locals 6

    .line 1
    const-string v0, "GeofenceService"

    .line 2
    .line 3
    const-string v1, "Exception occurred accessing Enterprise db "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    const-string v4, "_id"

    .line 8
    .line 9
    filled-new-array {v4}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 14
    .line 15
    const-string v5, "GEOFENCING"

    .line 16
    .line 17
    invoke-virtual {p0, p1, v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_4

    .line 31
    :catch_1
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :catch_2
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :goto_0
    :try_start_2
    const-string/jumbo p1, "isAdminHasGeofence - EX"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    :goto_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :goto_2
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    .line 65
    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_3
    :cond_0
    :goto_3
    return v2

    .line 70
    :goto_4
    if-eqz v3, :cond_1

    .line 71
    .line 72
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 73
    .line 74
    .line 75
    :catch_4
    :cond_1
    throw p0
.end method

.method public final isDeviceInsideGeofence(I)Ljava/util/List;
    .locals 9

    .line 3
    const-string/jumbo v0, "isDeviceInsideGeofence"

    const-string v1, "GeofenceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 8
    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 9
    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 10
    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setPowerRequirement(I)V

    const/4 v6, 0x0

    .line 11
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    if-nez v7, :cond_0

    .line 12
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v0, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    const-string/jumbo v4, "passive"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 14
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    const-string/jumbo v4, "isDeviceInsideGeofence - EX"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v6

    :cond_0
    :goto_0
    if-nez v7, :cond_1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0, v5, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(ZLandroid/location/Location;)Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(ILjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 20
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6
.end method

.method public final isDeviceInsideGeofence(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    .line 8
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    .line 10
    const-string v1, "GEOFENCINGSETTINGS"

    .line 11
    .line 12
    const-string/jumbo v2, "state"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    const/4 p1, 0x1

    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    move v0, p1

    .line 23
    :catch_0
    :cond_0
    return v0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final sendIntenttoAdmins(Ljava/util/List;)V
    .locals 14

    .line 1
    const-string v0, "GeofenceService"

    .line 2
    .line 3
    const-string/jumbo v1, "sendIntenttoAdmins"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string/jumbo v2, "user"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/os/UserManager;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_5

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v1, v4}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 52
    .line 53
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 54
    .line 55
    const-string v5, "ADMIN"

    .line 56
    .line 57
    const-string v6, "adminUid"

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-virtual {v4, v7, v3, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :catch_0
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_0

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {p0, v4, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(ILjava/util/List;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.USER_ID"

    .line 89
    .line 90
    .line 91
    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    .line 92
    .line 93
    .line 94
    const-string/jumbo v9, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 95
    .line 96
    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    new-instance v10, Landroid/content/Intent;

    .line 100
    .line 101
    const-string/jumbo v11, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    .line 102
    .line 103
    .line 104
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    new-array v11, v11, [I

    .line 112
    .line 113
    move v12, v7

    .line 114
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    if-ge v12, v13, :cond_3

    .line 119
    .line 120
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    check-cast v13, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    aput v13, v11, v12

    .line 131
    .line 132
    add-int/lit8 v12, v12, 0x1

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.ID"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    invoke-virtual {v10, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v10, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 152
    .line 153
    invoke-static {v5, v4}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v6, "@sendIntenttoAdmins - ownerUid = "

    .line 160
    .line 161
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid$2(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v11, "@sendIntenttoAdmins - thePackageNameFortheUID = "

    .line 181
    .line 182
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    new-instance v6, Landroid/os/UserHandle;

    .line 201
    .line 202
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    invoke-direct {v6, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v10, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    invoke-static {v5}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v5}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    new-instance v6, Landroid/content/Intent;

    .line 223
    .line 224
    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 225
    .line 226
    .line 227
    iget-object v10, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 228
    .line 229
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 238
    .line 239
    .line 240
    move-result v10

    .line 241
    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    .line 246
    .line 247
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    new-instance v9, Landroid/os/UserHandle;

    .line 250
    .line 251
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v6, v9, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    .line 260
    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :catch_1
    move-exception v4

    .line 264
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 270
    .line 271
    const-string v10, "GEOFENCINGSETTINGS"

    .line 272
    .line 273
    const-string/jumbo v11, "state"

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v4, v7, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    const/4 v10, 0x1

    .line 281
    if-ne v5, v10, :cond_2

    .line 282
    .line 283
    new-instance v5, Landroid/content/Intent;

    .line 284
    .line 285
    const-string/jumbo v10, "com.samsung.android.knox.intent.action.DEVICE_OUTSIDE_GEOFENCE"

    .line 286
    .line 287
    .line 288
    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    .line 300
    .line 301
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 302
    .line 303
    invoke-static {v6, v4}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid$2(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 315
    .line 316
    new-instance v10, Landroid/os/UserHandle;

    .line 317
    .line 318
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6, v5, v10, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    .line 327
    .line 328
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 329
    .line 330
    invoke-static {v6}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-virtual {v6}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    new-instance v10, Landroid/content/Intent;

    .line 339
    .line 340
    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 341
    .line 342
    .line 343
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 344
    .line 345
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    invoke-virtual {v5, v6, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    invoke-virtual {v10, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v10, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    .line 362
    .line 363
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 364
    .line 365
    new-instance v6, Landroid/os/UserHandle;

    .line 366
    .line 367
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5, v10, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 375
    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :catch_2
    move-exception v4

    .line 380
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 381
    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :cond_5
    return-void
.end method

.method public final setMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;F)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    cmpg-float p1, p2, p1

    .line 9
    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 v2, 0x0

    .line 21
    const-string v3, "GEOFENCINGSETTINGS"

    .line 22
    .line 23
    const-string/jumbo v4, "distance"

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    return p1
.end method

.method public final setMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p1, p2, v2

    .line 10
    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    .line 17
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "GEOFENCINGSETTINGS"

    .line 23
    .line 24
    const-string/jumbo v4, "time"

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 34
    .line 35
    const/4 p3, 0x3

    .line 36
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 41
    .line 42
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    return p1
.end method

.method public final startGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7

    .line 1
    const-string v0, "GeofenceService"

    .line 2
    .line 3
    const-string/jumbo v1, "startGeofencing"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    .line 15
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    monitor-enter p0

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    .line 42
    const-string v4, "GEOFENCINGSETTINGS"

    .line 43
    .line 44
    const-string/jumbo v5, "state"

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x1

    .line 49
    move v1, v6

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    return p1

    .line 72
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p1
.end method

.method public final stopGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7

    .line 1
    const-string v0, "GeofenceService"

    .line 2
    .line 3
    const-string/jumbo v1, "stopGeofencing"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    .line 15
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const-string v4, "GEOFENCINGSETTINGS"

    .line 35
    .line 36
    const-string/jumbo v5, "state"

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    move v1, v6

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    return p1
.end method

.method public final systemReady()V
    .locals 4

    .line 1
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 2
    .line 3
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 30
    .line 31
    const-wide/16 v1, 0x1388

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    const-string v1, "_id"

    .line 4
    .line 5
    const-string/jumbo v2, "type"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "blobdata"

    .line 9
    .line 10
    .line 11
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    .line 17
    const-string v3, "GEOFENCING"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v2, p1, v4, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    const-string p1, "_id"

    .line 33
    .line 34
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    const-string/jumbo v1, "type"

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const-string/jumbo v2, "blobdata"

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/4 v3, 0x2

    .line 77
    if-ne v1, v3, :cond_1

    .line 78
    .line 79
    invoke-static {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 84
    .line 85
    iput p1, v2, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    .line 86
    .line 87
    iput v1, v2, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    goto :goto_5

    .line 101
    :catch_0
    move-exception p1

    .line 102
    goto :goto_2

    .line 103
    :catch_1
    move-exception p1

    .line 104
    goto :goto_3

    .line 105
    :cond_1
    const/4 v3, 0x3

    .line 106
    if-ne v1, v3, :cond_2

    .line 107
    .line 108
    invoke-static {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 113
    .line 114
    iput p1, v2, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    .line 115
    .line 116
    iput v1, v2, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    invoke-static {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/samsung/android/knox/location/CircularGeofence;

    .line 133
    .line 134
    iput p1, v2, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    .line 135
    .line 136
    iput v1, v2, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_3
    if-eqz v0, :cond_4

    .line 149
    .line 150
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :catchall_1
    move-exception p1

    .line 155
    goto :goto_6

    .line 156
    :goto_2
    :try_start_2
    const-string v1, "GeofenceService"

    .line 157
    .line 158
    const-string/jumbo v2, "updateGeofenceActiveList - EX"

    .line 159
    .line 160
    .line 161
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .line 163
    .line 164
    if-eqz v0, :cond_4

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :goto_3
    const-string v1, "GeofenceService"

    .line 168
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v3, "Exception occurred accessing Enterprise db "

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    .line 192
    .line 193
    if-eqz v0, :cond_4

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catch_2
    :cond_4
    :goto_4
    monitor-exit p0

    .line 197
    return-void

    .line 198
    :goto_5
    if-eqz v0, :cond_5

    .line 199
    .line 200
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    .line 202
    .line 203
    :catch_3
    :cond_5
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    :goto_6
    monitor-exit p0

    .line 205
    throw p1
.end method

.method public final writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I
    .locals 3

    .line 1
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "adminUid"

    .line 13
    .line 14
    const-string/jumbo v2, "type"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo p2, "blobdata"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 32
    .line 33
    .line 34
    const-string p3, "GEOFENCING"

    .line 35
    .line 36
    invoke-virtual {p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 37
    .line 38
    .line 39
    move-result-wide p2

    .line 40
    long-to-int p2, p2

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    .line 42
    .line 43
    .line 44
    return p2
.end method
