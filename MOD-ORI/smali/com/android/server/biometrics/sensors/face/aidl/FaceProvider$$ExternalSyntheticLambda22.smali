.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;
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

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$3:Landroid/os/IBinder;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 2
    .line 3
    iget v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$1:I

    .line 4
    .line 5
    iget v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$2:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$3:Landroid/os/IBinder;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    .line 10
    .line 11
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 22
    .line 23
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->scheduleFaceUpdateActiveUserClient(I)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 41
    .line 42
    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 43
    .line 44
    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    invoke-virtual {v0, v8, v8, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 55
    .line 56
    move-object v1, p0

    .line 57
    move v8, v11

    .line 58
    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v11, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
