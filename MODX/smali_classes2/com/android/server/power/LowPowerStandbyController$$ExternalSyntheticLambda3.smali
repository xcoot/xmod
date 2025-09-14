.class public final synthetic Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "low_power_standby"

    .line 12
    .line 13
    const-string v1, "enable_policy"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    .line 21
    .line 22
    if-eq v1, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 36
    .line 37
    invoke-interface {v4}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 45
    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v0, "low_power_standby"

    .line 58
    .line 59
    const-string v1, "enable_standby_ports"

    .line 60
    .line 61
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    .line 66
    .line 67
    monitor-exit p1

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method
