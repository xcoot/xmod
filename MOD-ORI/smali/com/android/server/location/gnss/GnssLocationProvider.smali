.class public abstract Lcom/android/server/location/gnss/GnssLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;
.implements Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;


# static fields
.field public static final PROPERTIES:Landroid/location/provider/ProviderProperties;

.field public static final VERBOSE:Z


# instance fields
.field public isExtraCommandFromAllowedAppRequest:Z

.field public isFoldablePhone:Z

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mAutomotiveSuspend:Z

.field public mBatchingAlarm:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;

.field public mBatchingEnabled:Z

.field public mBatchingStarted:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mClientSource:Landroid/os/WorkSource;

.field public final mContext:Landroid/content/Context;

.field public mDeleteAidingHistory:Ljava/lang/String;

.field public final mDownloadInProgressPsdsTypes:Ljava/util/Set;

.field public final mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mFixInterval:I

.field public mFixRequestTime:J

.field public final mFlushListeners:Ljava/util/ArrayList;

.field public final mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

.field public final mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

.field public final mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

.field public mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public mGpsEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInitialized:Z

.field public final mIntentReceiver:Lcom/android/server/location/gnss/GnssLocationProvider$2;

.field public mLastFixTime:J

.field public mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

.field public final mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

.field public final mLock:Ljava/lang/Object;

.field public final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

.field public final mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

.field public final mNetworkTimeHelper:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

.field public final mPendingDownloadPsdsTypes:Ljava/util/Set;

.field public mPositionMode:I

.field public mProviderRequest:Landroid/location/provider/ProviderRequest;

.field public final mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

.field public final mPsdsPeriodicDownloadToken:Ljava/lang/Object;

.field public final mSecGpsDump:Ljava/util/ArrayList;

.field public final mSecGpsSimHistoryDump:Ljava/util/ArrayList;

.field public mShutdown:Z

.field public mSimSlotId:I

.field public mStarted:Z

.field public mStartedChangedElapsedRealtime:J

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mSuplEsEnabled:Z

.field public mSupportsPsds:Z

.field public mSvCallback:Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

.field public mTimeToFirstFix:I

.field public final mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mVSFilter:Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "GnssLocationProvider"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    .line 9
    .line 10
    new-instance v0, Landroid/location/provider/ProviderProperties$Builder;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-direct {v0}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    const/16 v0, 0x3e8

    .line 4
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 7
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 8
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    .line 9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    .line 10
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadInProgressPsdsTypes:Ljava/util/Set;

    .line 11
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    .line 14
    const-string v1, "None"

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    .line 15
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 16
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isFoldablePhone:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 19
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-direct {v1}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 20
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 21
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIntentReceiver:Lcom/android/server/location/gnss/GnssLocationProvider$2;

    .line 24
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 27
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    const/4 p3, 0x0

    .line 28
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 31
    iget-object p2, p2, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 32
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 33
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 34
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 35
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

    .line 36
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 37
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 38
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 39
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 40
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V
    .locals 5

    .line 41
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p1}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 43
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-direct {v0}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    const/16 v0, 0x3e8

    .line 46
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 49
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    .line 52
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadInProgressPsdsTypes:Ljava/util/Set;

    .line 53
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    .line 56
    const-string v2, "None"

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    .line 57
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 58
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isFoldablePhone:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 61
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 62
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;

    move-object v3, p0

    check-cast v3, Lcom/android/server/location/gnss/GnssLocationProviderSec;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 63
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 65
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$2;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIntentReceiver:Lcom/android/server/location/gnss/GnssLocationProvider$2;

    .line 66
    const-string v2, "GnssLocationProvider"

    const-string v4, "GnssLocationProvider()"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 69
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 70
    check-cast p2, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 71
    iget-object p4, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 72
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 73
    iget-object p2, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 74
    const-class p2, Landroid/os/PowerManager;

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 76
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p4, 0x1

    .line 77
    const-string v2, "*location*:GnssLocationProvider"

    invoke-virtual {p2, p4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 78
    invoke-virtual {v2, p4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 79
    const-string/jumbo v2, "telephony_subscription_service"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 80
    new-instance v2, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;

    .line 81
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v0, v2, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->isDriving:Z

    .line 83
    iput v0, v2, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    const/4 v0, 0x0

    .line 84
    iput-object v0, v2, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    .line 85
    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mVSFilter:Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;

    .line 86
    const-string v0, "*location*:PsdsDownload"

    invoke-virtual {p2, p4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    invoke-virtual {p2, p4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 88
    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 89
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 90
    const-string p2, "batterystats"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 91
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 92
    iget-object v0, p3, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 93
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 94
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$1;

    invoke-direct {v0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    .line 95
    new-instance v2, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v2, p1, v0, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;Z)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 96
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;

    invoke-direct {v1, v3}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p1, v1, v4, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 99
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

    invoke-direct {v1, v0}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;-><init>(Landroid/os/Looper;)V

    .line 101
    new-instance v0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;-><init>(Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    .line 102
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

    .line 103
    new-instance v0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 104
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p1, p2, v3}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/GnssLocationProviderSec;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 105
    new-instance p1, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 106
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 107
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addLocationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;)V

    .line 108
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V

    .line 109
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setAGpsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;)V

    .line 110
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setPsdsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;)V

    .line 111
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setNotificationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;)V

    .line 112
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setLocationRequestCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;)V

    .line 113
    invoke-virtual {p3, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setTimeCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;)V

    return-void
.end method

.method public static getTimestamp()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "[yyyy-MM-dd HH:mm:ss]"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method


# virtual methods
.method public abstract changeNlpAccuracyInForce(Landroid/location/Location;)V
.end method

