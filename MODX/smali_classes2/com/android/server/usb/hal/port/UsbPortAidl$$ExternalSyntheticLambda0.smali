.class public final synthetic Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/hal/port/UsbPortAidl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/hal/port/UsbPortAidl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/hal/port/UsbPortAidl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/hal/port/UsbPortAidl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 4
    .line 5
    const-string v1, "Usb AIDL hal service died"

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {v2, v0, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortAidl;->connectToProxy()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method
