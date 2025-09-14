.class public final synthetic Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    .line 6
    iput p2, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    .line 3
    iget p0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    iget-object v0, v0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 7
    iget-object v1, v0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 22
    if-nez p0, :cond_0

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
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {p0, v2, v3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onTimeout(J)V

    .line 35
    monitor-exit v1

    .line 36
    :goto_0
    return-void

    .line 37
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method
