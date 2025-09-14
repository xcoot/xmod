.class public final synthetic Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iget p0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    check-cast p1, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 9
    sget-boolean p0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 11
    iget-object p0, p1, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    .line 18
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    instance-of p0, p1, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    .line 23
    xor-int/2addr p0, v0

    .line 24
    return p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