.method public final demandUtcTimeInjection()V
    .locals 3

    .line 1
    const-string v0, "GnssLocationProvider"

    .line 2
    .line 3
    const-string/jumbo v1, "demandUtcTimeInjection"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 p1, 0x0

    .line 2
    move v0, p1

    .line 3
    :cond_0
    array-length v1, p3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v1, :cond_2

    .line 6
    .line 7
    aget-object v1, p3, v0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-lez v3, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0x2d

    .line 22
    .line 23
    if-eq v3, v4, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    const-string v3, "-a"

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    move p3, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    move p3, p1

    .line 39
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v1, "mStarted="

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "   (changed "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    .line 69
    .line 70
    sub-long/2addr v0, v3

    .line 71
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 72
    .line 73
    .line 74
    const-string v0, " ago)"

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v1, "mBatchingEnabled="

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    .line 88
    .line 89
    const-string/jumbo v3, "mBatchingStarted="

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1, p2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    .line 97
    .line 98
    const-string/jumbo v3, "mBatchSize="

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1, p2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string/jumbo v1, "mFixInterval="

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 128
    .line 129
    invoke-static {v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v3, "GNSS_KPI_START\n  KPI logging start time: "

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-wide v3, v0, Lcom/android/server/location/gnss/GnssMetrics;->mLogStartInElapsedRealtimeMs:J

    .line 148
    .line 149
    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 150
    .line 151
    .line 152
    const-string v3, "\n"

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v4, "  KPI logging end time: "

    .line 158
    .line 159
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 163
    .line 164
    .line 165
    move-result-wide v4

    .line 166
    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v4, "  Number of location reports: "

    .line 173
    .line 174
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 178
    .line 179
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-lez v5, :cond_3

    .line 194
    .line 195
    const-string v5, "  Percentage location failure: "

    .line 196
    .line 197
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    .line 203
    .line 204
    .line 205
    move-result-wide v7

    .line 206
    mul-double/2addr v7, v5

    .line 207
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    :cond_3
    const-string v4, "  Number of TTFF reports: "

    .line 214
    .line 215
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 219
    .line 220
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-lez v5, :cond_4

    .line 235
    .line 236
    const-string v5, "  TTFF mean (sec): "

    .line 237
    .line 238
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    .line 242
    .line 243
    .line 244
    move-result-wide v5

    .line 245
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v5, "  TTFF standard deviation (sec): "

    .line 252
    .line 253
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 257
    .line 258
    .line 259
    move-result-wide v4

    .line 260
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    :cond_4
    const-string v4, "  Number of position accuracy reports: "

    .line 267
    .line 268
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 272
    .line 273
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-lez v5, :cond_5

    .line 288
    .line 289
    const-string v5, "  Position accuracy mean (m): "

    .line 290
    .line 291
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    .line 295
    .line 296
    .line 297
    move-result-wide v5

    .line 298
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v5, "  Position accuracy standard deviation (m): "

    .line 305
    .line 306
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 310
    .line 311
    .line 312
    move-result-wide v4

    .line 313
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    :cond_5
    const-string v4, "  Number of CN0 reports: "

    .line 320
    .line 321
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 325
    .line 326
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    if-lez v5, :cond_6

    .line 341
    .line 342
    const-string v5, "  Top 4 Avg CN0 mean (dB-Hz): "

    .line 343
    .line 344
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    .line 348
    .line 349
    .line 350
    move-result-wide v5

    .line 351
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v5, "  Top 4 Avg CN0 standard deviation (dB-Hz): "

    .line 358
    .line 359
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 363
    .line 364
    .line 365
    move-result-wide v4

    .line 366
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    :cond_6
    const-string v4, "  Total number of sv status messages processed: "

    .line 373
    .line 374
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    iget v4, v0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    .line 378
    .line 379
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v4, "  Total number of L5 sv status messages processed: "

    .line 386
    .line 387
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    iget v4, v0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    .line 391
    .line 392
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v4, "  Total number of sv status messages processed, where sv is used in fix: "

    .line 399
    .line 400
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    iget v4, v0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 404
    .line 405
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v4, "  Total number of L5 sv status messages processed, where sv is used in fix: "

    .line 412
    .line 413
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    iget v4, v0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    .line 417
    .line 418
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v4, "  Number of L5 CN0 reports: "

    .line 425
    .line 426
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 430
    .line 431
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    if-lez v5, :cond_7

    .line 446
    .line 447
    const-string v5, "  L5 Top 4 Avg CN0 mean (dB-Hz): "

    .line 448
    .line 449
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    .line 453
    .line 454
    .line 455
    move-result-wide v5

    .line 456
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v5, "  L5 Top 4 Avg CN0 standard deviation (dB-Hz): "

    .line 463
    .line 464
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    .line 468
    .line 469
    .line 470
    move-result-wide v4

    .line 471
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    :cond_7
    const-string v4, "  Used-in-fix constellation types: "

    .line 478
    .line 479
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    move v4, p1

    .line 483
    :goto_2
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    .line 484
    .line 485
    array-length v6, v5

    .line 486
    if-ge v4, v6, :cond_9

    .line 487
    .line 488
    aget-boolean v5, v5, v4

    .line 489
    .line 490
    if-eqz v5, :cond_8

    .line 491
    .line 492
    invoke-static {v4}, Landroid/location/GnssStatus;->constellationTypeToString(I)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v5, " "

    .line 500
    .line 501
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 505
    .line 506
    goto :goto_2

    .line 507
    :cond_9
    const-string v4, "GNSS_KPI_END"

    .line 508
    .line 509
    invoke-static {v1, v3, v4, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    :try_start_0
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 518
    .line 519
    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    .line 520
    .line 521
    .line 522
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    goto :goto_3

    .line 524
    :catch_0
    move-exception v0

    .line 525
    const-string v4, "GnssMetrics"

    .line 526
    .line 527
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    .line 529
    .line 530
    const/4 v0, 0x0

    .line 531
    :goto_3
    if-eqz v0, :cond_b

    .line 532
    .line 533
    const-string v4, "Power Metrics"

    .line 534
    .line 535
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const-string v4, "  Time on battery (min): "

    .line 542
    .line 543
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    .line 547
    .line 548
    .line 549
    move-result-wide v4

    .line 550
    long-to-double v4, v4

    .line 551
    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    div-double/2addr v4, v6

    .line 557
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    if-eqz v4, :cond_a

    .line 568
    .line 569
    array-length v5, v4

    .line 570
    const/4 v8, 0x2

    .line 571
    if-ne v5, v8, :cond_a

    .line 572
    .line 573
    const-string v5, "  Amount of time (while on battery) Top 4 Avg CN0 > 20.0 dB-Hz (min): "

    .line 574
    .line 575
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    aget-wide v8, v4, v2

    .line 579
    .line 580
    long-to-double v8, v8

    .line 581
    div-double/2addr v8, v6

    .line 582
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    const-string v5, "  Amount of time (while on battery) Top 4 Avg CN0 <= 20.0 dB-Hz (min): "

    .line 589
    .line 590
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    aget-wide v4, v4, p1

    .line 594
    .line 595
    long-to-double v4, v4

    .line 596
    div-double/2addr v4, v6

    .line 597
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    :cond_a
    const-string v4, "  Energy consumed while on battery (mAh): "

    .line 604
    .line 605
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    .line 609
    .line 610
    .line 611
    move-result-wide v4

    .line 612
    long-to-double v4, v4

    .line 613
    const-wide v6, 0x414b774000000000L    # 3600000.0

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    div-double/2addr v4, v6

    .line 619
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    :cond_b
    const-string v0, "Hardware Version: "

    .line 626
    .line 627
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    const-string/jumbo v0, "ro.boot.revision"

    .line 631
    .line 632
    .line 633
    const-string v4, ""

    .line 634
    .line 635
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    if-eqz p3, :cond_e

    .line 653
    .line 654
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

    .line 655
    .line 656
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    const-string/jumbo v0, "mPeriodicTimeInjectionEnabled="

    .line 660
    .line 661
    .line 662
    const-string v1, "TimeDetectorNetworkTimeHelper:"

    .line 663
    .line 664
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 668
    .line 669
    const-string v3, "  "

    .line 670
    .line 671
    invoke-direct {v1, p2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 675
    .line 676
    .line 677
    monitor-enter p3

    .line 678
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 679
    .line 680
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    iget-boolean v0, p3, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mPeriodicTimeInjectionEnabled:Z

    .line 684
    .line 685
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    const-string v0, "Debug log:"

    .line 697
    .line 698
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    iget-object p3, p3, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    .line 702
    .line 703
    invoke-virtual {p3, v1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 704
    .line 705
    .line 706
    new-instance p3, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    const-string/jumbo v0, "mSupportsPsds="

    .line 709
    .line 710
    .line 711
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 715
    .line 716
    const-string v1, "PsdsServerConfigured="

    .line 717
    .line 718
    invoke-static {p3, v0, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    move-result-object p3

    .line 722
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 723
    .line 724
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 725
    .line 726
    const-string v3, "LONGTERM_PSDS_SERVER_1"

    .line 727
    .line 728
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    if-nez v1, :cond_c

    .line 733
    .line 734
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 735
    .line 736
    const-string v3, "LONGTERM_PSDS_SERVER_2"

    .line 737
    .line 738
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    if-nez v1, :cond_c

    .line 743
    .line 744
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 745
    .line 746
    const-string v1, "LONGTERM_PSDS_SERVER_3"

    .line 747
    .line 748
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    if-eqz v0, :cond_d

    .line 753
    .line 754
    :cond_c
    move p1, v2

    .line 755
    :cond_d
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object p1

    .line 762
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    const-string/jumbo p1, "native internal state: "

    .line 766
    .line 767
    .line 768
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    new-instance p1, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    const-string p3, "  "

    .line 774
    .line 775
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 779
    .line 780
    invoke-virtual {p3}, Lcom/android/server/location/gnss/hal/GnssNative;->getInternalState()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object p3

    .line 784
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object p1

    .line 791
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    goto :goto_4

    .line 795
    :catchall_0
    move-exception p0

    .line 796
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 797
    throw p0

    .line 798
    :cond_e
    :goto_4
    const-string p1, "\nSEC Dump for updateRequirements"

    .line 799
    .line 800
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    .line 804
    .line 805
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    .line 807
    .line 808
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 809
    .line 810
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    const-string p3, "\n"

    .line 814
    .line 815
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object p1

    .line 822
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    const-string p1, "SEC Dump for Deleting aiding data"

    .line 826
    .line 827
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    new-instance p1, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    .line 834
    .line 835
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    .line 836
    .line 837
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    const-string p3, "\n"

    .line 841
    .line 842
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object p1

    .line 849
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    const-string p1, "SEC Dump for sim state history"

    .line 853
    .line 854
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    new-instance p1, Ljava/lang/StringBuilder;

    .line 858
    .line 859
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .line 861
    .line 862
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    .line 863
    .line 864
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    const-string p3, "\n"

    .line 868
    .line 869
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object p1

    .line 876
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->dumpSec(Ljava/io/PrintWriter;)V

    .line 880
    .line 881
    .line 882
    return-void
.end method

.method public abstract dumpSec(Ljava/io/PrintWriter;)V
.end method

.method public final getBatchSize()I
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.location.hwflp"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "true"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->getBatchSize()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const-string p0, "SLocationProxy"

    .line 25
    .line 26
    const-string v0, "GNSS batching is disabled."

    .line 27
    .line 28
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public abstract getPositionModeSec(I)I
.end method

.method public abstract gnssConfigurationUpdateSec(Ljava/lang/String;)V
.end method

.method public final handleDownloadPsdsData(I)V
    .locals 6

    .line 1
    const-string v0, "PSDS type "

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v1, "persist.sys.xtra_time"

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-string/jumbo v4, "user"

    .line 15
    .line 16
    .line 17
    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    sub-long/2addr v2, v4

    .line 36
    const-wide/32 v4, 0x1499700

    .line 37
    .line 38
    .line 39
    cmp-long v1, v2, v4

    .line 40
    .line 41
    if-gez v1, :cond_0

    .line 42
    .line 43
    const-string v1, "GnssLocationProvider"

    .line 44
    .line 45
    const-string v2, "Ignore xtra download request"

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    const-string v1, "GnssLocationProvider"

    .line 52
    .line 53
    const-string/jumbo v2, "xtra download request accepted from FW"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    const-string v1, "GnssLocationProvider"

    .line 61
    .line 62
    const-string v2, "NumberFormatException while using parseLong."

    .line 63
    .line 64
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    const-string p0, "GnssLocationProvider"

    .line 72
    .line 73
    const-string/jumbo p1, "handleDownloadPsdsData() called when PSDS not supported"

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v1

    .line 91
    :try_start_1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 106
    .line 107
    monitor-enter v1

    .line 108
    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadInProgressPsdsTypes:Ljava/util/Set;

    .line 109
    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    const-string p0, "GnssLocationProvider"

    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, " download in progress. Ignore the request."

    .line 131
    .line 132
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 144
    :catchall_1
    move-exception p0

    .line 145
    goto :goto_1

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 147
    .line 148
    const-wide/32 v2, 0xea60

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadInProgressPsdsTypes:Ljava/util/Set;

    .line 155
    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    const-string v0, "GnssLocationProvider"

    .line 165
    .line 166
    const-string v1, "WakeLock acquired by handleDownloadPsdsData()"

    .line 167
    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;

    .line 176
    .line 177
    const/4 v2, 0x1

    .line 178
    invoke-direct {v1, p1, v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    .line 186
    .line 187
    return-void

    .line 188
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    throw p0
.end method

.method public abstract handleEnableSec()V
.end method

.method public abstract handleReportSvStatusSec(Landroid/location/GnssStatus;)V
.end method

.method public final hibernate()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 9
    .line 10
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 11
    .line 12
    int-to-long v3, v3

    .line 13
    add-long v4, v0, v3

    .line 14
    .line 15
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    const-string v6, "GnssLocationProvider"

    .line 21
    .line 22
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public abstract isDeviceBasedHybridSupported()Z
.end method

.method public abstract isEquipmentTestModeEnabled()Z
.end method

.method public abstract isExtraCommandAllowed(I)Z
.end method

.method public final isGpsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public abstract isKOREmergency(Z)Z
.end method

.method public final onCapabilitiesChanged(Landroid/location/GnssCapabilities;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onExtraCommand(ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandAllowed(I)Z

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    const-string v0, "GnssLocationProvider"

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo p2, "sendExtraCommand from uid "

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, " ignored."

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string/jumbo p1, "delete_aiding_data"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 41
    .line 42
    if-eqz p1, :cond_11

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 45
    .line 46
    const p2, 0xffff

    .line 47
    .line 48
    .line 49
    if-nez p3, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-nez p3, :cond_e

    .line 59
    .line 60
    const p2, 0xfffd

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_1
    const-string/jumbo v0, "ephemeris"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const-string v1, "almanac"

    .line 73
    .line 74
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    or-int/lit8 v0, v0, 0x2

    .line 81
    .line 82
    :cond_2
    const-string/jumbo v1, "position"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    or-int/lit8 v0, v0, 0x4

    .line 92
    .line 93
    :cond_3
    const-string/jumbo v1, "time"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    or-int/lit8 v0, v0, 0x8

    .line 103
    .line 104
    :cond_4
    const-string/jumbo v1, "iono"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    or-int/lit8 v0, v0, 0x10

    .line 114
    .line 115
    :cond_5
    const-string/jumbo v1, "utc"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_6

    .line 123
    .line 124
    or-int/lit8 v0, v0, 0x20

    .line 125
    .line 126
    :cond_6
    const-string/jumbo v1, "health"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    or-int/lit8 v0, v0, 0x40

    .line 136
    .line 137
    :cond_7
    const-string/jumbo v1, "svdir"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    or-int/lit16 v0, v0, 0x80

    .line 147
    .line 148
    :cond_8
    const-string/jumbo v1, "svsteer"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_9

    .line 156
    .line 157
    or-int/lit16 v0, v0, 0x100

    .line 158
    .line 159
    :cond_9
    const-string/jumbo v1, "sadata"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_a

    .line 167
    .line 168
    or-int/lit16 v0, v0, 0x200

    .line 169
    .line 170
    :cond_a
    const-string/jumbo v1, "rti"

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_b

    .line 178
    .line 179
    or-int/lit16 v0, v0, 0x400

    .line 180
    .line 181
    :cond_b
    const-string/jumbo v1, "celldb-info"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_c

    .line 189
    .line 190
    const v1, 0x8000

    .line 191
    .line 192
    .line 193
    or-int/2addr v0, v1

    .line 194
    :cond_c
    const-string v1, "all"

    .line 195
    .line 196
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result p3

    .line 200
    if-eqz p3, :cond_d

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_d
    move p2, v0

    .line 204
    :cond_e
    :goto_0
    if-eqz p2, :cond_f

    .line 205
    .line 206
    invoke-virtual {p4, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->deleteAidingData(I)V

    .line 207
    .line 208
    .line 209
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_10

    .line 217
    .line 218
    const-string/jumbo p1, "ro.product.first_api_level"

    .line 219
    .line 220
    .line 221
    const/4 p2, 0x0

    .line 222
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    const/16 p2, 0x23

    .line 227
    .line 228
    if-ge p1, p2, :cond_10

    .line 229
    .line 230
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;

    .line 231
    .line 232
    const/4 p2, 0x3

    .line 233
    invoke-direct {p1, p0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 237
    .line 238
    .line 239
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string p2, ": Delete Aiding data"

    .line 252
    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_11
    const-string/jumbo p1, "force_time_injection"

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-eqz p1, :cond_12

    .line 271
    .line 272
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->demandUtcTimeInjection()V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_12
    const-string/jumbo p1, "force_psds_injection"

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-eqz p1, :cond_13

    .line 284
    .line 285
    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 286
    .line 287
    if-eqz p1, :cond_15

    .line 288
    .line 289
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;

    .line 290
    .line 291
    const/4 p2, 0x2

    .line 292
    invoke-direct {p1, p0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 296
    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_13
    const-string/jumbo p0, "request_power_stats"

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    if-eqz p0, :cond_14

    .line 307
    .line 308
    new-instance p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 309
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    .line 312
    .line 313
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda20;

    .line 314
    .line 315
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p4, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->requestPowerStats(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;)V

    .line 319
    .line 320
    .line 321
    goto :goto_1

    .line 322
    :cond_14
    const-string/jumbo p0, "sendExtraCommand: unknown command "

    .line 323
    .line 324
    .line 325
    invoke-static {p0, p2, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    :cond_15
    :goto_1
    return-void
.end method

.method public final onFlush(Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;->run()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    .line 28
    .line 29
    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public final onHalRestarted()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartLocationRequest()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mInitialized:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 30
    .line 31
    iget-object v3, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput-object v2, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final onReportAGpsStatus(II[B)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AGPS_DATA_CONNECTION: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "GnssNetworkConnectivityHandler"

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const-wide/32 v3, 0xea60

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    if-eq p2, v0, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    if-eq p2, p1, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x3

    .line 34
    if-eq p2, p0, :cond_2

    .line 35
    .line 36
    const/4 p0, 0x4

    .line 37
    if-eq p2, p0, :cond_2

    .line 38
    .line 39
    const/4 p0, 0x5

    .line 40
    if-eq p2, p0, :cond_2

    .line 41
    .line 42
    const-string p0, "Received unknown AGPS status: "

    .line 43
    .line 44
    invoke-static {p2, p0, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-direct {p1, p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 55
    .line 56
    invoke-virtual {p2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;

    .line 60
    .line 61
    invoke-direct {p2, p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance p2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I[B)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 82
    .line 83
    invoke-virtual {p1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;

    .line 87
    .line 88
    invoke-direct {p1, p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_2

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    return-void
.end method

.method public final onReportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v11, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 3
    .line 4
    if-nez v11, :cond_0

    .line 5
    .line 6
    const-string v0, "GnssLocationProvider"

    .line 7
    .line 8
    const-string/jumbo v1, "reportNfwNotification: mGnssVisibilityControl uninitialized."

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v12, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    move-object v1, v12

    .line 21
    move-object v2, v11

    .line 22
    move-object v3, p1

    .line 23
    move v4, p2

    .line 24
    move-object/from16 v5, p3

    .line 25
    .line 26
    move/from16 v6, p4

    .line 27
    .line 28
    move-object/from16 v7, p5

    .line 29
    .line 30
    move/from16 v8, p6

    .line 31
    .line 32
    move/from16 v9, p7

    .line 33
    .line 34
    move/from16 v10, p8

    .line 35
    .line 36
    invoke-direct/range {v1 .. v10}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11, v12}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v2, "proxyAppPackageName"

    .line 48
    .line 49
    .line 50
    move-object v3, p1

    .line 51
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v2, "protocolStack"

    .line 55
    .line 56
    .line 57
    move v3, p2

    .line 58
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v2, "otherProtocolStackName"

    .line 62
    .line 63
    .line 64
    move-object/from16 v3, p3

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v2, "requestor"

    .line 70
    .line 71
    .line 72
    move/from16 v3, p4

    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 75
    .line 76
    .line 77
    const-string/jumbo v2, "requestorId"

    .line 78
    .line 79
    .line 80
    move-object/from16 v3, p5

    .line 81
    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string/jumbo v2, "responseType"

    .line 86
    .line 87
    .line 88
    move/from16 v3, p6

    .line 89
    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 91
    .line 92
    .line 93
    const-string/jumbo v2, "inEmergencyMode"

    .line 94
    .line 95
    .line 96
    move/from16 v3, p7

    .line 97
    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    const-string/jumbo v2, "isCachedLocation"

    .line 102
    .line 103
    .line 104
    move/from16 v3, p8

    .line 105
    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 110
    .line 111
    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->REPORT_NFW_NOTIFICATION:Landroid/location/LocationConstants$STATE_TYPE;

    .line 112
    .line 113
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final onReportSvStatus(Landroid/location/GnssStatus;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestRefLocation()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "phone"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "GnssLocationProvider"

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    if-ne v1, v2, :cond_13

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_12

    .line 31
    .line 32
    new-instance v1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v6, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;

    .line 38
    .line 39
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v6}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-interface {v6}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-interface {v0, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const/4 v7, 0x6

    .line 62
    const/4 v8, 0x3

    .line 63
    const/4 v9, 0x4

    .line 64
    if-eqz v6, :cond_d

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Landroid/telephony/CellInfo;

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    if-nez v11, :cond_1

    .line 81
    .line 82
    if-eq v10, v2, :cond_1

    .line 83
    .line 84
    if-ne v10, v5, :cond_0

    .line 85
    .line 86
    :cond_1
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    instance-of v11, v6, Landroid/telephony/CellInfoGsm;

    .line 91
    .line 92
    if-eqz v11, :cond_2

    .line 93
    .line 94
    move v6, v2

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    instance-of v11, v6, Landroid/telephony/CellInfoWcdma;

    .line 97
    .line 98
    if-eqz v11, :cond_3

    .line 99
    .line 100
    move v6, v9

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    instance-of v11, v6, Landroid/telephony/CellInfoLte;

    .line 103
    .line 104
    if-eqz v11, :cond_4

    .line 105
    .line 106
    move v6, v8

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    instance-of v6, v6, Landroid/telephony/CellInfoNr;

    .line 109
    .line 110
    if-eqz v6, :cond_5

    .line 111
    .line 112
    move v6, v7

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    const/4 v6, 0x0

    .line 115
    :goto_1
    const-wide/16 v11, -0x1

    .line 116
    .line 117
    if-nez v10, :cond_6

    .line 118
    .line 119
    :goto_2
    move-wide v8, v11

    .line 120
    goto :goto_6

    .line 121
    :cond_6
    invoke-virtual {v10}, Landroid/telephony/CellIdentity;->getType()I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    if-eq v13, v2, :cond_a

    .line 126
    .line 127
    if-eq v13, v7, :cond_9

    .line 128
    .line 129
    if-eq v13, v8, :cond_8

    .line 130
    .line 131
    if-eq v13, v9, :cond_7

    .line 132
    .line 133
    move-wide v8, v11

    .line 134
    goto :goto_4

    .line 135
    :cond_7
    move-object v8, v10

    .line 136
    check-cast v8, Landroid/telephony/CellIdentityWcdma;

    .line 137
    .line 138
    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    :goto_3
    int-to-long v8, v8

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    move-object v8, v10

    .line 145
    check-cast v8, Landroid/telephony/CellIdentityLte;

    .line 146
    .line 147
    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getCi()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    goto :goto_3

    .line 152
    :cond_9
    move-object v8, v10

    .line 153
    check-cast v8, Landroid/telephony/CellIdentityNr;

    .line 154
    .line 155
    invoke-virtual {v8}, Landroid/telephony/CellIdentityNr;->getNci()J

    .line 156
    .line 157
    .line 158
    move-result-wide v8

    .line 159
    goto :goto_4

    .line 160
    :cond_a
    move-object v8, v10

    .line 161
    check-cast v8, Landroid/telephony/CellIdentityGsm;

    .line 162
    .line 163
    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getCid()I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    goto :goto_3

    .line 168
    :goto_4
    invoke-virtual {v10}, Landroid/telephony/CellIdentity;->getType()I

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-ne v13, v7, :cond_b

    .line 173
    .line 174
    const-wide v13, 0x7fffffffffffffffL

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_b
    const-wide/32 v13, 0x7fffffff

    .line 181
    .line 182
    .line 183
    :goto_5
    cmp-long v7, v8, v13

    .line 184
    .line 185
    if-nez v7, :cond_c

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_c
    :goto_6
    cmp-long v7, v8, v11

    .line 189
    .line 190
    if-eqz v7, :cond_0

    .line 191
    .line 192
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-nez v7, :cond_0

    .line 201
    .line 202
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_d
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_e

    .line 216
    .line 217
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Landroid/telephony/CellIdentity;

    .line 222
    .line 223
    invoke-virtual {p0, v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    .line 224
    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_f

    .line 236
    .line 237
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Landroid/telephony/CellIdentity;

    .line 246
    .line 247
    invoke-virtual {p0, v5, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    .line 248
    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_10

    .line 260
    .line 261
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Landroid/telephony/CellIdentity;

    .line 270
    .line 271
    invoke-virtual {p0, v9, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    .line 272
    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_11

    .line 284
    .line 285
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Landroid/telephony/CellIdentity;

    .line 294
    .line 295
    const/16 v1, 0x8

    .line 296
    .line 297
    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    .line 298
    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_11
    const-string p0, "No available serving cell information."

    .line 302
    .line 303
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_12
    const-string p0, "Error getting cell location info."

    .line 308
    .line 309
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_13
    if-ne v1, v5, :cond_14

    .line 314
    .line 315
    const-string p0, "CDMA not supported."

    .line 316
    .line 317
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    :cond_14
    :goto_7
    return-void
.end method

.method public onRequestSetID(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "phone"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 19
    .line 20
    const-string v3, "ENABLE_ACTIVE_SIM_EMERGENCY_SUPL"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    move v2, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :goto_0
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 50
    .line 51
    iget v2, v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 52
    .line 53
    if-ltz v2, :cond_1

    .line 54
    .line 55
    move v1, v2

    .line 56
    :cond_1
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_2
    and-int/lit8 v1, p1, 0x1

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    if-ne v1, v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    move v4, v2

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 v1, 0x2

    .line 80
    and-int/2addr p1, v1

    .line 81
    if-ne p1, v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    move v4, v1

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const/4 p1, 0x0

    .line 92
    :cond_5
    :goto_1
    if-nez p1, :cond_6

    .line 93
    .line 94
    const-string p1, ""

    .line 95
    .line 96
    :cond_6
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 97
    .line 98
    invoke-virtual {p0, v4, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsSetId(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final postWithWakeLockHeld(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    const-wide/16 v1, 0x7530

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public abstract releaseDozeMode()V
.end method

.method public final reloadGpsProperties()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string/jumbo v1, "com.sec.location.nfwlocationprivacy"

    .line 11
    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4, v2, v3}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig(IZ)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/android/server/location/gnss/GnssConfiguration;->setEsExtensionSec()V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSecCSC()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {v4, v2, v3}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties(IZ)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 65
    .line 66
    iget v2, v4, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    .line 69
    .line 70
    .line 71
    const-string v0, "SUPL_ES"

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v2, 0x1

    .line 78
    if-ne v0, v2, :cond_2

    .line 79
    .line 80
    move v3, v2

    .line 81
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 84
    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    invoke-static {v1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Object;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method public final restartLocationRequest()V
    .locals 3

    .line 1
    const-string v0, "GnssLocationProvider"

    .line 2
    .line 3
    const-string/jumbo v1, "restartLocationRequest"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x12c

    .line 20
    .line 21
    if-le v1, v2, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "\n"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ": restartLocationRequest"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public abstract secLocationValidate(Landroid/location/Location;J)V
.end method

.method public final setGpsEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final setPositionMode(IIZ)Z
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/location/gnss/GnssPositionMode;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssPositionMode;-><init>(IIZ)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssPositionMode;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 v6, 0x0

    .line 19
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move v2, p1

    .line 24
    move v4, p2

    .line 25
    move v7, p3

    .line 26
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/hal/GnssNative;->setPositionMode(IIIIIZ)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p2, 0x0

    .line 36
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 37
    .line 38
    :goto_0
    return p1
.end method

.method public final setRefLocation(ILandroid/telephony/CellIdentity;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7fffffff

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    move v5, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v5, v2

    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    move v6, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v6, v2

    .line 30
    :goto_1
    const/4 v0, 0x1

    .line 31
    if-eq p1, v0, :cond_5

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    if-eq p1, v0, :cond_4

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    if-eq p1, v0, :cond_3

    .line 38
    .line 39
    const/16 v0, 0x8

    .line 40
    .line 41
    if-eq p1, v0, :cond_2

    .line 42
    .line 43
    const-wide v0, 0x7fffffffffffffffL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    move-wide v8, v0

    .line 49
    move v7, v2

    .line 50
    move v10, v7

    .line 51
    :goto_2
    move v11, v10

    .line 52
    move v12, v11

    .line 53
    goto :goto_4

    .line 54
    :cond_2
    check-cast p2, Landroid/telephony/CellIdentityNr;

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNci()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getTac()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getPci()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    move v12, p2

    .line 73
    move-wide v8, v0

    .line 74
    move v7, v2

    .line 75
    move v10, v3

    .line 76
    move v11, v4

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    check-cast p2, Landroid/telephony/CellIdentityLte;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getCi()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    int-to-long v0, v0

    .line 85
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getTac()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getPci()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    move v11, p2

    .line 94
    move-wide v8, v0

    .line 95
    move v7, v2

    .line 96
    move v12, v7

    .line 97
    move v10, v3

    .line 98
    goto :goto_4

    .line 99
    :cond_4
    check-cast p2, Landroid/telephony/CellIdentityWcdma;

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    int-to-long v0, v0

    .line 106
    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    :goto_3
    move v7, p2

    .line 111
    move-wide v8, v0

    .line 112
    move v10, v2

    .line 113
    goto :goto_2

    .line 114
    :cond_5
    check-cast p2, Landroid/telephony/CellIdentityGsm;

    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    int-to-long v0, v0

    .line 121
    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    goto :goto_3

    .line 126
    :goto_4
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 127
    .line 128
    move v4, p1

    .line 129
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsReferenceLocationCellId(IIIIJIII)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final setStarted(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public abstract setSuplServerSec()V
.end method

.method public abstract setTelephonyTransmitPower(Z)V
.end method

.method public abstract setXtraDownloadedTime()V
.end method

.method public final startNavigating()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    const-string v0, "GnssLocationProvider"

    .line 6
    .line 7
    const-string/jumbo v1, "startNavigating"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigatingSec()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 25
    .line 26
    .line 27
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "assisted_gps_enabled"

    .line 36
    .line 37
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    move v3, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v3, v1

    .line 46
    :goto_0
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const-string v3, "SUPL_MODE"

    .line 51
    .line 52
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 53
    .line 54
    invoke-virtual {v5, v3}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    :cond_1
    move v3, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v5, v4, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/location/GnssCapabilities;->hasMsb()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    and-int/2addr v3, v2

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    move v3, v2

    .line 74
    :goto_1
    iput v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->getPositionModeSec(I)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    iput v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 83
    .line 84
    :cond_3
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 85
    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateSuplServerForNewSISession()V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 92
    .line 93
    if-eqz v3, :cond_7

    .line 94
    .line 95
    if-eq v3, v2, :cond_6

    .line 96
    .line 97
    const/4 v5, 0x2

    .line 98
    if-eq v3, v5, :cond_5

    .line 99
    .line 100
    const-string/jumbo v3, "unknown"

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    const-string v3, "MS_ASSISTED"

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const-string v3, "MS_BASED"

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    const-string/jumbo v3, "standalone"

    .line 111
    .line 112
    .line 113
    :goto_2
    const-string/jumbo v5, "setting position_mode to "

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object v3, v4, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 124
    .line 125
    invoke-virtual {v3}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_8

    .line 130
    .line 131
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_8
    const/16 v3, 0x3e8

    .line 135
    .line 136
    :goto_3
    iget v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 137
    .line 138
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 139
    .line 140
    invoke-virtual {v6}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-virtual {p0, v5, v3, v6}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIZ)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-nez v5, :cond_9

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 151
    .line 152
    .line 153
    const-string/jumbo p0, "set_position_mode failed in startNavigating()"

    .line 154
    .line 155
    .line 156
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_9
    invoke-virtual {v4}, Lcom/android/server/location/gnss/hal/GnssNative;->start()Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-nez v5, :cond_a

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 167
    .line 168
    .line 169
    const-string/jumbo p0, "native_start failed in startNavigating()"

    .line 170
    .line 171
    .line 172
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 177
    .line 178
    invoke-virtual {v0, v1, v1, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    .line 179
    .line 180
    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 182
    .line 183
    .line 184
    move-result-wide v0

    .line 185
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 186
    .line 187
    iget-object v0, v4, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_b

    .line 194
    .line 195
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 196
    .line 197
    const v1, 0xea60

    .line 198
    .line 199
    .line 200
    if-lt v0, v1, :cond_b

    .line 201
    .line 202
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 203
    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 205
    .line 206
    .line 207
    move-result-wide v0

    .line 208
    const-wide/32 v5, 0xea60

    .line 209
    .line 210
    .line 211
    add-long v6, v0, v5

    .line 212
    .line 213
    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 214
    .line 215
    iget-object v10, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 216
    .line 217
    const/4 v5, 0x2

    .line 218
    const-string v8, "GnssLocationProvider"

    .line 219
    .line 220
    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 221
    .line 222
    .line 223
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-nez v0, :cond_c

    .line 233
    .line 234
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isFoldablePhone:Z

    .line 235
    .line 236
    if-eqz v0, :cond_c

    .line 237
    .line 238
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setTelephonyTransmitPower(Z)V

    .line 239
    .line 240
    .line 241
    :cond_c
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->NAVIGATING:Landroid/location/LocationConstants$STATE_TYPE;

    .line 242
    .line 243
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 244
    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 254
    .line 255
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 256
    .line 257
    .line 258
    :cond_d
    return-void
.end method

.method public abstract startNavigatingSec()V
.end method

.method public final stopBatching()V
    .locals 2

    .line 1
    const-string v0, "GnssLocationProvider"

    .line 2
    .line 3
    const-string/jumbo v1, "stopBatching"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopBatch()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final stopNavigating()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "stopNavigating, mStarted="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 10
    .line 11
    const-string v2, "GnssLocationProvider"

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    new-instance v2, Lcom/android/server/location/gnss/sec/GnssHalStatus;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/android/server/location/gnss/sec/GnssHalStatus;-><init>()V

    .line 39
    .line 40
    .line 41
    const-wide/16 v3, 0xbb8

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->triggerCheckingHalStatus(J)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v2, v1

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/android/server/location/gnss/hal/GnssNative;->stop()Z

    .line 51
    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->updateHalStatusChecked()V

    .line 56
    .line 57
    .line 58
    :cond_1
    const-wide/16 v2, 0x0

    .line 59
    .line 60
    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 61
    .line 62
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigatingSec()V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 68
    .line 69
    invoke-virtual {v2, v0, v0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isFoldablePhone:Z

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setTelephonyTransmitPower(Z)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->NAVIGATING:Landroid/location/LocationConstants$STATE_TYPE;

    .line 100
    .line 101
    const/4 v2, -0x1

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 107
    .line 108
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public abstract stopNavigatingSec()V
.end method

.method public final updateClientUids(Landroid/os/WorkSource;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string v1, "GnssLocationProvider"

    .line 20
    .line 21
    const-string v2, "RemoteException"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x2

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    aget-object v4, v0, v3

    .line 38
    .line 39
    aget-object v0, v0, v2

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 58
    .line 59
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v6, v1, v7, v5}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/os/WorkSource$WorkChain;

    .line 90
    .line 91
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-virtual {v4}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v5, v1, v6, v4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    aget-object v0, p1, v3

    .line 119
    .line 120
    aget-object p1, p1, v2

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    move v2, v3

    .line 125
    :goto_3
    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-ge v2, v4, :cond_4

    .line 130
    .line 131
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getUid(I)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v4, v1, v5, v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 142
    .line 143
    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    if-eqz p1, :cond_5

    .line 148
    .line 149
    :goto_4
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-ge v3, v0, :cond_5

    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 156
    .line 157
    invoke-virtual {p1, v3}, Landroid/os/WorkSource;->getUid(I)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-virtual {p1, v3}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v0, v1, v2, v4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v3, v3, 0x1

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_5
    return-void
.end method

.method public final updateEnabled()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/location/LocationManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/location/LocationManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v2, Landroid/os/UserManager;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/os/UserManager;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/UserManager;->getVisibleUsers()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    move v3, v2

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/os/UserHandle;

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    or-int/2addr v3, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    move v0, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v0, v2

    .line 71
    :goto_1
    or-int/2addr v0, v3

    .line 72
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 73
    .line 74
    monitor-enter v3

    .line 75
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    .line 76
    .line 77
    xor-int/2addr v4, v1

    .line 78
    and-int/2addr v0, v4

    .line 79
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    .line 81
    .line 82
    xor-int/2addr v3, v1

    .line 83
    and-int/2addr v0, v3

    .line 84
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-ne v0, v3, :cond_2

    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    const-wide/16 v3, 0xbb8

    .line 92
    .line 93
    if-eqz v0, :cond_a

    .line 94
    .line 95
    const-string/jumbo v0, "handleEnable"

    .line 96
    .line 97
    .line 98
    const-string v5, "GnssLocationProvider"

    .line 99
    .line 100
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    new-instance v0, Lcom/android/server/location/gnss/sec/GnssHalStatus;

    .line 115
    .line 116
    invoke-direct {v0}, Lcom/android/server/location/gnss/sec/GnssHalStatus;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v3, v4}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->triggerCheckingHalStatus(J)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    const/4 v0, 0x0

    .line 124
    :goto_2
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 125
    .line 126
    invoke-virtual {v6}, Lcom/android/server/location/gnss/hal/GnssNative;->init()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->updateHalStatusChecked()V

    .line 133
    .line 134
    .line 135
    :cond_4
    if-eqz v7, :cond_8

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/android/server/location/gnss/hal/GnssNative;->isPsdsSupported()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 145
    .line 146
    const-string/jumbo v0, "ro.vendor.api_level"

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_5

    .line 158
    .line 159
    const/16 v5, 0x21

    .line 160
    .line 161
    if-le v0, v5, :cond_5

    .line 162
    .line 163
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 164
    .line 165
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setSuplServerSec()V

    .line 166
    .line 167
    .line 168
    const-string/jumbo v0, "ro.location.hwflp"

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string/jumbo v5, "true"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    invoke-virtual {v6}, Lcom/android/server/location/gnss/hal/GnssNative;->initBatching()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    invoke-virtual {v6}, Lcom/android/server/location/gnss/hal/GnssNative;->getBatchSize()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-le v0, v1, :cond_7

    .line 195
    .line 196
    move v2, v1

    .line 197
    goto :goto_3

    .line 198
    :cond_6
    const-string v0, "SLocationProxy"

    .line 199
    .line 200
    const-string v5, "GNSS batching is disabled."

    .line 201
    .line 202
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_7
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 208
    .line 209
    if-eqz v0, :cond_9

    .line 210
    .line 211
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 212
    .line 213
    new-instance v5, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;

    .line 214
    .line 215
    invoke-direct {v5, v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 223
    .line 224
    .line 225
    const-string v0, "Failed to enable location provider"

    .line 226
    .line 227
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    :cond_9
    :goto_4
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_d

    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleEnableSec()V

    .line 237
    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_a
    const-string v0, "GnssLocationProvider"

    .line 241
    .line 242
    const-string/jumbo v1, "handleDisable"

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 249
    .line 250
    .line 251
    new-instance v0, Landroid/os/WorkSource;

    .line 252
    .line 253
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 266
    .line 267
    if-eqz v0, :cond_c

    .line 268
    .line 269
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 270
    .line 271
    new-instance v5, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;

    .line 272
    .line 273
    invoke-direct {v5, v0, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_b

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_b
    const-string v0, "GnssVisibilityControl"

    .line 284
    .line 285
    const-string v1, "Native call to disable non-framework location access in GNSS HAL may get executed after native_cleanup()."

    .line 286
    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanupBatching()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanup()V

    .line 296
    .line 297
    .line 298
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 299
    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    if-eqz p0, :cond_d

    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->initLocationOff()Z

    .line 310
    .line 311
    .line 312
    :cond_d
    :goto_6
    return-void

    .line 313
    :catchall_0
    move-exception p0

    .line 314
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    throw p0
.end method

.method public final updateRequirements()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "setRequest "

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "GnssLocationProvider"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/16 v2, 0x12c

    .line 42
    .line 43
    if-le v0, v2, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "\n"

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, ": "

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, " "

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 83
    .line 84
    invoke-virtual {v4}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string/jumbo v2, "mStarted =  "

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, ", isEnabled = "

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    const-wide/32 v6, 0x7fffffff

    .line 160
    .line 161
    .line 162
    cmp-long v0, v4, v6

    .line 163
    .line 164
    if-gtz v0, :cond_2

    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    .line 169
    .line 170
    .line 171
    move-result-wide v4

    .line 172
    long-to-int v0, v4

    .line 173
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string/jumbo v2, "interval overflow: "

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 185
    .line 186
    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v4

    .line 190
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    const v0, 0x7fffffff

    .line 201
    .line 202
    .line 203
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 204
    .line 205
    :goto_0
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 206
    .line 207
    const/16 v2, 0x3e8

    .line 208
    .line 209
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 214
    .line 215
    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getMaxUpdateDelayMillis()J

    .line 216
    .line 217
    .line 218
    move-result-wide v4

    .line 219
    const-wide/32 v6, 0x5265c00

    .line 220
    .line 221
    .line 222
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 223
    .line 224
    .line 225
    move-result-wide v4

    .line 226
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    .line 227
    .line 228
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 229
    .line 230
    if-eqz v2, :cond_4

    .line 231
    .line 232
    const-wide/16 v7, 0x2

    .line 233
    .line 234
    div-long v7, v4, v7

    .line 235
    .line 236
    int-to-long v9, v0

    .line 237
    cmp-long v2, v7, v9

    .line 238
    .line 239
    if-ltz v2, :cond_4

    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 242
    .line 243
    .line 244
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 245
    .line 246
    div-long v7, v4, v9

    .line 247
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string/jumbo v2, "startBatching "

    .line 251
    .line 252
    .line 253
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 275
    .line 276
    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 277
    .line 278
    int-to-long v2, v2

    .line 279
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 280
    .line 281
    .line 282
    move-result-wide v2

    .line 283
    const/4 v0, 0x0

    .line 284
    const/4 v9, 0x1

    .line 285
    invoke-virtual {v6, v2, v3, v0, v9}, Lcom/android/server/location/gnss/hal/GnssNative;->startBatch(JFZ)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_3

    .line 290
    .line 291
    iput-boolean v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    int-to-long v0, v0

    .line 298
    cmp-long v0, v7, v0

    .line 299
    .line 300
    if-gez v0, :cond_9

    .line 301
    .line 302
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;

    .line 303
    .line 304
    invoke-direct {v0, p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;J)V

    .line 305
    .line 306
    .line 307
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;

    .line 308
    .line 309
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 310
    .line 311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 312
    .line 313
    .line 314
    move-result-wide v0

    .line 315
    add-long v8, v0, v4

    .line 316
    .line 317
    iget-object v11, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;

    .line 318
    .line 319
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    const/4 v7, 0x2

    .line 324
    const-string v10, "GnssLocationProvider"

    .line 325
    .line 326
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_1

    .line 330
    .line 331
    :cond_3
    const-string/jumbo p0, "native_start_batch failed in startBatching()"

    .line 332
    .line 333
    .line 334
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    .line 340
    .line 341
    .line 342
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 343
    .line 344
    if-eqz v0, :cond_5

    .line 345
    .line 346
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->UPDATE_GNSS_INTERVAL:Landroid/location/LocationConstants$STATE_TYPE;

    .line 347
    .line 348
    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 349
    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 355
    .line 356
    const/4 v4, 0x0

    .line 357
    invoke-virtual {v3, v0, v4, v2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 358
    .line 359
    .line 360
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 361
    .line 362
    if-eqz v0, :cond_6

    .line 363
    .line 364
    iget-object v0, v6, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 365
    .line 366
    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_6

    .line 371
    .line 372
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 373
    .line 374
    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 375
    .line 376
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 377
    .line 378
    invoke-virtual {v3}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIZ)Z

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    if-nez p0, :cond_9

    .line 387
    .line 388
    const-string/jumbo p0, "set_position_mode failed in updateRequirements"

    .line 389
    .line 390
    .line 391
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    goto :goto_1

    .line 395
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 396
    .line 397
    if-nez v0, :cond_7

    .line 398
    .line 399
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    .line 400
    .line 401
    .line 402
    goto :goto_1

    .line 403
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 404
    .line 405
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 408
    .line 409
    .line 410
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 411
    .line 412
    const v1, 0xea60

    .line 413
    .line 414
    .line 415
    if-lt v0, v1, :cond_9

    .line 416
    .line 417
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 418
    .line 419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 420
    .line 421
    .line 422
    move-result-wide v0

    .line 423
    const-wide/32 v3, 0xea60

    .line 424
    .line 425
    .line 426
    add-long v4, v0, v3

    .line 427
    .line 428
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 429
    .line 430
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 431
    .line 432
    const/4 v3, 0x2

    .line 433
    const-string v6, "GnssLocationProvider"

    .line 434
    .line 435
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 436
    .line 437
    .line 438
    goto :goto_1

    .line 439
    :cond_8
    new-instance v0, Landroid/os/WorkSource;

    .line 440
    .line 441
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    .line 451
    .line 452
    .line 453
    :cond_9
    :goto_1
    return-void
.end method

.method public abstract updateSuplServerForNewSISession()V
.end method
