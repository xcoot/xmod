.class public final synthetic Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    .line 10
    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

    .line 12
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/android/server/input/BatteryController$State;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$State;-><init>(Landroid/hardware/input/IInputDeviceBatteryState;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/android/server/input/BatteryController$State;

    .line 24
    iget p0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 26
    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$State;-><init>(I)V

    .line 29
    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v0, Lcom/android/server/input/BatteryController$State;

    .line 35
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    .line 37
    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$State;-><init>(Landroid/hardware/input/IInputDeviceBatteryState;)V

    .line 40
    return-object v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
