.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# instance fields
.field public final mBiometricStrength:I

.field public final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;


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

    .line 11
    move-object/from16 v6, p4

    .line 13
    move/from16 v8, p5

    .line 15
    move-object/from16 v9, p6

    .line 17
    move-object/from16 v10, p7

    .line 19
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 22
    if-nez p8, :cond_0

    .line 24
    :goto_0
    move-object/from16 v0, p9

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static/range {p8 .. p8}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 33
    move-object/from16 v0, p10

    .line 35
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 37
    move/from16 v0, p11

    .line 39
    iput v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mBiometricStrength:I

    .line 41
    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/16 p0, 0xc

    .line 3
    return p0
.end method

.method public final interruptsPrecedingClients()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onError(II)V
    .locals 1

    .line 1
    const-string p2, "Error during resetLockout: "

    .line 3
    const-string v0, "FingerprintResetLockoutClient"

    .line 5
    invoke-static {p1, p2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 14
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->startHalOperation()V

    .line 7
    return-void
.end method

.method public final startHalOperation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onLockoutCleared()V

    .line 16
    :cond_0
    return-void
.end method

.method public final unableToStart()V
    .locals 0

    .line 1
    return-void
.end method
