.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;
.super Lcom/android/server/biometrics/sensors/RevokeChallengeClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChallenge:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/RevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 4
    iput-wide p9, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    .line 6
    return-void
.end method


# virtual methods
.method public final startHalOperation()V
    .locals 7

    .line 1
    const-string v0, "FaceRevokeChallengeClient"

    .line 3
    const-string/jumbo v1, "revokeChallenge FINISH ("

    .line 6
    :try_start_0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 16
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 19
    move-result-object v1

    .line 20
    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonRevokeChallenge(J)V

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide v2

    .line 32
    const-string/jumbo v4, "revokeChallenge START"

    .line 35
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 40
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 46
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 49
    move-result-object v4

    .line 50
    iget-wide v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    .line 52
    invoke-interface {v4, v5, v6}, Landroid/hardware/biometrics/face/ISession;->revokeChallenge(J)V

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    move-result-wide v5

    .line 64
    sub-long/2addr v5, v2

    .line 65
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v1, "ms)"

    .line 71
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_1

    .line 82
    :goto_0
    const-string v2, "Unable to revokeChallenge"

    .line 84
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 93
    :goto_1
    return-void
.end method
