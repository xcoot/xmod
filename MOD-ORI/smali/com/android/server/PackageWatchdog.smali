.class public final Lcom/android/server/PackageWatchdog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final DEFAULT_BOOT_LOOP_TRIGGER_COUNT:I

.field public static final DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

.field static final DEFAULT_DEESCALATION_WINDOW_MS:J

.field static final DEFAULT_MITIGATION_WINDOW_MS:J

.field static final DEFAULT_OBSERVING_DURATION_MS:J

.field static final DEFAULT_TRIGGER_FAILURE_COUNT:I = 0x5

.field static final DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

.field public static final NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

.field public static sPackageWatchdog:Lcom/android/server/PackageWatchdog;


# instance fields
.field public final mAllObservers:Landroid/util/ArrayMap;

.field public final mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

.field public final mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

.field public final mContext:Landroid/content/Context;

.field public final mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

.field public mIsPackagesReady:Z

.field public mLastMitigation:J

.field public final mLock:Ljava/lang/Object;

.field public final mLongTaskHandler:Landroid/os/Handler;

.field public mNumberOfNativeCrashPollsRemaining:J

.field public final mOnPropertyChangedListener:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;

.field public final mPolicyFile:Landroid/util/AtomicFile;

.field public mRequestedHealthCheckPackages:Ljava/util/Set;

.field public final mSaveToFile:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

.field public final mShortTaskHandler:Landroid/os/Handler;

.field public final mSyncRequests:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

.field public mSyncRequired:Z

.field public final mSyncStateWithScheduledReason:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

.field public final mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

.field public mTriggerFailureCount:I

.field public mTriggerFailureDurationMs:I

