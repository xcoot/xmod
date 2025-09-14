.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final BLOCKING_OP_WAIT_DURATION_MILLIS:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

.field public mLocationTimeZoneProviderControllerEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

.field public final mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

.field public final mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field public final mSharedLock:Ljava/lang/Object;

.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x14

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sput-wide v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 5
    .line 6
    const-string/jumbo v1, "primary"

    .line 7
    .line 8
    .line 9
    const-string v2, "android.service.timezone.PrimaryLocationTimeZoneProviderService"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 18
    .line 19
    const-string/jumbo v1, "secondary"

    .line 20
    .line 21
    .line 22
    const-string v2, "android.service.timezone.SecondaryLocationTimeZoneProviderService"

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 29
    .line 30
    const-string v0, "LocationTimeZoneService"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    new-instance v0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;-><init>(Landroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 50
    .line 51
    iget-object p1, v0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mLockObject:Ljava/lang/Object;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    check-cast p2, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 61
    .line 62
    return-void
.end method

.method public static debugLog(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "LocationTZDetector"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    const-string v1, "LocationTZDetector"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "LocationTZDetector"

    .line 4
    .line 5
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 13
    .line 14
    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p2

    .line 20
    :try_start_0
    const-string v0, "LocationTimeZoneManagerService:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 26
    .line 27
    .line 28
    const-string v0, "Primary provider config:"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 42
    .line 43
    .line 44
    const-string v0, "Secondary provider config:"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 61
    .line 62
    if-nez p0, :cond_1

    .line 63
    .line 64
    const-string/jumbo p0, "{Stopped}"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 77
    .line 78
    .line 79
    monitor-exit p2

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final startOnDomainThread()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 10
    .line 11
    check-cast v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "Not starting location_time_zone_manager: it is disabled in service config"

    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    new-instance v4, Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 50
    .line 51
    check-cast v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 52
    .line 53
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    iget-boolean v7, v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    :try_start_2
    monitor-exit v1

    .line 57
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 60
    .line 61
    move-object v2, v1

    .line 62
    invoke-direct/range {v2 .. v7}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;-><init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Z)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 70
    .line 71
    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;-><init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    .line 72
    .line 73
    .line 74
    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;

    .line 75
    .line 76
    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 77
    .line 78
    invoke-direct {v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;-><init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;)V

    .line 82
    .line 83
    .line 84
    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderControllerEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    monitor-exit v1

    .line 91
    throw p0

    .line 92
    :cond_1
    :goto_0
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    throw p0
.end method

.method public final stopOnDomainThread()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->destroy()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderControllerEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 20
    .line 21
    iget-object v3, v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mConfigurationInternalChangeListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    check-cast v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 26
    .line 27
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    iget-object v4, v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    check-cast v4, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 36
    .line 37
    .line 38
    :try_start_2
    monitor-exit v3

    .line 39
    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderControllerEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 42
    .line 43
    check-cast p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 44
    .line 45
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    :try_start_3
    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_4
    monitor-exit p0

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    monitor-exit p0

    .line 75
    throw v1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :catchall_2
    move-exception p0

    .line 79
    monitor-exit v3

    .line 80
    throw p0

    .line 81
    :cond_0
    :goto_0
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    throw p0
.end method
