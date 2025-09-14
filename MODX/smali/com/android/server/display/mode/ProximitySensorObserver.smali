.class public final Lcom/android/server/display/mode/ProximitySensorObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mIsProxActive:Z

.field public final mSensorObserverLock:Ljava/lang/Object;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    .line 21
    iput-object p1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 23
    iput-object p2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 25
    return-void
.end method


# virtual methods
.method public final observe()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 3
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 10
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 16
    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 18
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 20
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const-class v0, Lcom/android/server/sensors/SensorService$LocalService;

    .line 27
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/server/sensors/SensorService$LocalService;

    .line 33
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const-string/jumbo v2, "executor must not be null"

    .line 43
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    new-instance v2, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    .line 48
    invoke-direct {v2, v1, p0}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    .line 51
    iget-object v1, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 53
    iget-object v1, v1, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 55
    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v3, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 58
    iget-object v3, v3, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    .line 60
    invoke-virtual {v3, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_2

    .line 66
    iget-object v3, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 68
    iget-object v3, v3, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    .line 70
    invoke-virtual {v3, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 75
    iget-object v2, v2, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    .line 77
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 80
    move-result v2

    .line 81
    const/4 v3, 0x1

    .line 82
    if-ne v2, v3, :cond_0

    .line 84
    iget-object v0, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 86
    iget-wide v2, v0, Lcom/android/server/sensors/SensorService;->mPtr:J

    .line 88
    invoke-static {v2, v3}, Lcom/android/server/sensors/SensorService;->-$$Nest$smregisterProximityActiveListenerNative(J)V

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_3

    .line 94
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    .line 97
    monitor-enter v0

    .line 98
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 100
    check-cast v1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 102
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 105
    move-result-object v1

    .line 106
    const-string v2, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    .line 108
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 111
    move-result-object v1

    .line 112
    array-length v2, v1

    .line 113
    const/4 v3, 0x0

    .line 114
    :goto_1
    if-ge v3, v2, :cond_1

    .line 116
    aget-object v4, v1, v3

    .line 118
    iget-object v5, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 120
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    .line 123
    move-result v6

    .line 124
    iget-object v7, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 126
    check-cast v7, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 128
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    .line 134
    move-result v4

    .line 135
    invoke-static {v4}, Landroid/view/Display;->isDozeState(I)Z

    .line 138
    move-result v4

    .line 139
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    .line 144
    goto :goto_1

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    goto :goto_2

    .line 147
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 150
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 153
    move-result-object v1

    .line 154
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 156
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 159
    move-result-object v0

    .line 160
    const-wide/16 v2, 0x7

    .line 162
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 165
    return-void

    .line 166
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    throw p0

    .line 168
    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 170
    const-string/jumbo v0, "listener already registered"

    .line 173
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p0

    .line 177
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    throw p0
.end method

.method public final onDisplayAdded(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 3
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    if-nez v1, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    .line 27
    move-result v0

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 33
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final onDisplayChanged(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 12
    iget-object v3, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 14
    move-object v4, v3

    .line 15
    check-cast v4, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 17
    invoke-virtual {v4}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 24
    move-result-object v4

    .line 25
    check-cast v3, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    if-nez v4, :cond_0

    .line 32
    const/4 v3, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Landroid/view/Display;->isDozeState(I)Z

    .line 41
    move-result v3

    .line 42
    :goto_0
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 45
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 47
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 50
    move-result p1

    .line 51
    if-eq v1, p1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :goto_1
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 9
    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final onProximityActive(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    .line 6
    if-eq v1, p1, :cond_0

    .line 8
    iput-boolean p1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

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
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final recalculateVotesLocked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 3
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    .line 11
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 14
    move-result-object v0

    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_1

    .line 19
    aget-object v3, v0, v2

    .line 21
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 24
    move-result v3

    .line 25
    iget-boolean v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v4, :cond_0

    .line 30
    iget-object v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 32
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 38
    iget-object v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 40
    const-string v6, "android.sensor.proximity"

    .line 42
    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_0

    .line 48
    iget v5, v4, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 50
    iget v4, v4, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 52
    invoke-static {v5, v4}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 55
    move-result-object v5

    .line 56
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 58
    const/16 v6, 0x17

    .line 60
    invoke-virtual {v4, v3, v6, v5}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method
