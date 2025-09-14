.class public final Lcom/android/server/SensorNotificationService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLocalGeomagneticFieldUpdateTime:J

.field public mMetaSensor:Landroid/hardware/Sensor;

.field public mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "SensorNotificationService"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 10
    const-wide/32 v0, -0x1b7740

    .line 13
    iput-wide v0, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    .line 15
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 6

    .line 1
    const/16 v0, 0x258

    .line 3
    if-ne p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    .line 7
    const-string/jumbo v1, "sensor"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/hardware/SensorManager;

    .line 16
    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 18
    const/16 v1, 0x20

    .line 20
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    .line 26
    if-nez v0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 35
    :cond_1
    :goto_0
    const/16 v0, 0x3e8

    .line 37
    if-ne p1, v0, :cond_3

    .line 39
    iget-object p1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    .line 41
    const-string/jumbo v0, "location"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    move-object v0, p1

    .line 49
    check-cast v0, Landroid/location/LocationManager;

    .line 51
    if-nez v0, :cond_2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const v4, 0x47c35000    # 100000.0f

    .line 57
    const-string/jumbo v1, "passive"

    .line 60
    const-wide/32 v2, 0x1b7740

    .line 63
    move-object v5, p0

    .line 64
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmpl-double v0, v0, v2

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 14
    move-result-wide v0

    .line 15
    cmpl-double v0, v0, v2

    .line 17
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    .line 26
    sub-long/2addr v0, v2

    .line 27
    const-wide/32 v2, 0x927c0

    .line 30
    cmp-long v0, v0, v2

    .line 32
    if-gez v0, :cond_1

    .line 34
    return-void

    .line 35
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    move-result-wide v5

    .line 39
    const-string/jumbo v0, "sensor.notification.use_mocked"

    .line 42
    const-string/jumbo v1, "false"

    .line 45
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    .line 56
    move-result v1

    .line 57
    if-eq v0, v1, :cond_3

    .line 59
    const-wide v0, 0x125ea667180L

    .line 64
    cmp-long v0, v5, v0

    .line 66
    if-gez v0, :cond_2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Landroid/hardware/GeomagneticField;

    .line 71
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 74
    move-result-wide v1

    .line 75
    double-to-float v2, v1

    .line 76
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 79
    move-result-wide v3

    .line 80
    double-to-float v3, v3

    .line 81
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    .line 84
    move-result-wide v7

    .line 85
    double-to-float v4, v7

    .line 86
    move-object v1, v0

    .line 87
    invoke-direct/range {v1 .. v6}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 90
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getFieldStrength()F

    .line 93
    move-result p1

    .line 94
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 96
    div-float/2addr p1, v1

    .line 97
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    .line 100
    move-result v1

    .line 101
    float-to-double v1, v1

    .line 102
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 107
    mul-double/2addr v1, v3

    .line 108
    const-wide v5, 0x4066800000000000L    # 180.0

    .line 113
    div-double/2addr v1, v5

    .line 114
    double-to-float v1, v1

    .line 115
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getInclination()F

    .line 118
    move-result v0

    .line 119
    float-to-double v7, v0

    .line 120
    mul-double/2addr v7, v3

    .line 121
    div-double/2addr v7, v5

    .line 122
    double-to-float v0, v7

    .line 123
    invoke-static {p1, v1, v0}, Landroid/hardware/SensorAdditionalInfo;->createLocalGeomagneticField(FFF)Landroid/hardware/SensorAdditionalInfo;

    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 131
    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 137
    move-result-wide v0

    .line 138
    iput-wide v0, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 141
    :catch_0
    const-string p0, "SensorNotificationService"

    .line 143
    const-string p1, "Invalid local geomagnetic field, ignore."

    .line 145
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_3
    :goto_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 3
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    .line 5
    if-ne p1, v0, :cond_0

    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 9
    const-string v0, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    .line 11
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    const/high16 v0, 0x40000000    # 2.0f

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 19
    iget-object p0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    .line 21
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 23
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 26
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/SensorNotificationService;

    .line 3
    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method
