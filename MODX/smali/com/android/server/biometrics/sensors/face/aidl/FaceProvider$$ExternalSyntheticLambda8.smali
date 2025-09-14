.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:Landroid/hardware/face/IFaceServiceReceiver;

.field public final synthetic f$5:[I

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$3:Landroid/os/IBinder;

    .line 12
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    .line 14
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$5:[I

    .line 16
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$6:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 3
    iget v14, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$1:I

    .line 5
    iget v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$2:I

    .line 7
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$3:Landroid/os/IBinder;

    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    .line 11
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$5:[I

    .line 13
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$6:Ljava/lang/String;

    .line 15
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 17
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {p0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 25
    invoke-virtual {p0, v7}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->scheduleFaceUpdateActiveUserClient(I)V

    .line 28
    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;

    .line 30
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 32
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 34
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 42
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 44
    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 46
    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {v14, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 53
    move-result-object v9

    .line 54
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 56
    const/4 v10, 0x4

    .line 57
    const/4 v11, 0x0

    .line 58
    invoke-virtual {v0, v10, v11, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 61
    move-result-object v11

    .line 62
    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 64
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 66
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 74
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 76
    move-object v1, p0

    .line 77
    move v10, v14

    .line 78
    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 81
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 83
    invoke-virtual {v0, v14, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/HalClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 86
    return-void
.end method
