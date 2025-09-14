.class public final synthetic Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/BatteryController;

    .line 6
    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/BatteryController;

    .line 3
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 8
    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, p1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 14
    invoke-static {p0, v1}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v1

    .line 26
    new-instance p1, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;

    .line 28
    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I[B)V

    .line 31
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
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
