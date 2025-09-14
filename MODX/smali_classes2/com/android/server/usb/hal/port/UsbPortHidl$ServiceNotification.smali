.class public final Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/port/UsbPortHidl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

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
    .locals 1

    .line 1
    const-string p3, "Usb hal service started "

    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    invoke-static {p3, p1, v0, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 10
    .line 11
    const-string p2, "UsbPortManager"

    .line 12
    .line 13
    const/4 p3, 0x4

    .line 14
    invoke-static {p3, p2, p1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->connectToProxy$1()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
