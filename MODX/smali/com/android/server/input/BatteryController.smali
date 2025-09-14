.class public final Lcom/android/server/input/BatteryController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field static final POLLING_PERIOD_MILLIS:J = 0x2710L

.field static final USI_BATTERY_VALIDITY_DURATION_MILLIS:J = 0x36ee80L


# instance fields
.field public mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

.field public final mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceMonitors:Landroid/util/ArrayMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceListener:Lcom/android/server/input/BatteryController$1;

.field public mIsInteractive:Z

.field public mIsPolling:Z

.field public final mListenerRecords:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public final mUEventManager:Lcom/android/server/input/UEventManager;


# direct methods
.method public static $r8$lambda$CQleDsNEE174VGVNEyfPVkU2Ab0(Lcom/android/server/input/BatteryController;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v1

    .line 16
    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 18
    new-instance v4, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda8;

    .line 20
    invoke-direct {v4, v1, v2}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda8;-><init>(J)V

    .line 23
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 26
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v2, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;

    .line 30
    invoke-direct {v2, p0}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/BatteryController;)V

    .line 33
    const-wide/16 v3, 0x2710

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    monitor-exit v0

    .line 39
    :goto_0
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "BatteryController"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;Lcom/android/server/input/BatteryController$BluetoothBatteryManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    .line 31
    new-instance v0, Lcom/android/server/input/BatteryController$1;

    .line 33
    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$1;-><init>(Lcom/android/server/input/BatteryController;)V

    .line 36
    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mInputDeviceListener:Lcom/android/server/input/BatteryController$1;

    .line 38
    iput-object p1, p0, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/server/input/BatteryController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 42
    new-instance p1, Landroid/os/Handler;

    .line 44
    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    iput-object p1, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p4, p0, Lcom/android/server/input/BatteryController;->mUEventManager:Lcom/android/server/input/UEventManager;

    .line 51
    iput-object p5, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    .line 53
    return-void
.end method

