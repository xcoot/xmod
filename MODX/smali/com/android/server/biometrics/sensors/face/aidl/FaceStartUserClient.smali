.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;
.super Lcom/android/server/biometrics/sensors/StartUserClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;)V
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
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;->mSessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 19
    return-void
.end method


# virtual methods
.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;->startHalOperation()V

    .line 7
    return-void
.end method

.method public final startHalOperation()V
    .locals 7

    .line 1
    const-string v0, "FaceStartUserClient"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 7
    move-result-object v2

    .line 8
    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 10
    iput v3, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 12
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 22
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;->mSessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 28
    iput-object v3, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 30
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 32
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/hardware/biometrics/face/IFace;

    .line 38
    invoke-interface {v2}, Landroid/hardware/biometrics/face/IFace;->getInterfaceVersion()I

    .line 41
    move-result v2

    .line 42
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 45
    move-result-object v3

    .line 46
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 48
    if-eqz v3, :cond_0

    .line 50
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 53
    move-result-object v3

    .line 54
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 56
    invoke-interface {v3}, Landroid/hardware/biometrics/face/ISession;->asBinder()Landroid/os/IBinder;

    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 63
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/StartUserClient;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    .line 65
    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 67
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 70
    move-result-object v5

    .line 71
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 73
    invoke-interface {v3, v4, v2, v5}, Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;->onUserStarted(IILjava/lang/Object;)V

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    goto :goto_2

    .line 79
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonEnumerateUserInternal()V

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 89
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroid/hardware/biometrics/face/IFace;

    .line 95
    invoke-interface {v2}, Landroid/hardware/biometrics/face/IFace;->getInterfaceVersion()I

    .line 98
    move-result v3

    .line 99
    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 101
    iget v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 103
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;->mSessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 105
    invoke-interface {v2, v4, v5, v6}, Landroid/hardware/biometrics/face/IFace;->createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;

    .line 108
    move-result-object v2

    .line 109
    if-nez v2, :cond_2

    .line 111
    const-string/jumbo v2, "createSession() is null"

    .line 114
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v2, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 124
    return-void

    .line 125
    :cond_2
    invoke-interface {v2}, Landroid/hardware/biometrics/face/ISession;->asBinder()Landroid/os/IBinder;

    .line 128
    move-result-object v4

    .line 129
    invoke-static {v4}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 132
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/StartUserClient;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    .line 134
    iget v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 136
    invoke-interface {v4, v5, v3, v2}, Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;->onUserStarted(IILjava/lang/Object;)V

    .line 139
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 142
    move-result-object v2

    .line 143
    const/4 v3, 0x1

    .line 144
    invoke-interface {v2, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_3

    .line 148
    :goto_2
    const-string v3, "Remote exception"

    .line 150
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 160
    :goto_3
    return-void
.end method

.method public final unableToStart()V
    .locals 0

    .line 1
    return-void
.end method
