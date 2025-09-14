.class public final synthetic Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 11
    .line 12
    sget-boolean v0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    check-cast p1, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 24
    .line 25
    sget-boolean v0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    return p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
