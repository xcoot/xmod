.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;
.super Lcom/android/server/biometrics/sensors/StartUserClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p5

    .line 7
    move-object v6, p6

    .line 8
    move-object/from16 v7, p7

    .line 10
    move-object/from16 v8, p9

    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/StartUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    .line 15
    move-object/from16 v1, p8

    .line 17
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->mSessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 19
    return-void
.end method


# virtual methods
.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->startHalOperation()V

    .line 7
    return-void
.end method

.method public final startHalOperation()V
    .locals 7

    .line 1
    const-string v0, "FingerprintStartUserClient"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 6
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 12
    invoke-interface {v2}, Landroid/hardware/biometrics/fingerprint/IFingerprint;->getInterfaceVersion()I

    .line 15
    move-result v3

    .line 16
    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 18
    iget v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 20
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->mSessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 22
    invoke-interface {v2, v4, v5, v6}, Landroid/hardware/biometrics/fingerprint/IFingerprint;->createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;

    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Landroid/hardware/biometrics/fingerprint/ISession;->asBinder()Landroid/os/IBinder;

    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 33
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/StartUserClient;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    .line 35
    iget v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 37
    invoke-interface {v4, v5, v3, v2}, Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;->onUserStarted(IILjava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-interface {v2, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception v2

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception v2

    .line 52
    goto :goto_1

    .line 53
    :goto_0
    const-string/jumbo v3, "np exception"

    .line 56
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 66
    goto :goto_2

    .line 67
    :goto_1
    const-string v3, "Remote exception"

    .line 69
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 79
    :goto_2
    return-void
.end method

.method public final unableToStart()V
    .locals 0

    .line 1
    return-void
.end method
