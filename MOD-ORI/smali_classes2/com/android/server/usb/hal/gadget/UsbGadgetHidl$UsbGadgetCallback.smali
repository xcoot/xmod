.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;
.super Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChargingFunctions:Z

.field public final mFunctions:J

.field public final mRequest:I

.field public final synthetic this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;IJZ)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;-><init>()V

    .line 3
    iput p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mRequest:I

    .line 4
    iput-wide p3, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mFunctions:J

    .line 5
    iput-boolean p5, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mChargingFunctions:Z

    return-void
.end method


# virtual methods
.method public final getCurrentUsbFunctionsCb(JI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x2

    .line 13
    if-ne p3, p2, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 19
    .line 20
    const/16 p3, 0x10

    .line 21
    .line 22
    invoke-virtual {p0, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    iput p2, p3, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final getUsbSpeedCb(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getUsbSpeedCb(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setCurrentUsbFunctionsCb(JI)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 4
    .line 5
    iget v7, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mRequest:I

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mFunctions:J

    .line 8
    .line 9
    iget-boolean v8, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mChargingFunctions:Z

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 12
    .line 13
    move v2, p3

    .line 14
    move-wide v3, p1

    .line 15
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setCurrentUsbFunctionsCb(IJJIZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
