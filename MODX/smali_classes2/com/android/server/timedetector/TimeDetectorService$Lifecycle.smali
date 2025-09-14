.class public final Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
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
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v3, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    new-instance v3, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sput-object v3, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    new-instance v0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Lcom/android/server/timedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 35
    .line 36
    invoke-direct {v4, v0, v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;Lcom/android/server/timedetector/ServiceConfigAccessor;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    .line 40
    .line 41
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/timedetector/TimeDetectorInternalImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V

    .line 42
    .line 43
    .line 44
    const-class v3, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 45
    .line 46
    invoke-virtual {p0, v3, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v3, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 50
    .line 51
    new-instance v6, Lcom/android/server/timedetector/TimeDetectorService;

    .line 52
    .line 53
    invoke-static {v1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    move-object v0, v6

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timedetector/TimeDetectorStrategy;Landroid/util/NtpTrustedTime;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v0, "time_detector"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0, v6}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method
