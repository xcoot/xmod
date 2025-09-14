.class public final Lcom/android/server/BatteryService$LocalService;
.super Landroid/os/BatteryManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/BatteryManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getBatteryChargeCounter()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 9
    .line 10
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return p0

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

.method public final getBatteryFullCharge()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 9
    .line 10
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return p0

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

.method public final getBatteryHealth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 9
    .line 10
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return p0

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

.method public final getBatteryLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 9
    .line 10
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return p0

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

.method public final getBatteryLevelCritical()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

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

.method public final getBatteryLevelLow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

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

.method public final getBatteryLevelRaw()I
    .locals 0

    .line 1
    const-string p0, "/sys/class/power_supply/battery/batt_read_raw_soc"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/battery/BattUtils;->readNodeAsInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getBatteryOnline()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 4
    .line 5
    iget p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 6
    .line 7
    return p0
.end method

.method public final getBatteryStateOfHealth()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/battery/BattUtils;->readNodeAsDouble()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    double-to-int p0, v0

    .line 6
    if-gez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "/efs/FactoryApp/asoc"

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/server/battery/BattUtils;->readNodeAsInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :cond_0
    return p0
.end method

.method public final getChargingPolicy()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

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

.method public final getInvalidCharger()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

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

.method public final getPlugType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

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

.method public final isPowered(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

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

.method public final registerChargingPolicyChangeListener(Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final resetBattery(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/BatteryService;->resetBattery(Ljava/io/PrintWriter;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setBatteryLevel(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 15
    .line 16
    iput p1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda13;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/BatteryService;ZI)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setChargerAcOnline(ZZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 15
    .line 16
    iput-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda13;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/BatteryService;ZI)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setWirelessPowerSharingExternelEvent(II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "setWirelessPowerSharingExternelEvent packageNum: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " value: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "BatteryService"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final suspendBatteryInput()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    .line 21
    const-string v0, "battery suspend_input is only supported on debuggable builds"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final unplugBattery(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/BatteryService;->unplugBattery(Ljava/io/PrintWriter;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
