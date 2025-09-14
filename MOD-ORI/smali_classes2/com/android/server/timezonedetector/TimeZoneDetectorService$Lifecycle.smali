.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Lcom/android/server/timezonedetector/EnvironmentImpl;

    .line 14
    .line 15
    invoke-direct {v3, v1}, Lcom/android/server/timezonedetector/EnvironmentImpl;-><init>(Landroid/os/Handler;)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 19
    .line 20
    invoke-direct {v4, v2, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    .line 24
    .line 25
    invoke-direct {v2, v0, v1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;

    .line 29
    .line 30
    invoke-direct {v3, v4}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V

    .line 31
    .line 32
    .line 33
    monitor-enter v2

    .line 34
    :try_start_0
    iget-object v5, v2, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    .line 35
    .line 36
    check-cast v5, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    .line 40
    .line 41
    monitor-exit v2

    .line 42
    new-instance v3, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    .line 43
    .line 44
    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V

    .line 45
    .line 46
    .line 47
    const-class v5, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    .line 48
    .line 49
    invoke-virtual {p0, v5, v3}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 53
    .line 54
    new-instance v5, Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 55
    .line 56
    invoke-direct {v5, v0, v1, v3, v4}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v5, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    .line 60
    .line 61
    monitor-enter v0

    .line 62
    :try_start_1
    iget-object v1, v5, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    .line 63
    .line 64
    check-cast v1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const-string/jumbo v0, "time_zone_detector"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0, v5}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    monitor-exit v2

    .line 82
    throw p0
.end method