.field public mUptimeAtLastStateSync:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1e

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lcom/android/server/PackageWatchdog;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    .line 10
    .line 11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    const-wide/16 v2, 0x1

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    long-to-int v4, v4

    .line 20
    sput v4, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    .line 21
    .line 22
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    const-wide/16 v5, 0x2

    .line 25
    .line 26
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    sput-wide v4, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 31
    .line 32
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 33
    .line 34
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    sput-wide v2, Lcom/android/server/PackageWatchdog;->DEFAULT_DEESCALATION_WINDOW_MS:J

    .line 39
    .line 40
    const-string/jumbo v2, "persist.sys.rescue_level"

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-lez v2, :cond_0

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v2, 0x5

    .line 53
    :goto_0
    sput v2, Lcom/android/server/PackageWatchdog;->DEFAULT_BOOT_LOOP_TRIGGER_COUNT:I

    .line 54
    .line 55
    const-wide/16 v2, 0xa

    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    sput-wide v1, Lcom/android/server/PackageWatchdog;->DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

    .line 62
    .line 63
    const-wide/16 v1, 0x5

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    sput-wide v0, Lcom/android/server/PackageWatchdog;->DEFAULT_MITIGATION_WINDOW_MS:J

    .line 70
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "package-watchdog.xml"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v3, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/ExplicitHealthCheckController;

    invoke-direct {v5, p1}, Lcom/android/server/ExplicitHealthCheckController;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v6

    new-instance v7, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/ConnectivityModuleConnector;Lcom/android/server/PackageWatchdog$SystemClock;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/ConnectivityModuleConnector;Lcom/android/server/PackageWatchdog$SystemClock;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 9
    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PackageWatchdog;I)V

    iput-object v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 10
    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PackageWatchdog;I)V

    iput-object v1, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 11
    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PackageWatchdog;I)V

    iput-object v1, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 12
    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v1, p0, Lcom/android/server/PackageWatchdog;->mOnPropertyChangedListener:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;

    .line 13
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    .line 14
    sget v1, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    const/4 v1, 0x5

    .line 15
    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    const-wide/32 v1, -0xf4240

    .line 17
    iput-wide v1, p0, Lcom/android/server/PackageWatchdog;->mLastMitigation:J

    .line 18
    iput-object p1, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    .line 20
    iput-object p3, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 21
    iput-object p4, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    .line 22
    iput-object p5, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    .line 23
    iput-object p6, p0, Lcom/android/server/PackageWatchdog;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    .line 24
    iput-object p7, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    const-wide/16 p3, 0xa

    .line 25
    iput-wide p3, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    .line 26
    new-instance p1, Lcom/android/server/PackageWatchdog$BootThreshold;

    sget p3, Lcom/android/server/PackageWatchdog;->DEFAULT_BOOT_LOOP_TRIGGER_COUNT:I

    sget-wide p4, Lcom/android/server/PackageWatchdog;->DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

    invoke-direct {p1, p0, p3, p4, p5}, Lcom/android/server/PackageWatchdog$BootThreshold;-><init>(Lcom/android/server/PackageWatchdog;IJ)V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    .line 27
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 p1, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p2

    .line 30
    const-string/jumbo p3, "package-watchdog"

    invoke-static {p2, p3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 31
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p3

    .line 32
    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 33
    invoke-static {p2, p0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->read(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 34
    iget-object p5, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    iget-object p6, p4, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    invoke-virtual {p5, p6, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    .line 35
    :catch_1
    :cond_1
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    .line 36
    :goto_2
    :try_start_1
    const-string p3, "PackageWatchdog"

    const-string p4, "Unable to read monitored packages, deleting file"

    invoke-static {p3, p4, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    iget-object p2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {p2}, Landroid/util/AtomicFile;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 38
    :goto_3
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 39
    throw p0

    .line 40
    :goto_4
    sput-object p0, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/PackageWatchdog;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/PackageWatchdog;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method


# virtual methods
.method public final checkAndMitigateNativeCrashes()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    .line 7
    .line 8
    const-string/jumbo v0, "sys.init.updatable_crashing"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "1"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/android/server/PackageWatchdog;->onPackageFailure(ILjava/util/List;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    .line 31
    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    cmp-long v0, v0, v2

    .line 35
    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PackageWatchdog;I)V

    .line 42
    .line 43
    .line 44
    sget-wide v1, Lcom/android/server/PackageWatchdog;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public final getPackagesPendingHealthChecksLocked()Ljava/util/Set;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 49
    .line 50
    iget-object v3, v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 51
    .line 52
    iget v2, v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    if-ne v2, v4, :cond_1

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return-object v0
.end method

.method public getTriggerFailureCount()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 5
    .line 6
    int-to-long v1, p0

    .line 7
    monitor-exit v0

    .line 8
    return-wide v1

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public getTriggerFailureDurationMs()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 5
    .line 6
    int-to-long v1, p0

    .line 7
    monitor-exit v0

    .line 8
    return-wide v1

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    const/high16 v0, 0x400000

    .line 24
    .line 25
    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 31
    .line 32
    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    new-instance p0, Landroid/content/pm/VersionedPackage;

    .line 41
    .line 42
    invoke-direct {p0, p1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :catch_1
    :cond_1
    :goto_1
    return-object v1
.end method

.method public final maybeExecute(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Landroid/content/pm/VersionedPackage;III)V
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.device_config.configuration.major_user_impact_level_threshold"

    .line 2
    .line 3
    .line 4
    const/16 v1, 0x47

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ge p4, v0, :cond_0

    .line 11
    .line 12
    iget-object p4, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p4

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/android/server/PackageWatchdog;->mLastMitigation:J

    .line 22
    .line 23
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-interface {p1, p2, p3, p5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;II)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_0
    :goto_0
    return-void
.end method

.method public final noteBoot()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->incrementAndTest()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_7

    .line 11
    .line 12
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    .line 20
    .line 21
    iget-object v3, v1, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 24
    .line 25
    invoke-interface {v3}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    iget-object v1, v1, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    const-wide/16 v7, 0x0

    .line 38
    .line 39
    cmp-long v1, v3, v7

    .line 40
    .line 41
    if-gez v1, :cond_0

    .line 42
    .line 43
    move-wide v3, v7

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    cmp-long v1, v3, v5

    .line 46
    .line 47
    if-lez v1, :cond_1

    .line 48
    .line 49
    move-wide v3, v5

    .line 50
    :cond_1
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/sysprop/CrashRecoveryProperties;->rescueBootStart(Ljava/lang/Long;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/sysprop/CrashRecoveryProperties;->rescueBootCount(Ljava/lang/Integer;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->bootMitigationCount()Ljava/util/Optional;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    const v4, 0x7fffffff

    .line 95
    .line 96
    .line 97
    move v5, v4

    .line 98
    move-object v4, v3

    .line 99
    :goto_2
    iget-object v6, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-ge v2, v6, :cond_5

    .line 106
    .line 107
    iget-object v6, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 108
    .line 109
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 114
    .line 115
    iget-object v7, v6, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 116
    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-eqz v8, :cond_3

    .line 124
    .line 125
    iget v8, v6, Lcom/android/server/PackageWatchdog$ObserverInternal;->mMitigationCount:I

    .line 126
    .line 127
    add-int/lit8 v8, v8, 0x1

    .line 128
    .line 129
    invoke-interface {v7, v8}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onBootLoop(I)I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    goto :goto_3

    .line 134
    :cond_3
    invoke-interface {v7, v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onBootLoop(I)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    :goto_3
    if-eqz v8, :cond_4

    .line 139
    .line 140
    if-ge v8, v5, :cond_4

    .line 141
    .line 142
    move-object v4, v6

    .line 143
    move-object v3, v7

    .line 144
    move v5, v8

    .line 145
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    if-eqz v3, :cond_7

    .line 149
    .line 150
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    iget v1, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->mMitigationCount:I

    .line 157
    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    iput v1, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->mMitigationCount:I

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->saveAllObserversBootMitigationCountToMetadata()V

    .line 163
    .line 164
    .line 165
    invoke-interface {v3, v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->executeBootLoopMitigation(I)Z

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_6
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-static {v2}, Landroid/sysprop/CrashRecoveryProperties;->bootMitigationCount(Ljava/lang/Integer;)V

    .line 179
    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/android/server/PackageWatchdog$BootThreshold;->saveMitigationCountToMetadata()V

    .line 187
    .line 188
    .line 189
    invoke-interface {v3, v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->executeBootLoopMitigation(I)Z

    .line 190
    .line 191
    .line 192
    :cond_7
    :goto_4
    monitor-exit v0

    .line 193
    return-void

    .line 194
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    throw p0
.end method

.method public final onPackageFailure(ILjava/util/List;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p0, "PackageWatchdog"

    .line 4
    .line 5
    const-string p1, "Could not resolve a list of failing packages"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-wide v3, p0, Lcom/android/server/PackageWatchdog;->mLastMitigation:J

    .line 27
    .line 28
    cmp-long v5, v1, v3

    .line 29
    .line 30
    if-ltz v5, :cond_1

    .line 31
    .line 32
    sub-long/2addr v1, v3

    .line 33
    const-string/jumbo v3, "persist.device_config.configuration.mitigation_window_ms"

    .line 34
    .line 35
    .line 36
    sget-wide v4, Lcom/android/server/PackageWatchdog;->DEFAULT_MITIGATION_WINDOW_MS:J

    .line 37
    .line 38
    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    cmp-long v1, v1, v3

    .line 43
    .line 44
    if-gez v1, :cond_1

    .line 45
    .line 46
    const-string p0, "PackageWatchdog"

    .line 47
    .line 48
    const-string p1, "Skipping onPackageFailure mitigation"

    .line 49
    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;

    .line 61
    .line 62
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/PackageWatchdog;ILjava/util/List;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0
.end method

.method public final onPackagesReady()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    .line 8
    .line 9
    new-instance v2, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, p0, v3}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/PackageWatchdog;I)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v3, p0, v4}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/PackageWatchdog;I)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v4, p0, v5}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PackageWatchdog;I)V

    .line 25
    .line 26
    .line 27
    iget-object v5, v1, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget-object v6, v1, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    .line 31
    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    iget-object v6, v1, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    .line 35
    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    iget-object v6, v1, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    const-string v6, "ExplicitHealthCheckController"

    .line 46
    .line 47
    const-string v7, "Resetting health check controller callbacks"

    .line 48
    .line 49
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    iput-object v2, v1, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    .line 53
    .line 54
    iput-object v3, v1, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    .line 55
    .line 56
    iput-object v4, v1, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    .line 57
    .line 58
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mOnPropertyChangedListener:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;

    .line 66
    .line 67
    const-string/jumbo v3, "rollback"

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda13;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/PackageWatchdog;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityModuleConnector;->registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V

    .line 84
    .line 85
    .line 86
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    return-void

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    goto :goto_2

    .line 90
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    throw p0

    .line 92
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    throw p0
.end method

.method public final parseMonitoredPackage(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "name"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const-string/jumbo v1, "duration"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    const-string/jumbo v1, "health-check-duration"

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    const-string/jumbo v1, "passed-health-check"

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    const-string/jumbo v1, "mitigation-calls"

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v10, Landroid/util/LongArrayQueue;

    .line 38
    .line 39
    invoke-direct {v10}, Landroid/util/LongArrayQueue;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    const-string v0, ","

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    array-length v0, p1

    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    .line 58
    aget-object v2, p1, v1

    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    invoke-virtual {v10, v2, v3}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 71
    .line 72
    move-object v2, p1

    .line 73
    move-object v3, p0

    .line 74
    invoke-direct/range {v2 .. v10}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)V

    .line 75
    .line 76
    .line 77
    return-object p1
.end method

.method public final pruneObserversLocked()V
    .locals 15

    .line 1
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-wide v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v4, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    .line 18
    .line 19
    sub-long/2addr v0, v4

    .line 20
    :goto_0
    cmp-long v4, v0, v2

    .line 21
    .line 22
    const-string v5, "PackageWatchdog"

    .line 23
    .line 24
    if-gtz v4, :cond_1

    .line 25
    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Not pruning observers, elapsed time: "

    .line 29
    .line 30
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string/jumbo v0, "ms"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v6, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_a

    .line 65
    .line 66
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v8, Landroid/util/ArraySet;

    .line 76
    .line 77
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v9, v7, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    if-eqz v10, :cond_7

    .line 95
    .line 96
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    check-cast v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 101
    .line 102
    iget v11, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 103
    .line 104
    iget-object v12, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 105
    .line 106
    if-gtz v4, :cond_4

    .line 107
    .line 108
    const-string v13, "Cannot handle non-positive elapsed time for package "

    .line 109
    .line 110
    invoke-static {v13, v12, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget v13, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    iget-wide v13, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 117
    .line 118
    sub-long/2addr v13, v0

    .line 119
    iput-wide v13, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 120
    .line 121
    if-nez v11, :cond_5

    .line 122
    .line 123
    iget-wide v13, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 124
    .line 125
    sub-long/2addr v13, v0

    .line 126
    iput-wide v13, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 127
    .line 128
    :cond_5
    invoke-virtual {v10}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    :goto_3
    const/4 v14, 0x3

    .line 133
    if-eq v11, v14, :cond_6

    .line 134
    .line 135
    if-ne v13, v14, :cond_6

    .line 136
    .line 137
    const-string v11, "Package "

    .line 138
    .line 139
    const-string v13, " failed health check"

    .line 140
    .line 141
    invoke-static {v11, v12, v13, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_6
    iget-wide v10, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 148
    .line 149
    cmp-long v10, v10, v2

    .line 150
    .line 151
    if-gtz v10, :cond_3

    .line 152
    .line 153
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_7
    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-nez v9, :cond_8

    .line 162
    .line 163
    new-instance v9, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;

    .line 164
    .line 165
    invoke-direct {v9, p0, v7, v8}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    .line 166
    .line 167
    .line 168
    iget-object v8, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    .line 169
    .line 170
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    :cond_8
    iget-object v8, v7, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 174
    .line 175
    invoke-virtual {v8}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-eqz v8, :cond_2

    .line 180
    .line 181
    iget-object v8, v7, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 182
    .line 183
    if-eqz v8, :cond_9

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v9, "Discarding observer "

    .line 189
    .line 190
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v7, v7, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v7, ". All packages expired"

    .line 199
    .line 200
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    .line 215
    :cond_a
    return-void
.end method

.method public final registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iput-object p1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string p1, "added new observer"

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public registerObserverInternal(Lcom/android/server/PackageWatchdog$ObserverInternal;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public removePropertyChangedListener()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mOnPropertyChangedListener:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final saveAllObserversBootMitigationCountToMetadata()V
    .locals 5

    .line 1
    const-string v0, "/metadata/watchdog/mitigation_count.txt"

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 24
    .line 25
    iget-object v4, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    .line 26
    .line 27
    iget v3, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->mMitigationCount:I

    .line 28
    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    .line 40
    .line 41
    new-instance v2, Ljava/io/File;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/io/ObjectOutputStream;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string v0, "Could not save observers metadata to file: "

    .line 69
    .line 70
    const-string v1, "PackageWatchdog"

    .line 71
    .line 72
    invoke-static {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method

.method public final saveToFile()Z
    .locals 8

    .line 1
    const-string v0, "PackageWatchdog"

    .line 2
    .line 3
    const-string v1, "Saving observer state to file"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 15
    .line 16
    .line 17
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v4, "package-watchdog"

    .line 29
    .line 30
    .line 31
    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v4, "version"

    .line 35
    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    invoke-interface {v3, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    .line 40
    .line 41
    move v4, v1

    .line 42
    :goto_0
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-ge v4, v7, :cond_0

    .line 49
    .line 50
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 57
    .line 58
    invoke-virtual {v7, v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->writeLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :catch_0
    move-exception v3

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    const-string/jumbo v4, "package-watchdog"

    .line 69
    .line 70
    .line 71
    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    .line 73
    .line 74
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 83
    .line 84
    .line 85
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    return v6

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    goto :goto_3

    .line 89
    :goto_1
    :try_start_3
    const-string v4, "PackageWatchdog"

    .line 90
    .line 91
    const-string v5, "Failed to save monitored packages, restoring backup"

    .line 92
    .line 93
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    .line 100
    .line 101
    :try_start_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 102
    .line 103
    .line 104
    monitor-exit v0

    .line 105
    return v1

    .line 106
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :catch_1
    move-exception p0

    .line 111
    const-string v2, "PackageWatchdog"

    .line 112
    .line 113
    const-string v3, "Cannot update monitored packages"

    .line 114
    .line 115
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    monitor-exit v0

    .line 119
    return v1

    .line 120
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    throw p0
.end method

.method public final scheduleNextSyncStateLocked()V
    .locals 15

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    move-wide v4, v0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    iget-object v6, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    const-wide/16 v7, 0x0

    .line 16
    .line 17
    if-ge v3, v6, :cond_5

    .line 18
    .line 19
    iget-object v6, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 26
    .line 27
    iget-object v6, v6, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 28
    .line 29
    move v9, v2

    .line 30
    :goto_1
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    if-ge v9, v10, :cond_4

    .line 35
    .line 36
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    check-cast v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 41
    .line 42
    iget-wide v11, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 43
    .line 44
    cmp-long v13, v11, v7

    .line 45
    .line 46
    if-lez v13, :cond_0

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    move-wide v11, v0

    .line 50
    :goto_2
    iget v13, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 51
    .line 52
    if-eqz v13, :cond_2

    .line 53
    .line 54
    const/4 v14, 0x1

    .line 55
    if-ne v13, v14, :cond_1

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_1
    move-wide v13, v0

    .line 59
    goto :goto_4

    .line 60
    :cond_2
    :goto_3
    iget-wide v13, v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 61
    .line 62
    cmp-long v10, v13, v7

    .line 63
    .line 64
    if-lez v10, :cond_1

    .line 65
    .line 66
    :goto_4
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide v10

    .line 70
    cmp-long v12, v10, v4

    .line 71
    .line 72
    if-gez v12, :cond_3

    .line 73
    .line 74
    move-wide v4, v10

    .line 75
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    cmp-long v0, v4, v0

    .line 89
    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    const-string v0, "PackageWatchdog"

    .line 93
    .line 94
    const-string v1, "Cancelling state sync, nothing to sync"

    .line 95
    .line 96
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iput-wide v7, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 103
    .line 104
    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    iput-wide v0, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    .line 109
    .line 110
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    .line 112
    .line 113
    :goto_5
    return-void
.end method

.method public final setExplicitHealthCheckEnabled(Z)V
    .locals 7

    .line 1
    const-string/jumbo v0, "health check state "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    .line 8
    .line 9
    const-string v3, "Explicit health checks "

    .line 10
    .line 11
    iget-object v4, v2, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    const-string v5, "ExplicitHealthCheckController"

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string/jumbo v6, "enabled."

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    const-string/jumbo v6, "disabled."

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iput-boolean p1, v2, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 35
    .line 36
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    const/4 v2, 0x1

    .line 38
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const-string/jumbo p1, "enabled"

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    const-string/jumbo p1, "disabled"

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    return-void

    .line 60
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :try_start_4
    throw p0

    .line 62
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    throw p0
.end method

.method public final startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move-wide/from16 v0, p3

    .line 6
    .line 7
    move-object v11, v10

    .line 8
    check-cast v11, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "PackageWatchdog"

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface/range {p1 .. p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "No packages to observe, "

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-wide/16 v4, 0x1

    .line 33
    .line 34
    cmp-long v2, v0, v4

    .line 35
    .line 36
    if-gez v2, :cond_1

    .line 37
    .line 38
    const-string v2, "Invalid duration "

    .line 39
    .line 40
    const-string/jumbo v4, "ms for observer "

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v0, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface/range {p1 .. p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ". Not observing packages "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    sget-wide v0, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 70
    .line 71
    :cond_1
    move-wide v12, v0

    .line 72
    new-instance v14, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    move v15, v0

    .line 79
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-ge v15, v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v2, v0

    .line 90
    check-cast v2, Ljava/lang/String;

    .line 91
    .line 92
    new-instance v8, Landroid/util/LongArrayQueue;

    .line 93
    .line 94
    invoke-direct {v8}, Landroid/util/LongArrayQueue;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v7, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 98
    .line 99
    const-wide v5, 0x7fffffffffffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    move-object v0, v7

    .line 107
    move-object/from16 v1, p0

    .line 108
    .line 109
    move-wide v3, v12

    .line 110
    move-object/from16 v17, v7

    .line 111
    .line 112
    move/from16 v7, v16

    .line 113
    .line 114
    invoke-direct/range {v0 .. v8}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)V

    .line 115
    .line 116
    .line 117
    move-object/from16 v0, v17

    .line 118
    .line 119
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    add-int/lit8 v15, v15, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    return-void

    .line 132
    :cond_3
    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;

    .line 133
    .line 134
    move-object/from16 v1, p1

    .line 135
    .line 136
    invoke-direct {v0, v9, v1, v10, v14}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v9, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final syncState(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Syncing state, reason: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "PackageWatchdog"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->scheduleNextSyncStateLocked()V

    .line 52
    .line 53
    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public updateConfigs()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "rollback"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "watchdog_trigger_failure_count"

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x5

    .line 11
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 16
    .line 17
    if-gtz v1, :cond_0

    .line 18
    .line 19
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    const-string/jumbo v1, "rollback"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v2, "watchdog_trigger_failure_duration_millis"

    .line 28
    .line 29
    .line 30
    sget v3, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 37
    .line 38
    if-gtz v1, :cond_1

    .line 39
    .line 40
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 41
    .line 42
    :cond_1
    const-string/jumbo v1, "rollback"

    .line 43
    .line 44
    .line 45
    const-string/jumbo v2, "watchdog_explicit_health_check_enabled"

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/server/PackageWatchdog;->setExplicitHealthCheckEnabled(Z)V

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method
