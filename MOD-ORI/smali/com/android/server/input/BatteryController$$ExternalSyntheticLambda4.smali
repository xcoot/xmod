.class public final synthetic Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/input/BatteryController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBluetoothBatteryChanged(ILjava/lang/String;J)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/input/BatteryController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2, p2}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    new-instance p2, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;

    .line 23
    .line 24
    invoke-direct {p2, p0, p1}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p3, p4, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method
