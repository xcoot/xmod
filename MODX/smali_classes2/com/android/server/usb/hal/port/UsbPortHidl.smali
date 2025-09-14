.class public final Lcom/android/server/usb/hal/port/UsbPortHidl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usb/hal/port/UsbPortHal;


# static fields
.field public static sUsbDataStatus:I


# instance fields
.field public final mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

.field public final mLock:Ljava/lang/Object;

.field public mProxy:Landroid/hardware/usb/V1_0/IUsb;

.field public final mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mSystemReady:Z


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbPortManager;)V
    .locals 5

    .line 1
    const-string v0, "UsbPortManager"

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
    iput-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 20
    .line 21
    new-instance v3, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    .line 22
    .line 23
    invoke-direct {v3}, Landroid/os/HwBinder;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    iput v4, v3, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    .line 28
    .line 29
    iput-object v2, v3, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 30
    .line 31
    iput-object p1, v3, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 32
    .line 33
    iput-object p0, v3, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    .line 34
    .line 35
    iput-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    .line 36
    .line 37
    :try_start_0
    new-instance p1, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;-><init>(Lcom/android/server/usb/hal/port/UsbPortHidl;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "android.hardware.usb@1.0::IUsb"

    .line 47
    .line 48
    const-string v4, ""

    .line 49
    .line 50
    invoke-interface {v2, v3, v4, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    const/4 p1, 0x6

    .line 57
    invoke-static {p1, v0, v1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->connectToProxy$1()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final connectToProxy$1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

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
    const-string v1, "android.hardware.usb@1.0::IUsb"

    .line 13
    .line 14
    const-string v2, "default"

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/hardware/usb/V1_0/IUsb;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_0/IUsb;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;-><init>(Lcom/android/server/usb/hal/port/UsbPortHidl;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v3, 0x3e8

    .line 32
    .line 33
    invoke-interface {v1, v2, v3, v4}, Landroid/hidl/base/V1_0/IBase;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    .line 39
    .line 40
    invoke-interface {v1, v2}, Landroid/hardware/usb/V1_0/IUsb;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 44
    .line 45
    invoke-interface {p0}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :goto_0
    :try_start_2
    const-string v1, "connectToProxy: usb hal service not responding"

    .line 54
    .line 55
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 56
    .line 57
    const-string v2, "UsbPortManager"

    .line 58
    .line 59
    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_1
    const-string v1, "connectToProxy: usb hal service not found. Did the service fail to start?"

    .line 64
    .line 65
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 66
    .line 67
    const-string v2, "UsbPortManager"

    .line 68
    .line 69
    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :goto_2
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0
.end method

.method public final enableContaminantPresenceDetection(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-object p3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 9
    .line 10
    const-string p1, "Proxy is null. Retry !"

    .line 11
    .line 12
    const/4 p3, 0x6

    .line 13
    invoke-static {p3, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-interface {p3, p1, p4}, Landroid/hardware/usb/V1_2/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :goto_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 33
    .line 34
    const-string p3, "Method only applicable to V1.2 or above implementation"

    .line 35
    .line 36
    invoke-static {p0, p3, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 41
    .line 42
    const-string p3, "Failed to set contaminant detection"

    .line 43
    .line 44
    invoke-static {p0, p3, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    monitor-exit p2

    .line 48
    return-void

    .line 49
    :goto_3
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0
.end method

.method public final enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    :try_start_0
    invoke-interface {p5, p1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p1

    .line 7
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 8
    .line 9
    const-string p2, "Failed to call onOperationComplete"

    .line 10
    .line 11
    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
    .locals 9

    .line 1
    const-string v0, "Failed to call onOperationComplete. opID:"

    .line 2
    .line 3
    const-string v1, "Failed enableUsbData: opId:"

    .line 4
    .line 5
    const-string v2, "enableUsbData success["

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->getUsbHalVersion()I

    .line 9
    .line 10
    .line 11
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 12
    const/16 v5, 0xd

    .line 13
    .line 14
    if-eq v4, v5, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    :try_start_1
    invoke-interface {p5, p2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p2

    .line 22
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 23
    .line 24
    new-instance p5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "Failed to call onOperationComplete. opID:"

    .line 27
    .line 28
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p3, " portId:"

    .line 35
    .line 36
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return v3

    .line 50
    :cond_0
    iget-object v4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v4

    .line 53
    const/4 v5, 0x1

    .line 54
    :try_start_2
    iget-object v6, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 55
    .line 56
    invoke-static {v6}, Landroid/hardware/usb/V1_3/IUsb$Proxy;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_3/IUsb$Proxy;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6, p2}, Landroid/hardware/usb/V1_3/IUsb$Proxy;->enableUsbDataSignal(Z)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const-string v7, "UsbPortHidl"

    .line 65
    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, "] from USB HAL, while enable["

    .line 75
    .line 76
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, "]"

    .line 83
    .line 84
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v7, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    if-eqz v6, :cond_2

    .line 96
    .line 97
    if-eqz p2, :cond_1

    .line 98
    .line 99
    move p2, v3

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const/16 p2, 0x10

    .line 102
    .line 103
    :goto_1
    sput p2, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    .line 104
    .line 105
    :cond_2
    xor-int/lit8 p2, v6, 0x1

    .line 106
    .line 107
    :try_start_4
    invoke-interface {p5, p2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move-exception p2

    .line 112
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 113
    .line 114
    new-instance p5, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v0, "Failed to call onOperationComplete. opID:"

    .line 117
    .line 118
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p3, " portId:"

    .line 125
    .line 126
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 137
    .line 138
    .line 139
    :goto_2
    return v3

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_4

    .line 142
    :catch_2
    move-exception p2

    .line 143
    :try_start_5
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 144
    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, " portId="

    .line 154
    .line 155
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v2, v1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 166
    .line 167
    .line 168
    :try_start_6
    invoke-interface {p5, v5}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :catch_3
    move-exception p2

    .line 173
    :try_start_7
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 174
    .line 175
    new-instance p5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p3, " portId:"

    .line 184
    .line 185
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 196
    .line 197
    .line 198
    :goto_3
    monitor-exit v4

    .line 199
    return v3

    .line 200
    :goto_4
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 201
    throw p0

    .line 202
    :catch_4
    move-exception p2

    .line 203
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 204
    .line 205
    new-instance p5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v0, "Failed to query USB HAL version. opID:"

    .line 208
    .line 209
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p3, " portId:"

    .line 216
    .line 217
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 228
    .line 229
    .line 230
    return v3
.end method

.method public final enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    :try_start_0
    invoke-interface {p4, p1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p1

    .line 7
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 8
    .line 9
    const-string p2, "Failed to call onOperationComplete"

    .line 10
    .line 11
    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final getUsbHalVersion()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 5
    .line 6
    if-eqz v1, :cond_8

    .line 7
    .line 8
    invoke-static {v1}, Landroid/hardware/usb/V1_3/IUsb$Proxy;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_3/IUsb$Proxy;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/16 p0, 0xd

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 18
    .line 19
    invoke-static {v1}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 p0, 0xc

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-nez p0, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string v2, "android.hardware.usb@1.1::IUsb"

    .line 42
    .line 43
    invoke-interface {p0, v2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    instance-of v4, v3, Landroid/hardware/usb/V1_1/IUsb;

    .line 50
    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    move-object v1, v3

    .line 54
    check-cast v1, Landroid/hardware/usb/V1_1/IUsb;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    new-instance v3, Landroid/hardware/usb/V1_1/IUsb$Proxy;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p0, v3, Landroid/hardware/usb/V1_1/IUsb$Proxy;->mRemote:Landroid/os/IHwBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    :try_start_1
    invoke-virtual {v3}, Landroid/hardware/usb/V1_1/IUsb$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_6

    .line 77
    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    if-eqz v4, :cond_5

    .line 89
    .line 90
    move-object v1, v3

    .line 91
    :catch_0
    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    .line 92
    .line 93
    const/16 p0, 0xb

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_7
    const/16 p0, 0xa

    .line 97
    .line 98
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "USB HAL HIDL version: "

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 116
    .line 117
    const-string v2, "UsbPortManager"

    .line 118
    .line 119
    const/4 v3, 0x4

    .line 120
    invoke-static {v3, v2, v1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    monitor-exit v0

    .line 124
    return p0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_2

    .line 127
    :cond_8
    new-instance p0, Landroid/os/RemoteException;

    .line 128
    .line 129
    const-string v1, "IUsb not initialized yet"

    .line 130
    .line 131
    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    throw p0
.end method

.method public final queryPortStatus(J)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 9
    .line 10
    const-string p2, "Proxy is null. Retry !"

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    invoke-static {v0, p0, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_1
    invoke-interface {p2}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    :try_start_2
    const-string p2, "ServiceStart: Failed to query port status"

    .line 26
    .line 27
    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 28
    .line 29
    const-string v0, "UsbPortManager"

    .line 30
    .line 31
    invoke-static {v0, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    monitor-exit p1

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw p0
.end method

.method public final resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    invoke-interface {p4, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p4

    .line 7
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "Failed to call onOperationComplete. opID:"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, " portId:"

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1, p4}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final switchDataRole(ILjava/lang/String;J)V
    .locals 3

    .line 1
    const-string p3, "Failed to set the USB data role: portId="

    .line 2
    .line 3
    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p4

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 11
    .line 12
    const-string p1, "Proxy is null. Retry !"

    .line 13
    .line 14
    const/4 p2, 0x6

    .line 15
    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit p4

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v1, Landroid/hardware/usb/V1_0/PortRole;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput v2, v1, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 29
    .line 30
    iput p1, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    :try_start_1
    invoke-interface {v0, p2, v1}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    :try_start_2
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, ", newDataRole="

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget p2, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 53
    .line 54
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    monitor-exit p4

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method

.method public final switchMode(ILjava/lang/String;J)V
    .locals 3

    .line 1
    const-string p3, "Failed to set the USB port mode: portId="

    .line 2
    .line 3
    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p4

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 11
    .line 12
    const-string p1, "Proxy is null. Retry !"

    .line 13
    .line 14
    const/4 p2, 0x6

    .line 15
    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit p4

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v1, Landroid/hardware/usb/V1_0/PortRole;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    iput v2, v1, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 29
    .line 30
    iput p1, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    :try_start_1
    invoke-interface {v0, p2, v1}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    :try_start_2
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, ", newMode="

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget p2, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 53
    .line 54
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    monitor-exit p4

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method

.method public final switchPowerRole(ILjava/lang/String;J)V
    .locals 3

    .line 1
    const-string p3, "Failed to set the USB power role: portId="

    .line 2
    .line 3
    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p4

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 11
    .line 12
    const-string p1, "Proxy is null. Retry !"

    .line 13
    .line 14
    const/4 p2, 0x6

    .line 15
    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit p4

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v1, Landroid/hardware/usb/V1_0/PortRole;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    iput v2, v1, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 29
    .line 30
    iput p1, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    :try_start_1
    invoke-interface {v0, p2, v1}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    :try_start_2
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, ", newPowerRole="

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget p2, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 53
    .line 54
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    monitor-exit p4

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method

.method public final systemReady()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    .line 3
    .line 4
    return-void
.end method