.method public static findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 18
    return-object v1

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public static getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-class v0, Landroid/bluetooth/BluetoothManager;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 19
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static notifyBatteryListener(Lcom/android/server/input/BatteryController$ListenerRecord;Lcom/android/server/input/BatteryController$State;)V
    .locals 3

    .line 1
    const-string v0, "BatteryController"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 5
    invoke-interface {v1, p1}, Landroid/hardware/input/IInputDeviceBatteryListener;->onBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    const-string v2, "Failed to notify listener"

    .line 12
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :goto_0
    sget-boolean v1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "Notified battery listener from pid "

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget p0, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mPid:I

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string p0, " of state of deviceId "

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget p0, p1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 38
    invoke-static {v1, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final monitor()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public final processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    .line 3
    const-class v0, Landroid/hardware/input/InputManager;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/input/InputManager;

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    :goto_0
    return-object p2
.end method

.method public final queryBatteryStateFromNative(IJZ)Lcom/android/server/input/BatteryController$State;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/server/input/BatteryController$State;

    .line 3
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 5
    if-eqz p4, :cond_0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryStatus(I)I

    .line 10
    move-result v0

    .line 11
    :goto_0
    move v5, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    if-eqz p4, :cond_1

    .line 17
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryCapacity(I)I

    .line 20
    move-result p0

    .line 21
    int-to-float p0, p0

    .line 22
    const/high16 v0, 0x42c80000    # 100.0f

    .line 24
    div-float/2addr p0, v0

    .line 25
    :goto_2
    move v6, p0

    .line 26
    goto :goto_3

    .line 27
    :cond_1
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 29
    goto :goto_2

    .line 30
    :goto_3
    move-object v0, v7

    .line 31
    move v1, p1

    .line 32
    move-wide v2, p2

    .line 33
    move v4, p4

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/android/server/input/BatteryController$State;-><init>(IJZIF)V

    .line 37
    return-object v7
.end method

.method public final unregisterRecordLocked(Lcom/android/server/input/BatteryController$ListenerRecord;I)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Landroid/util/ArraySet;

    .line 9
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    iget v1, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mPid:I

    .line 15
    if-eqz v0, :cond_5

    .line 17
    const/4 v0, 0x0

    .line 18
    move v2, v0

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_1

    .line 27
    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/server/input/BatteryController$ListenerRecord;

    .line 35
    iget-object v3, v3, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v4

    .line 41
    check-cast v3, Landroid/util/ArraySet;

    .line 43
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    const-string v4, "Maps are out of sync: Cannot find device state for deviceId "

    .line 69
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    instance-of v3, v2, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    .line 84
    if-nez v3, :cond_3

    .line 86
    iget-object v3, v2, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    .line 88
    const/4 v4, 0x0

    .line 89
    iget-object v5, v2, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 91
    if-eqz v3, :cond_2

    .line 93
    iget-object v6, v5, Lcom/android/server/input/BatteryController;->mUEventManager:Lcom/android/server/input/UEventManager;

    .line 95
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    iget-object v3, v3, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    .line 100
    invoke-virtual {v3}, Landroid/os/UEventObserver;->stopObserving()V

    .line 103
    iput-object v4, v2, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    .line 105
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->stopBluetoothMetadataMonitoring()V

    .line 108
    iput-object v4, v2, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 110
    invoke-virtual {v5}, Lcom/android/server/input/BatteryController;->updateBluetoothBatteryMonitoring()V

    .line 113
    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_3
    :goto_1
    iget-object p2, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    .line 124
    check-cast p2, Landroid/util/ArraySet;

    .line 126
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_4

    .line 132
    iget-object p2, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 134
    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    .line 137
    move-result-object p2

    .line 138
    iget-object p1, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mDeathRecipient:Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;

    .line 140
    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 143
    iget-object p1, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-boolean p1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 154
    if-eqz p1, :cond_4

    .line 156
    const-string p1, "Battery listener removed for pid "

    .line 158
    const-string p2, "BatteryController"

    .line 160
    invoke-static {v1, p1, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/input/BatteryController;->updatePollingLocked(Z)V

    .line 166
    return-void

    .line 167
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 169
    const-string p1, "Cannot unregister battery callback: The deviceId "

    .line 171
    const-string v0, " is not being monitored by pid "

    .line 173
    invoke-static {p2, v1, p1, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    throw p0
.end method

.method public final updateBluetoothBatteryMonitoring()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 6
    new-instance v2, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-direct {v2, v3}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 12
    invoke-static {v1, v2}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    .line 20
    if-nez v1, :cond_3

    .line 22
    sget-boolean v1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 24
    if-eqz v1, :cond_0

    .line 26
    const-string v1, "BatteryController"

    .line 28
    const-string v2, "Registering bluetooth battery listener"

    .line 30
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    .line 38
    invoke-direct {v1, p0}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/BatteryController;)V

    .line 41
    iput-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    .line 43
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    .line 45
    invoke-interface {p0, v1}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->addBatteryListener(Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;)V

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    .line 51
    if-eqz v1, :cond_3

    .line 53
    sget-boolean v1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 55
    if-eqz v1, :cond_2

    .line 57
    const-string v1, "BatteryController"

    .line 59
    const-string v2, "Unregistering bluetooth battery listener"

    .line 61
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    .line 66
    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    .line 68
    invoke-interface {v1, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->removeBatteryListener(Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;)V

    .line 71
    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    .line 74
    :cond_3
    :goto_1
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final updatePollingLocked(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    .line 3
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    .line 5
    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 9
    new-instance v2, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v3}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 15
    invoke-static {v0, v2}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 21
    iget-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    .line 23
    if-eqz v0, :cond_0

    .line 25
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    .line 29
    new-instance v0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;

    .line 31
    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/BatteryController;)V

    .line 34
    if-eqz p1, :cond_1

    .line 36
    const-wide/16 p0, 0x2710

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-wide/16 p0, 0x0

    .line 41
    :goto_0
    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void

    .line 45
    :cond_2
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    .line 48
    new-instance p1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;

    .line 50
    invoke-direct {p1, p0}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/BatteryController;)V

    .line 53
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
