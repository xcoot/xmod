.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$1:Z

    .line 8
    iput-boolean p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$2:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$1:Z

    .line 5
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->f$2:Z

    .line 7
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v2

    .line 13
    const-string/jumbo v3, "gnss_hal_location_request_duration_millis"

    .line 16
    const-wide/16 v4, 0x2710

    .line 18
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 21
    move-result-wide v2

    .line 22
    const-wide/16 v4, 0x0

    .line 24
    cmp-long v4, v2, v4

    .line 26
    const-string v5, "GnssLocationProvider"

    .line 28
    if-nez v4, :cond_0

    .line 30
    const-string p0, "GNSS HAL location request is disabled by Settings."

    .line 32
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    goto/16 :goto_2

    .line 37
    :cond_0
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 39
    const-string/jumbo v6, "location"

    .line 42
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroid/location/LocationManager;

    .line 48
    new-instance v6, Landroid/location/LocationRequest$Builder;

    .line 50
    const-wide/16 v7, 0x3e8

    .line 52
    invoke-direct {v6, v7, v8}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 55
    const/4 v7, 0x1

    .line 56
    invoke-virtual {v6, v7}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    .line 59
    move-result-object v6

    .line 60
    if-nez v1, :cond_2

    .line 62
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isDeviceBasedHybridSupported()Z

    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;

    .line 71
    const/4 v8, 0x0

    .line 72
    invoke-direct {v1, v0, v8}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    .line 75
    const/16 v8, 0x64

    .line 77
    invoke-virtual {v6, v8}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    .line 80
    const-string/jumbo v8, "fused"

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda22;

    .line 86
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v8, 0x68

    .line 91
    invoke-virtual {v6, v8}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    .line 94
    const-string/jumbo v8, "network"

    .line 97
    :goto_1
    iget-object v9, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 99
    invoke-virtual {v9}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_3

    .line 105
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isKOREmergency(Z)Z

    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_6

    .line 111
    :cond_3
    iget-object v9, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 113
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-static {}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    .line 119
    move-result-object v9

    .line 120
    if-nez p0, :cond_4

    .line 122
    iget v9, v9, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    .line 124
    const/4 v10, 0x2

    .line 125
    if-ge v9, v10, :cond_5

    .line 127
    :cond_4
    invoke-virtual {v6, v7}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    .line 130
    const-wide/16 v9, 0x3

    .line 132
    mul-long/2addr v2, v9

    .line 133
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isKOREmergency(Z)Z

    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_6

    .line 139
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->releaseDozeMode()V

    .line 142
    :cond_6
    invoke-virtual {v6, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    move-result-object p0

    .line 149
    filled-new-array {v8, p0}, [Ljava/lang/Object;

    .line 152
    move-result-object p0

    .line 153
    const-string v0, "GNSS HAL Requesting location updates from %s provider for %d millis."

    .line 155
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 159
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v4, v8}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    .line 165
    move-result-object p0

    .line 166
    if-eqz p0, :cond_7

    .line 168
    invoke-virtual {v6}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 171
    move-result-object p0

    .line 172
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 174
    invoke-virtual {v4, v8, p0, v0, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 177
    :cond_7
    :goto_2
    return-void
.end method
