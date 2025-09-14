.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;
.super Lcom/android/server/biometrics/sensors/RevokeChallengeClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChallenge:J

.field public final mRevokeWatchdog:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/RevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 2
    .line 3
    .line 4
    iput-wide p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;->mChallenge:J

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;->mRevokeWatchdog:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final startHalOperation()V
    .locals 4

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
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 10
    .line 11
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;->mChallenge:J

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISession;->revokeChallenge(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;->getHandler()Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;->mRevokeWatchdog:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const-wide/16 v2, 0x3e8

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "FingerprintRevokeChallengeClient"

    .line 30
    .line 31
    const-string v2, "Unable to revokeChallenge"

    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
