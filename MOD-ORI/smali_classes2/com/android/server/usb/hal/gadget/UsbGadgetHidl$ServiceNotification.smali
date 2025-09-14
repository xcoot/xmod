.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 4
    .line 5
    const-string v0, "Usb gadget hal service started "

    .line 6
    .line 7
    const-string v1, " "

    .line 8
    .line 9
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x4

    .line 14
    invoke-static {p2, p3, p1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->connectToProxy$1()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
