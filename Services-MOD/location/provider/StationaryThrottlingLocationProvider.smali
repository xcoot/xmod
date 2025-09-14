.class public final Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;
.implements Lcom/android/server/DeviceIdleInternal$StationaryListener;
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# instance fields
.field public final mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

.field public mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

.field public mDeviceIdle:Z

.field public final mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

.field public mDeviceStationary:Z

.field public final mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

.field public mDeviceStationaryRealtimeMs:J

.field public mIncomingRequest:Landroid/location/provider/ProviderRequest;

.field public final mInitializationLock:Ljava/lang/Object;

.field public final mInitialized:Z

.field public mLastLocation:Landroid/location/Location;

.field public final mLock:Ljava/lang/Object;

.field public final mName:Ljava/lang/String;

.field public mOutgoingRequest:Landroid/location/provider/ProviderRequest;

.field public mThrottlingIntervalMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/location/LocationManagerService$SystemInjector;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mInitializationLock:Ljava/lang/Object;

    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mInitialized:Z

    .line 21
    iput-object p3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 23
    new-instance p3, Ljava/lang/Object;

    .line 25
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    .line 30
    iput-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    .line 34
    const-wide/high16 v3, -0x8000000000000000L

    .line 36
    iput-wide v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 38
    sget-object p3, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 40
    iput-object p3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 42
    iput-object p3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    .line 44
    const-wide v3, 0x7fffffffffffffffL

    .line 49
    iput-wide v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 51
    iput-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 53
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    .line 55
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 57
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 59
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 61
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 63
    monitor-enter v0

    .line 64
    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mInitialized:Z

    .line 66
    const/4 p2, 0x1

    .line 67
    xor-int/2addr p1, p2

    .line 68
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 71
    new-instance p1, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;

    .line 73
    const/4 p3, 0x0

    .line 74
    invoke-direct {p1, p3, p0}, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 80
    iput-boolean p2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mInitialized:Z

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 3
    const-wide v2, 0x7fffffffffffffffL

    .line 8
    cmp-long v0, v0, v2

    .line 10
    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v1, "stationary throttled="

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string/jumbo v0, "stationary throttled=false"

    .line 36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 41
    if-nez v0, :cond_1

    .line 43
    const-string v0, " (not idle)"

    .line 45
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    .line 50
    if-nez v0, :cond_2

    .line 52
    const-string v0, " (not stationary)"

    .line 54
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 60
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final onDeviceIdleChanged(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 6
    if-ne p1, v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 14
    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->addListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 24
    iget-object v1, p1, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_2

    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v1, v2

    .line 32
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 38
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object p1, p1, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    .line 41
    invoke-interface {p1, p0}, Lcom/android/server/DeviceIdleInternal;->unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    iput-boolean v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    .line 49
    const-wide/high16 v3, -0x8000000000000000L

    .line 51
    iput-wide v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 53
    invoke-virtual {p0, v2}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 56
    :goto_1
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    throw p0

    .line 63
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw p0
.end method

.method public final onDeviceStationaryChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    .line 14
    if-ne v1, p1, :cond_1

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    .line 20
    if-eqz p1, :cond_2

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    move-result-wide v1

    .line 26
    iput-wide v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-wide/high16 v1, -0x8000000000000000L

    .line 31
    iput-wide v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 33
    :goto_0
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final onExtraCommand(ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mInitialized:Z

    .line 3
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 6
    iget-object p0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 8
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->sendExtraCommand(ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 13
    return-void
.end method

.method public final onFlush(Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mInitialized:Z

    .line 3
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 6
    iget-object p0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 8
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->flush(Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;)V

    .line 13
    return-void
.end method

.method public final onReportLocation(Landroid/location/LocationResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mInitializationLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mInitialized:Z

    .line 6
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    .line 13
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_1
    invoke-virtual {p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    throw p0
.end method

.method public final onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->start()V

    .line 8
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 13
    invoke-virtual {v1, p0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->addListener(Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;)V

    .line 16
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 18
    iget-object v2, v1, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 20
    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 28
    iget-object v1, v1, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 30
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onDeviceIdleChanged(Z)V

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mInitializationLock:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mInitialized:Z

    .line 6
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance p1, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p1, v0, p2}, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
.end method

.method public final onStop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    iget-object v2, v1, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    invoke-virtual {v2, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 16
    iget-object v2, v1, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    iput-boolean v3, v1, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mRegistrationRequired:Z

    .line 27
    invoke-virtual {v1}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onRegistrationStateChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    monitor-exit v1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v1

    .line 34
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    :catchall_1
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v1

    .line 38
    invoke-virtual {p0, v3}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onDeviceIdleChanged(Z)V

    .line 41
    sget-object v1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 43
    iput-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 45
    iput-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    .line 47
    const-wide v1, 0x7fffffffffffffffL

    .line 52
    iput-wide v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 54
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 56
    const/4 v2, 0x0

    .line 57
    if-eqz v1, :cond_1

    .line 59
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 62
    move-result-object v1

    .line 63
    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 65
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    iput-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 70
    goto :goto_1

    .line 71
    :catchall_2
    move-exception p0

    .line 72
    goto :goto_3

    .line 73
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 75
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    iget-object p0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 78
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->stop()V

    .line 83
    return-void

    .line 84
    :goto_2
    :try_start_5
    monitor-exit v1

    .line 85
    throw p0

    .line 86
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 87
    throw p0
.end method

.method public final onThrottlingChangedLocked(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    .line 3
    const-wide v1, 0x7fffffffffffffffL

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 16
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 24
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getQuality()I

    .line 27
    move-result v0

    .line 28
    const/16 v3, 0x64

    .line 30
    if-eq v0, v3, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 34
    if-eqz v0, :cond_0

    .line 36
    iget-wide v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 38
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->getElapsedRealtimeAgeMillis(J)J

    .line 41
    move-result-wide v3

    .line 42
    const-wide/16 v5, 0x7530

    .line 44
    cmp-long v0, v3, v5

    .line 46
    if-gtz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 50
    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    .line 53
    move-result-wide v3

    .line 54
    const-wide/16 v5, 0x3e8

    .line 56
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 59
    move-result-wide v3

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-wide v3, v1

    .line 62
    :goto_0
    cmp-long v0, v3, v1

    .line 64
    if-eqz v0, :cond_1

    .line 66
    sget-object v5, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object v5, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 71
    :goto_1
    iget-object v6, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    .line 73
    invoke-virtual {v5, v6}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_2

    .line 79
    iput-object v5, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    .line 81
    iget-object v6, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 83
    iget-object v6, v6, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 85
    invoke-virtual {v6, v5}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 88
    :cond_2
    iget-wide v5, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 90
    cmp-long v7, v3, v5

    .line 92
    if-nez v7, :cond_3

    .line 94
    return-void

    .line 95
    :cond_3
    iput-wide v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 97
    const/4 v3, 0x0

    .line 98
    const-string v4, "LocationManagerService"

    .line 100
    if-eqz v0, :cond_8

    .line 102
    cmp-long v0, v5, v1

    .line 104
    const/4 v1, 0x1

    .line 105
    if-nez v0, :cond_4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    .line 114
    const-string v5, " provider stationary throttled"

    .line 116
    invoke-static {v0, v2, v5, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 121
    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    .line 123
    iget-object v4, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    new-instance v5, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    .line 130
    const/4 v6, 0x2

    .line 131
    invoke-direct {v5, v2, v1, v4, v6}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 134
    invoke-virtual {v0, v5}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 139
    if-eqz v0, :cond_5

    .line 141
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 144
    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 147
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    :cond_5
    new-instance v0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 152
    invoke-direct {v0, p0}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;-><init>(Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;)V

    .line 155
    iput-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 157
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 159
    if-eqz v0, :cond_6

    .line 161
    move v3, v1

    .line 162
    :cond_6
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 165
    if-eqz p1, :cond_7

    .line 167
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 170
    move-result-object p1

    .line 171
    iget-object p0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 173
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    goto :goto_2

    .line 177
    :cond_7
    iget-wide v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 179
    iget-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 181
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    .line 184
    move-result-wide v2

    .line 185
    sub-long/2addr v0, v2

    .line 186
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 189
    move-result-object p1

    .line 190
    iget-object p0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 192
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    goto :goto_2

    .line 196
    :cond_8
    cmp-long p1, v5, v1

    .line 198
    if-eqz p1, :cond_9

    .line 200
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 202
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    new-instance v2, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    .line 211
    const/4 v5, 0x2

    .line 212
    invoke-direct {v2, v0, v3, v1, v5}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 215
    invoke-virtual {p1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    .line 225
    const-string v1, " provider stationary unthrottled"

    .line 227
    invoke-static {p1, v0, v1, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_9
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 233
    move-result-object p1

    .line 234
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 242
    :goto_2
    return-void
.end method
