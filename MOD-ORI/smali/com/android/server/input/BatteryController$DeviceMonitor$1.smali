.class public final Lcom/android/server/input/BatteryController$DeviceMonitor$1;
.super Lcom/android/server/input/BatteryController$UEventBatteryListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/input/BatteryController$DeviceMonitor;

.field public final synthetic val$deviceId:I


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->this$1:Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->val$deviceId:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/server/input/BatteryController$UEventBatteryListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onBatteryUEvent(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->this$1:Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->val$deviceId:I

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    monitor-exit v1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onUEvent(J)V

    .line 29
    .line 30
    .line 31
    monitor-exit v1

    .line 32
    :goto_0
    return-void

    .line 33
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method
