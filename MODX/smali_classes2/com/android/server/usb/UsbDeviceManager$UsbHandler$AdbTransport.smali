.class public final Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;
.super Landroid/debug/IAdbTransport$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/debug/IAdbTransport$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAdbEnabled(ZB)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
