.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;
.super Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChargingFunctions:Z

.field public final mFunctions:J

.field public final mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public final mRequest:I

.field public final synthetic this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;IJZ)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 4
    iput p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mRequest:I

    .line 5
    iput-wide p3, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mFunctions:J

    .line 6
    iput-boolean p5, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mChargingFunctions:Z

    return-void
.end method


# virtual methods
.method public final getCurrentUsbFunctionsCb(JIJ)V
    .locals 4

    .line 1
    const-string v0, " ,transactionId:"

    .line 2
    .line 3
    const-string v1, " ,status:"

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 8
    .line 9
    const-string v3, "Usb getCurrentUsbFunctionsCb ,functions:"

    .line 10
    .line 11
    invoke-static {p3, v3, p1, p2, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    const/4 p5, 0x4

    .line 26
    invoke-static {p5, v2, p4}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 31
    .line 32
    const-string v3, "Usb getCurrentUsbFunctionsCb failed ,functions:"

    .line 33
    .line 34
    invoke-static {p3, v3, p1, p2, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    const/4 p5, 0x6

    .line 49
    invoke-static {p5, v2, p4}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 p2, 0x2

    .line 64
    if-ne p3, p2, :cond_1

    .line 65
    .line 66
    const/4 p2, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 p2, 0x0

    .line 69
    :goto_1
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 70
    .line 71
    const/16 p3, 0x10

    .line 72
    .line 73
    invoke-virtual {p0, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    iput p2, p3, Landroid/os/Message;->arg1:I

    .line 83
    .line 84
    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "cb628c69682659911bca5c1d04042adba7f0de4b"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getUsbSpeedCb(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "getUsbSpeedCb speed:"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, " ,transactionId:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 p3, 0x4

    .line 26
    invoke-static {p3, v0, p2}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getUsbSpeedCb(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final resetCb(IJ)V
    .locals 4

    .line 1
    const-string v0, " ,transactionId:"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Usb resetCb status:"

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 p3, 0x4

    .line 28
    invoke-static {p3, v1, p2}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "Usb resetCb status"

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const/4 p3, 0x6

    .line 55
    invoke-static {p3, v1, p2}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->resetCb(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final setCurrentUsbFunctionsCb(JIJ)V
    .locals 8

    .line 1
    const-string v0, " ,transactionId:"

    .line 2
    .line 3
    const-string v1, " ,status:"

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 8
    .line 9
    const-string v3, "Usb setCurrentUsbFunctionsCb ,functions:"

    .line 10
    .line 11
    invoke-static {p3, v3, p1, p2, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    const/4 p5, 0x4

    .line 26
    invoke-static {p5, v2, p4}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 31
    .line 32
    const-string v3, "Usb setCurrentUsbFunctionsCb failed ,functions:"

    .line 33
    .line 34
    invoke-static {p3, v3, p1, p2, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    const/4 p5, 0x6

    .line 49
    invoke-static {p5, v2, p4}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object p4, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    .line 53
    .line 54
    iget-object p4, p4, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 55
    .line 56
    iget v6, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mRequest:I

    .line 57
    .line 58
    iget-wide v4, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mFunctions:J

    .line 59
    .line 60
    iget-boolean v7, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mChargingFunctions:Z

    .line 61
    .line 62
    iget-object v0, p4, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 63
    .line 64
    move v1, p3

    .line 65
    move-wide v2, p1

    .line 66
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setCurrentUsbFunctionsCb(IJJIZ)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
