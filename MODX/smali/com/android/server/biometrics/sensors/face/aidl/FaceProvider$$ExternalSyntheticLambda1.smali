.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;->f$2:I

    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;->f$3:Z

    .line 13
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 15
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 3
    iget v12, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;->f$1:I

    .line 5
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;->f$2:I

    .line 7
    iget-boolean v13, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;->f$3:Z

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 11
    iget-object v0, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 13
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 21
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->scheduleFaceUpdateActiveUserClient(I)V

    .line 24
    new-instance v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$4;

    .line 26
    iget-object v2, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 28
    iget-object v0, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 30
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 38
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 40
    iget-object v0, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    iget-object v0, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 48
    const/4 v1, 0x3

    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-virtual {v11, v1, v6, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 53
    move-result-object v7

    .line 54
    iget-object v8, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-static {v12, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 60
    move-result-object v9

    .line 61
    iget-object v0, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 63
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 71
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 73
    move-object v0, v14

    .line 74
    move-object v1, v11

    .line 75
    move v6, v12

    .line 76
    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/face/FaceUtils;Ljava/util/Map;)V

    .line 79
    if-eqz v13, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, v14, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mFavorHalEnrollments:Z

    .line 84
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 86
    iget-object v1, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 88
    filled-new-array {p0, v1}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 91
    move-result-object p0

    .line 92
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 95
    invoke-virtual {v11, v12, v14, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/HalClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 98
    return-void
.end method
