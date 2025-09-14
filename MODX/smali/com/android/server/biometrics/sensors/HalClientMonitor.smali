.class public abstract Lcom/android/server/biometrics/sensors/HalClientMonitor;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLazyDaemon:Ljava/util/function/Supplier;

.field public final mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V
    .locals 12

    .line 1
    move-object v10, p0

    .line 2
    move-object/from16 v11, p4

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p3

    .line 7
    move-object/from16 v3, p4

    .line 9
    move/from16 v4, p5

    .line 11
    move-object/from16 v5, p6

    .line 13
    move/from16 v6, p7

    .line 15
    move/from16 v7, p8

    .line 17
    move-object/from16 v8, p9

    .line 19
    move-object/from16 v9, p10

    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 24
    move-object v0, p2

    .line 25
    iput-object v0, v10, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz v11, :cond_1

    .line 30
    iget-object v1, v11, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 32
    if-eqz v1, :cond_0

    .line 34
    const/16 v0, 0x8

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, v11, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 39
    if-eqz v1, :cond_1

    .line 41
    const/4 v0, 0x2

    .line 42
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/biometrics/log/OperationContextExt;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 47
    move-result v2

    .line 48
    new-instance v3, Landroid/hardware/biometrics/common/OperationContext;

    .line 50
    invoke-direct {v3}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    .line 53
    move/from16 v4, p11

    .line 55
    invoke-direct {v1, v3, v2, v0, v4}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V

    .line 58
    iput-object v1, v10, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 60
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 7
    return-void
.end method

.method public final getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isCryptoOperation()Z

    .line 8
    move-result p0

    .line 9
    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {v1, v0, p0}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 17
    return-object v1
.end method

.method public final isBiometricPrompt()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public abstract startHalOperation()V
.end method

.method public abstract unableToStart()V
.end method

.method public final unsubscribeBiometricContext()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 5
    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 7
    iget-object v0, v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    .line 9
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method
