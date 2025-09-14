.class public final Lcom/android/server/input/BatteryController$UsiDeviceMonitor;
.super Lcom/android/server/input/BatteryController$DeviceMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mValidityTimeoutCallback:Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

.field public final synthetic this$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;-><init>(Lcom/android/server/input/BatteryController;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public final getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/input/BatteryController$State;

    .line 17
    return-object p0
.end method

.method public final markUsiBatteryValid()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

    .line 3
    iget-object v1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v2, v1, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    .line 15
    iget v0, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 17
    new-instance v2, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

    .line 19
    invoke-direct {v2, p0, v0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;I)V

    .line 22
    iput-object v2, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

    .line 24
    :goto_0
    iget-object v0, v1, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    .line 26
    iget-object p0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

    .line 28
    const-wide/32 v1, 0x36ee80

    .line 31
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    return-void
.end method

.method public final onConfiguration(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onConfiguration(J)V

    .line 4
    iget-boolean p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 11
    const-string p1, "UsiDeviceMonitor: USI devices are always expected to report a valid battery, but no battery was detected!"

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0
.end method

.method public final onPoll(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStylusGestureStarted(J)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;I)V

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final onTimeout(J)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;I)V

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final onUEvent(J)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;I)V

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-super {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", UsiStateIsValid="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
