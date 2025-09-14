.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# instance fields
.field public final mBiometricStrength:I

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[BLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;I)V
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    const/4 v11, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move/from16 v5, p3

    .line 10
    .line 11
    move-object/from16 v6, p4

    .line 12
    .line 13
    move/from16 v8, p5

    .line 14
    .line 15
    move-object/from16 v9, p6

    .line 16
    .line 17
    move-object/from16 v10, p7

    .line 18
    .line 19
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 20
    .line 21
    .line 22
    if-eqz p8, :cond_0

    .line 23
    .line 24
    invoke-static/range {p8 .. p8}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 25
    .line 26
    .line 27
    :cond_0
    move-object/from16 v0, p9

    .line 28
    .line 29
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 30
    .line 31
    move-object/from16 v0, p10

    .line 32
    .line 33
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 34
    .line 35
    move/from16 v0, p11

    .line 36
    .line 37
    iput v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mBiometricStrength:I

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/16 p0, 0xc

    .line 2
    .line 3
    return p0
.end method

.method public final interruptsPrecedingClients()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onError(II)V
    .locals 1

    .line 1
    const-string p2, "Error during resetLockout: "

    .line 2
    .line 3
    const-string v0, "FaceResetLockoutClient"

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->startHalOperation()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final startHalOperation()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onLockoutCleared()V

    .line 26
    .line 27
    .line 28
    :cond_0
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v1, "FaceResetLockoutClient"

    .line 41
    .line 42
    const-string v2, "Unable to reset lockout"

    .line 43
    .line 44
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public final unableToStart()V
    .locals 0

    .line 1
    return-void
.end method
