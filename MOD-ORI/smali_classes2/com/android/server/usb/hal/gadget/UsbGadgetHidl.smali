.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usb/hal/gadget/UsbGadgetHal;


# instance fields
.field public final mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

.field public final mGadgetProxyLock:Ljava/lang/Object;

.field public final mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 5

    .line 1
    const-string v0, "UsbDeviceManager"

    .line 2
    .line 3
    const-string v1, "Failed to register service start notification"

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 22
    .line 23
    :try_start_0
    new-instance p1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "android.hardware.usb.gadget@1.0::IUsbGadget"

    .line 33
    .line 34
    const-string v4, ""

    .line 35
    .line 36
    invoke-interface {v2, v3, v4, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    const/4 p1, 0x6

    .line 43
    invoke-static {p1, v0, v1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->connectToProxy$1()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final connectToProxy$1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_3

    .line 12
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 17
    .line 18
    new-instance v2, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v3, 0x7d0

    .line 24
    .line 25
    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :catch_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    :try_start_2
    const-string v1, "connectToProxy: usb gadget hal service not responding"

    .line 34
    .line 35
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 36
    .line 37
    const-string v2, "UsbDeviceManager"

    .line 38
    .line 39
    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    const-string v1, "connectToProxy: usb gadget hal service not found. Did the service fail to start?"

    .line 44
    .line 45
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 46
    .line 47
    const-string v2, "UsbDeviceManager"

    .line 48
    .line 49
    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_2
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw p0
.end method

.method public final getCurrentUsbFunctions(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    .line 12
    .line 13
    .line 14
    monitor-exit p1

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p2

    .line 17
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 21
    .line 22
    const-string p2, "RemoteException while calling getCurrentUsbFunctions"

    .line 23
    .line 24
    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final getGadgetHalVersion()I
    .locals 4

    .line 1
    const-string v0, "USB Gadget HAL HIDL version: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    invoke-static {v2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const/16 v2, 0xc

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 20
    .line 21
    invoke-static {v2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const/16 v2, 0xb

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 v2, 0xa

    .line 31
    .line 32
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v3, 0x4

    .line 47
    invoke-static {v3, p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    monitor-exit v1

    .line 51
    return v2

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 55
    .line 56
    const-string v0, "IUsbGadget not initialized yet"

    .line 57
    .line 58
    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final getUsbSpeed(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 5
    .line 6
    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 13
    .line 14
    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, v0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->getUsbSpeed(Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p2

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p1

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 35
    .line 36
    const-string p2, "get UsbSpeed failed"

    .line 37
    .line 38
    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    :goto_2
    return-void
.end method

.method public final reset(J)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 5
    .line 6
    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 13
    .line 14
    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->reset()I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p1

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 30
    .line 31
    const-string p2, "RemoteException while calling reset"

    .line 32
    .line 33
    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final setCurrentUsbFunctions(IJJZ)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v6, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move-wide v3, p2

    .line 7
    move v5, p6

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;IJZ)V

    .line 9
    .line 10
    .line 11
    iput-object v6, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    .line 19
    .line 20
    const/16 v2, 0x9c4

    .line 21
    .line 22
    int-to-long v5, v2

    .line 23
    move-wide v2, p2

    .line 24
    invoke-interface/range {v1 .. v6}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 34
    .line 35
    const-string v1, "RemoteException while calling setCurrentUsbFunctions mRequest = "

    .line 36
    .line 37
    const-string v2, ", mFunctions = "

    .line 38
    .line 39
    invoke-static {p1, v1, p2, p3, v2}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, ", timeout = 2500, mChargingFunctions = "

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p2, ", operationId ="

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p0, p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
