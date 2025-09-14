.class public final Lcom/android/server/usb/hal/port/UsbPortAidl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usb/hal/port/UsbPortHal;


# static fields
.field public static final sCallbacks:Landroid/util/LongSparseArray;


# instance fields
.field public mBinder:Landroid/os/IBinder;

.field public final mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

.field public final mLock:Ljava/lang/Object;

.field public mProxy:Landroid/hardware/usb/IUsb;

.field public final mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mSystemReady:Z

.field public mTransactionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbPortManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/Binder;->markVintfStability()V

    .line 23
    .line 24
    .line 25
    sget-object v2, Landroid/hardware/usb/IUsbCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v1, v2}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iput v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->preDataRole:I

    .line 32
    .line 33
    iput-object v0, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 34
    .line 35
    iput-object p1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 36
    .line 37
    iput-object p0, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortAidl;->connectToProxy()V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final connectToProxy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

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
    const-string v1, "android.hardware.usb.IUsb/default"

    .line 13
    .line 14
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mBinder:Landroid/os/IBinder;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/hardware/usb/IUsb$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsb;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mBinder:Landroid/os/IBinder;

    .line 27
    .line 28
    new-instance v2, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/hal/port/UsbPortAidl;)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    .line 40
    .line 41
    check-cast v1, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/hardware/usb/IUsb$Stub$Proxy;->setCallback(Landroid/hardware/usb/IUsbCallback;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 47
    .line 48
    iget-wide v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mTransactionId:J

    .line 49
    .line 50
    const-wide/16 v4, 0x1

    .line 51
    .line 52
    add-long/2addr v2, v4

    .line 53
    iput-wide v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mTransactionId:J

    .line 54
    .line 55
    check-cast v1, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/IUsb$Stub$Proxy;->queryPortStatus(J)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :goto_0
    :try_start_2
    const-string v1, "connectToProxy: usb hal service not responding"

    .line 66
    .line 67
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 68
    .line 69
    const-string v2, "UsbPortManager"

    .line 70
    .line 71
    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    const-string v1, "connectToProxy: usb hal service not found. Did the service fail to start?"

    .line 76
    .line 77
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 78
    .line 79
    const-string v2, "UsbPortManager"

    .line 80
    .line 81
    invoke-static {v2, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    :goto_2
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw p0
.end method

.method public final enableContaminantPresenceDetection(Ljava/lang/String;JZ)V
    .locals 4

    .line 1
    const-string v0, "Failed to set contaminant detection. opID:"

    .line 2
    .line 3
    const-string v1, "Proxy is null. Retry ! opID: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x6

    .line 27
    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :try_start_1
    check-cast v3, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 35
    .line 36
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/hardware/usb/IUsb$Stub$Proxy;->enableContaminantPresenceDetection(Ljava/lang/String;JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    :try_start_2
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 42
    .line 43
    new-instance p4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    monitor-exit v2

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw p0
.end method

.method public final enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 8

    .line 1
    const-string v0, "enableLimitPowerTransfer: Proxy is null. Retry !opID:"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v2, 0x6

    .line 29
    invoke-static {v2, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p5, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :catch_0
    move-exception p2

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move-wide v4, p3

    .line 43
    :goto_0
    :try_start_2
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 44
    .line 45
    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    int-to-long v4, v0

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    cmp-long v2, v4, p3

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 66
    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v7, "enableUsbData: operationID exists ! opID:"

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v7, " key:"

    .line 81
    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const/4 v7, 0x4

    .line 93
    invoke-static {v7, v2, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .line 95
    .line 96
    :cond_2
    :try_start_3
    invoke-virtual {v0, v4, v5, p5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 100
    .line 101
    check-cast v0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 102
    .line 103
    invoke-virtual {v0, p1, v4, v5, p2}, Landroid/hardware/usb/IUsb$Stub$Proxy;->limitPowerTransfer(Ljava/lang/String;JZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_1
    move-exception p2

    .line 108
    :try_start_4
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v6, "enableLimitPowerTransfer: Failed while invoking AIDL HAL portID="

    .line 116
    .line 117
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v6, " opID:"

    .line 124
    .line 125
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v0, v2, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 136
    .line 137
    .line 138
    if-eqz p5, :cond_3

    .line 139
    .line 140
    invoke-interface {p5, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 141
    .line 142
    .line 143
    :cond_3
    sget-object p2, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 144
    .line 145
    invoke-virtual {p2, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :goto_1
    :try_start_5
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 150
    .line 151
    new-instance p5, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v0, "enableLimitPowerTransfer: Failed to call onOperationComplete portID="

    .line 157
    .line 158
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, " opID:"

    .line 165
    .line 166
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    monitor-exit v1

    .line 180
    return-void

    .line 181
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    throw p0
.end method

.method public final enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
    .locals 9

    .line 1
    const-string v0, "enableUsbData: Proxy is null. Retry !opID:"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v3, 0x6

    .line 33
    invoke-static {v3, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p5, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    return v2

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :catch_0
    move-exception p2

    .line 45
    move-wide v5, p3

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move-wide v5, p3

    .line 48
    :goto_0
    :try_start_2
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 49
    .line 50
    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    int-to-long v5, v0

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception p2

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    cmp-long v3, v5, p3

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 73
    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v8, "enableUsbData: operationID exists ! opID:"

    .line 80
    .line 81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v8, " key:"

    .line 88
    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    const/4 v8, 0x4

    .line 100
    invoke-static {v8, v3, v7}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .line 102
    .line 103
    :cond_2
    :try_start_3
    invoke-virtual {v0, v5, v6, p5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 107
    .line 108
    check-cast v0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 109
    .line 110
    invoke-virtual {v0, p1, v5, v6, p2}, Landroid/hardware/usb/IUsb$Stub$Proxy;->enableUsbData(Ljava/lang/String;JZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    .line 112
    .line 113
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    return v4

    .line 115
    :catch_2
    move-exception p2

    .line 116
    :try_start_5
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 117
    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v7, "enableUsbData: Failed to invoke enableUsbData: portID="

    .line 124
    .line 125
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string/jumbo v7, "opID:"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v0, v3, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p5, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 148
    .line 149
    .line 150
    sget-object p2, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 151
    .line 152
    invoke-virtual {p2, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    .line 154
    .line 155
    :try_start_6
    monitor-exit v1

    .line 156
    return v2

    .line 157
    :goto_1
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 158
    .line 159
    new-instance p5, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v0, "enableUsbData: Failed to call onOperationComplete portID="

    .line 165
    .line 166
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string/jumbo p1, "opID:"

    .line 173
    .line 174
    .line 175
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 186
    .line 187
    .line 188
    sget-object p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 189
    .line 190
    invoke-virtual {p0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 191
    .line 192
    .line 193
    monitor-exit v1

    .line 194
    return v2

    .line 195
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    throw p0
.end method

.method public final enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 8

    .line 1
    const-string v0, "enableUsbDataWhileDocked: Proxy is null. Retry !opID:"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v4, 0x6

    .line 29
    invoke-static {v4, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p4, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :catch_0
    move-exception p4

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move-wide v4, p2

    .line 43
    :goto_0
    :try_start_2
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 44
    .line 45
    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    int-to-long v4, v0

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    cmp-long v2, v4, p2

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 66
    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v7, "enableUsbDataWhileDocked: operationID exists ! opID:"

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v7, " key:"

    .line 81
    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const/4 v7, 0x4

    .line 93
    invoke-static {v7, v2, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .line 95
    .line 96
    :cond_2
    :try_start_3
    invoke-virtual {v0, v4, v5, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 100
    .line 101
    check-cast v0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 102
    .line 103
    invoke-virtual {v0, v4, v5, p1}, Landroid/hardware/usb/IUsb$Stub$Proxy;->enableUsbDataWhileDocked(JLjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_1
    move-exception v0

    .line 108
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 109
    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v7, "enableUsbDataWhileDocked: error while invoking halportID="

    .line 116
    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v7, " opID:"

    .line 124
    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v2, v6, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 136
    .line 137
    .line 138
    if-eqz p4, :cond_3

    .line 139
    .line 140
    invoke-interface {p4, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 141
    .line 142
    .line 143
    :cond_3
    sget-object p4, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 144
    .line 145
    invoke-virtual {p4, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :goto_1
    :try_start_5
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v2, "enableUsbDataWhileDocked: Failed to call onOperationComplete portID="

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, " opID:"

    .line 165
    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p0, p1, p4}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    monitor-exit v1

    .line 180
    return-void

    .line 181
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    throw p0
.end method

.method public final getUsbHalVersion()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const-string p0, "USB HAL AIDL version: USB_HAL_V2_0"

    .line 10
    .line 11
    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 12
    .line 13
    const-string v0, "UsbPortManager"

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/16 p0, 0x14

    .line 20
    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 25
    .line 26
    const-string v1, "IUsb not initialized yet"

    .line 27
    .line 28
    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
.end method

.method public final queryPortStatus(J)V
    .locals 4

    .line 1
    const-string v0, "ServiceStart: Failed to query port status. opID:"

    .line 2
    .line 3
    const-string v1, "Proxy is null. Retry ! opID:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x6

    .line 27
    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :try_start_1
    check-cast v3, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 35
    .line 36
    invoke-virtual {v3, p1, p2}, Landroid/hardware/usb/IUsb$Stub$Proxy;->queryPortStatus(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 54
    .line 55
    const-string p2, "UsbPortManager"

    .line 56
    .line 57
    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    monitor-exit v2

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw p0
.end method

.method public final resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "resetUsbPort: Proxy is null. Retry !opID:"

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 19
    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v4, 0x6

    .line 33
    invoke-static {v4, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p4, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :catch_0
    move-exception p4

    .line 44
    move-wide v4, p2

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_0
    move-wide v4, p2

    .line 47
    :goto_1
    :try_start_1
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 48
    .line 49
    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    int-to-long v4, v0

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception p4

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    cmp-long v2, v4, p2

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 72
    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v7, "resetUsbPort: operationID exists ! opID:"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v7, " key:"

    .line 88
    .line 89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const/4 v7, 0x4

    .line 100
    invoke-static {v7, v2, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    :cond_2
    :try_start_2
    invoke-virtual {v0, v4, v5, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    check-cast v0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 111
    .line 112
    invoke-virtual {v0, v4, v5, p1}, Landroid/hardware/usb/IUsb$Stub$Proxy;->resetUsbPort(JLjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catch_2
    move-exception v0

    .line 117
    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 118
    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string/jumbo v7, "resetUsbPort: Failed to resetUsbPort: portID="

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string/jumbo v7, "opId:"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-static {v2, v6, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p4, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 150
    .line 151
    .line 152
    sget-object p4, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 153
    .line 154
    invoke-virtual {p4, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :goto_2
    :try_start_4
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 159
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string/jumbo v2, "resetUsbPort: Failed to call onOperationComplete portID="

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string/jumbo p1, "opID:"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p0, p1, p4}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 188
    .line 189
    .line 190
    sget-object p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 191
    .line 192
    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 193
    .line 194
    .line 195
    :cond_3
    :goto_3
    monitor-exit v1

    .line 196
    return-void

    .line 197
    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    throw p0
.end method

.method public final switchDataRole(ILjava/lang/String;J)V
    .locals 5

    .line 1
    const-string v0, "Failed to set the USB data role: portId="

    .line 2
    .line 3
    const-string v1, "Proxy is null. Retry ! opID:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x6

    .line 27
    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v2

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance v1, Landroid/hardware/usb/PortRole;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    .line 37
    .line 38
    .line 39
    int-to-byte v3, p1

    .line 40
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x1

    .line 45
    iput v4, v1, Landroid/hardware/usb/PortRole;->_tag:I

    .line 46
    .line 47
    iput-object v3, v1, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 50
    .line 51
    check-cast v3, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 52
    .line 53
    invoke-virtual {v3, p2, v1, p3, p4}, Landroid/hardware/usb/IUsb$Stub$Proxy;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    :try_start_2
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p2, ", newDataRole="

    .line 69
    .line 70
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string/jumbo p1, "opID:"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    monitor-exit v2

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p0
.end method

.method public final switchMode(ILjava/lang/String;J)V
    .locals 5

    .line 1
    const-string v0, "Failed to set the USB port mode: portId="

    .line 2
    .line 3
    const-string v1, "Proxy is null. Retry ! opID:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x6

    .line 27
    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v2

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance v1, Landroid/hardware/usb/PortRole;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    .line 37
    .line 38
    .line 39
    int-to-byte v3, p1

    .line 40
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x2

    .line 45
    iput v4, v1, Landroid/hardware/usb/PortRole;->_tag:I

    .line 46
    .line 47
    iput-object v3, v1, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 50
    .line 51
    check-cast v3, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 52
    .line 53
    invoke-virtual {v3, p2, v1, p3, p4}, Landroid/hardware/usb/IUsb$Stub$Proxy;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    :try_start_2
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p2, ", newMode="

    .line 69
    .line 70
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string/jumbo p1, "opID:"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    monitor-exit v2

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p0
.end method

.method public final switchPowerRole(ILjava/lang/String;J)V
    .locals 5

    .line 1
    const-string v0, "Failed to set the USB power role: portId="

    .line 2
    .line 3
    const-string v1, "Proxy is null. Retry ! opID:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x6

    .line 27
    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v2

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance v1, Landroid/hardware/usb/PortRole;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    .line 37
    .line 38
    .line 39
    int-to-byte v3, p1

    .line 40
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x0

    .line 45
    iput v4, v1, Landroid/hardware/usb/PortRole;->_tag:I

    .line 46
    .line 47
    iput-object v3, v1, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 50
    .line 51
    check-cast v3, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 52
    .line 53
    invoke-virtual {v3, p2, v1, p3, p4}, Landroid/hardware/usb/IUsb$Stub$Proxy;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    :try_start_2
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p2, ", newPowerRole="

    .line 69
    .line 70
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string/jumbo p1, "opID:"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    monitor-exit v2

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p0
.end method

.method public final systemReady()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mSystemReady:Z

    .line 3
    .line 4
    return-void
.end method
