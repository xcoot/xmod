.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public final synthetic this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x7d0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Usb Gadget hal service died cookie: "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x6

    .line 24
    invoke-static {p2, v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter p1

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    iput-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 36
    .line 37
    monitor-exit p1

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_0
    :goto_0
    return-void
.end method
