.class public final synthetic Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/BatteryController$UsiDeviceMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    .line 5
    check-cast p1, Ljava/lang/Long;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object p1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

    .line 12
    if-nez p1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 17
    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    .line 19
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

    .line 25
    :goto_0
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 32
    move-result-wide v0

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBatteryStateFromNative(J)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->markUsiBatteryValid()V

    .line 39
    return-void

    .line 40
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

    .line 42
    if-eqz p1, :cond_1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    .line 47
    iget p1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    .line 49
    const/4 v0, 0x0

    .line 50
    cmpl-float p1, p1, v0

    .line 52
    if-nez p1, :cond_2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->markUsiBatteryValid()V

    .line 58
    :goto_2
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
