.class public final Lcom/android/server/input/BatteryController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    new-instance v3, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-direct {v3, v4}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    .line 56
    .line 57
    invoke-direct {v3, p0, p1}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;-><init>(Lcom/android/server/input/BatteryController;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final onInputDeviceChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {p0, v1, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onConfiguration(J)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
