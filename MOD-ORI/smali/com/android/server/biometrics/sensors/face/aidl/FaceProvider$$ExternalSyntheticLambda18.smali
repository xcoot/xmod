.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;
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

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IZ[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$3:Landroid/os/IBinder;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$5:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$6:Z

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$7:[B

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 2
    .line 3
    iget v14, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$1:I

    .line 4
    .line 5
    iget v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$2:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$3:Landroid/os/IBinder;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    .line 10
    .line 11
    iget v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$5:I

    .line 12
    .line 13
    iget-boolean v12, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$6:Z

    .line 14
    .line 15
    iget-object v13, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;->f$7:[B

    .line 16
    .line 17
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 26
    .line 27
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->scheduleFaceUpdateActiveUserClient(I)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    invoke-static {v14, p0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p0, v2, v6}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "Ignoring setFeature, no templates enrolled for user: "

    .line 52
    .line 53
    invoke-static {v6, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 72
    .line 73
    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 74
    .line 75
    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 91
    .line 92
    move-object v1, p0

    .line 93
    move v8, v14

    .line 94
    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[B)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v14, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method
