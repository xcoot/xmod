.class public final synthetic Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;

    .line 10
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->checkBleState()V

    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 18
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 24
    if-nez v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->stopScanIfNeeded()V

    .line 30
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->startScan()V

    .line 33
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 36
    const-string v0, "BleDeviceProcessor is not initialized"

    .line 38
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
