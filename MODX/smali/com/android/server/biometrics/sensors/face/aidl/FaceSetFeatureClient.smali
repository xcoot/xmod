.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# instance fields
.field public final mEnabled:Z

.field public final mFeature:I

.field public final mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[B)V
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v11, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move-object/from16 v4, p4

    .line 11
    move/from16 v5, p5

    .line 13
    move-object/from16 v6, p6

    .line 15
    move/from16 v8, p7

    .line 17
    move-object/from16 v9, p8

    .line 19
    move-object/from16 v10, p9

    .line 21
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 24
    move/from16 v0, p10

    .line 26
    iput v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    .line 28
    move/from16 v0, p11

    .line 30
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mEnabled:Z

    .line 32
    invoke-static/range {p12 .. p12}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 35
    move-result-object v0

    .line 36
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 38
    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 3
    return p0
.end method

.method public final onError(II)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 4
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    .line 6
    iget-object p2, p2, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 8
    if-eqz p2, :cond_0

    .line 10
    invoke-interface {p2, p1, v0}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureSet(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p2

    .line 15
    const-string v0, "FaceSetFeatureClient"

    .line 17
    const-string v1, "Remote exception"

    .line 19
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 24
    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 27
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->startHalOperation()V

    .line 7
    return-void
.end method

.method public final startHalOperation()V
    .locals 6

    .line 1
    const-string v0, "FaceSetFeatureClient"

    .line 3
    const-string/jumbo v1, "setFeature FINISH f="

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 8
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 14
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 20
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    .line 22
    invoke-static {v4}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertFrameworkToAidlFeature(I)B

    .line 25
    move-result v4

    .line 26
    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mEnabled:Z

    .line 28
    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/biometrics/face/ISession;->setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", enabled="

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mEnabled:Z

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    const-string v3, "Unable to set feature: "

    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, " to enabled: "

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mEnabled:Z

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 95
    :goto_0
    return-void
.end method

.method public final unableToStart()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    .line 5
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1, p0}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureSet(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "FaceSetFeatureClient"

    .line 17
    const-string v1, "Unable to send error"

    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_0
    :goto_0
    return-void
.end method
