.class public final Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;Z)V
    .locals 6

    .line 1
    new-instance v4, Lcom/android/server/timezonedetector/location/ZoneInfoDbTimeZoneProviderEventPreProcessor;

    .line 2
    .line 3
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;-><init>(Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;Z)V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "mProxy="

    .line 2
    .line 3
    .line 4
    const-string v1, "mCurrentState="

    .line 5
    .line 6
    const-string/jumbo v2, "mProviderName="

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    const-string/jumbo v4, "{BinderLocationTimeZoneProvider}"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "State history:"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 83
    .line 84
    .line 85
    const-string v0, "Proxy details:"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 94
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 99
    .line 100
    .line 101
    monitor-exit v3

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->unregister()V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final onInitialize()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;-><init>(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v2, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

    .line 15
    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->checkServiceResolves()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->register()V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v1, "Unable to register binder proxy"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v1, "listener already set"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw v0
.end method

.method public final onStartUpdates(Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;-><init>(ZLjava/time/Duration;Ljava/time/Duration;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {v1, v0, p2}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    .line 32
    .line 33
    .line 34
    monitor-exit p1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final onStopUpdates()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->STOP_UPDATES:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v3, v0, v2}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v1

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "BinderLocationTimeZoneProvider{mProviderName="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ", mCurrentState="

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ", mProxy="

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p0, 0x7d

    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    monitor-exit v1

    .line 46
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method
