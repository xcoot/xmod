.class public final Lcom/android/server/location/gnss/GnssManagerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

.field public final mGnssGeofenceProxy:Lcom/android/server/location/gnss/GnssGeofenceProxy;

.field public final mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

.field public final mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field public final mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field public final mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

.field public final mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

.field public final mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "GnssService"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 14
    new-instance v0, Lcom/android/server/location/gnss/GnssMetrics;

    .line 16
    const-string v1, "batterystats"

    .line 18
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p1, v1, p3}, Lcom/android/server/location/gnss/GnssMetrics;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 29
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 31
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 33
    invoke-direct {v1, p1, p2, p3, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V

    .line 36
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 38
    new-instance p1, Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 40
    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssStatusProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 43
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 45
    new-instance p1, Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 47
    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssNmeaProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 50
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 52
    new-instance p1, Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 54
    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 57
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 59
    new-instance p1, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 61
    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 64
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 66
    new-instance p1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 68
    invoke-direct {p1, p3}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 71
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 73
    check-cast p2, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 75
    iget-object p2, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 77
    iput-object p2, p1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 79
    new-instance p1, Lcom/android/server/location/gnss/GnssGeofenceProxy;

    .line 81
    invoke-direct {p1, p3}, Lcom/android/server/location/gnss/GnssGeofenceProxy;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 84
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssGeofenceProxy:Lcom/android/server/location/gnss/GnssGeofenceProxy;

    .line 86
    new-instance p1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    .line 88
    invoke-direct {p1, p0, p3}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;-><init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 91
    new-instance p1, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;

    .line 93
    invoke-direct {p1, p0, p3}, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;-><init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 96
    invoke-virtual {p3}, Lcom/android/server/location/gnss/hal/GnssNative;->register()V

    .line 99
    new-instance p1, Lcom/android/server/location/gnss/sec/SLocationProxy;

    .line 101
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 p2, 0x0

    .line 105
    iput-object p2, p1, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    .line 107
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;

    .line 109
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    array-length v0, p3

    .line 2
    if-lez v0, :cond_a

    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object v1, p3, v0

    .line 7
    const-string v2, "--gnssmetrics"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_a

    .line 15
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    .line 22
    invoke-direct {p1}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;-><init>()V

    .line 25
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 27
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_0

    .line 33
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 36
    move-result v1

    .line 37
    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    .line 39
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 41
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    .line 44
    move-result-wide v3

    .line 45
    mul-double/2addr v3, v1

    .line 46
    double-to-int p3, v3

    .line 47
    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    .line 49
    :cond_0
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 51
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 54
    move-result v1

    .line 55
    if-lez v1, :cond_1

    .line 57
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 60
    move-result v1

    .line 61
    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    .line 63
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    .line 66
    move-result-wide v1

    .line 67
    double-to-int v1, v1

    .line 68
    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    .line 70
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 73
    move-result-wide v1

    .line 74
    double-to-int p3, v1

    .line 75
    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    .line 77
    :cond_1
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 79
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 82
    move-result v1

    .line 83
    if-lez v1, :cond_2

    .line 85
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 88
    move-result v1

    .line 89
    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    .line 91
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    .line 94
    move-result-wide v1

    .line 95
    double-to-int v1, v1

    .line 96
    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    .line 98
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 101
    move-result-wide v1

    .line 102
    double-to-int p3, v1

    .line 103
    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    .line 105
    :cond_2
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 107
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 110
    move-result v1

    .line 111
    if-lez v1, :cond_3

    .line 113
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 116
    move-result v1

    .line 117
    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    .line 119
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    .line 122
    move-result-wide v1

    .line 123
    iput-wide v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    .line 125
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 128
    move-result-wide v1

    .line 129
    iput-wide v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    .line 131
    :cond_3
    iget p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    .line 133
    if-lez p3, :cond_4

    .line 135
    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusProcessed:I

    .line 137
    :cond_4
    iget p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    .line 139
    if-lez p3, :cond_5

    .line 141
    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusProcessed:I

    .line 143
    :cond_5
    iget p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 145
    if-lez p3, :cond_6

    .line 147
    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusUsedInFix:I

    .line 149
    :cond_6
    iget p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    .line 151
    if-lez p3, :cond_7

    .line 153
    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusUsedInFix:I

    .line 155
    :cond_7
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 157
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 160
    move-result v1

    .line 161
    if-lez v1, :cond_8

    .line 163
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 166
    move-result v1

    .line 167
    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5TopFourAverageCn0Processed:I

    .line 169
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    .line 172
    move-result-wide v1

    .line 173
    iput-wide v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanL5TopFourAverageCn0DbHz:D

    .line 175
    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 178
    move-result-wide v1

    .line 179
    iput-wide v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationL5TopFourAverageCn0DbHz:D

    .line 181
    :cond_8
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    .line 183
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    new-instance v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    .line 188
    invoke-direct {v1}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    .line 191
    iget-object p3, p3, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    .line 193
    iget-object p3, p3, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    .line 195
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    :try_start_0
    iget-object p3, p3, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 200
    invoke-interface {p3}, Lcom/android/internal/app/IBatteryStats;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    .line 203
    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 205
    :catch_0
    move-exception p3

    .line 206
    const-string v2, "GnssMetrics"

    .line 208
    invoke-static {v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/4 p3, 0x0

    .line 212
    :goto_0
    if-eqz p3, :cond_9

    .line 214
    invoke-virtual {p3}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    .line 217
    move-result-wide v2

    .line 218
    iput-wide v2, v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    .line 220
    invoke-virtual {p3}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    .line 223
    move-result-wide v2

    .line 224
    long-to-double v2, v2

    .line 225
    const-wide v4, 0x414b774000000000L    # 3600000.0

    .line 230
    div-double/2addr v2, v4

    .line 231
    iput-wide v2, v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    .line 233
    invoke-virtual {p3}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    .line 236
    move-result-object p3

    .line 237
    array-length v2, p3

    .line 238
    new-array v2, v2, [J

    .line 240
    iput-object v2, v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    .line 242
    array-length v3, p3

    .line 243
    invoke-static {p3, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :cond_9
    iput-object v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    .line 248
    const-string/jumbo p3, "ro.boot.revision"

    .line 251
    const-string v1, ""

    .line 253
    invoke-static {p3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    move-result-object p3

    .line 257
    iput-object p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    .line 259
    invoke-static {p1}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 262
    move-result-object p1

    .line 263
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->reset()V

    .line 270
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 273
    return-void

    .line 274
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "Capabilities: "

    .line 278
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 283
    iget-object v1, v1, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "GNSS Hardware Model Name: "

    .line 299
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 304
    iget-object v1, v1, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 318
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    const-string v0, "Status Provider:"

    .line 323
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 329
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 331
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 337
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 339
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 341
    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isMeasurementSupported()Z

    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_b

    .line 347
    const-string v0, "Measurements Provider:"

    .line 349
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 355
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 357
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 363
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 365
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 367
    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isNavigationMessageCollectionSupported()Z

    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_c

    .line 373
    const-string v0, "Navigation Message Provider:"

    .line 375
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 381
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 383
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 389
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 391
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 393
    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isAntennaInfoSupported()Z

    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_d

    .line 399
    const-string v0, "Antenna Info Provider:"

    .line 401
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    .line 409
    const-string v1, "Antenna Infos: "

    .line 411
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 416
    iget-object v1, v1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 430
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 436
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 438
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    const-string v0, "NMEA Provider:"

    .line 443
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 449
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 451
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 457
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 459
    iget-object v0, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mLastKnownPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    .line 461
    if-eqz v0, :cond_e

    .line 463
    const-string v1, "Last Known Power Stats:"

    .line 465
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 471
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 473
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 475
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/location/gnss/GnssPowerStats;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;Landroid/location/GnssCapabilities;)V

    .line 478
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 481
    :cond_e
    return-void
.end method
