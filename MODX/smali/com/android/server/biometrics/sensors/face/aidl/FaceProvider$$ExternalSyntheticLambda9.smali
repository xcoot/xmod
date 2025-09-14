.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$3:Landroid/os/IBinder;

    .line 12
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 14
    iput p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$5:I

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 3
    iget v12, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$1:I

    .line 5
    iget v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$2:I

    .line 7
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$3:Landroid/os/IBinder;

    .line 9
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 11
    iget v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;->f$5:I

    .line 13
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 15
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {p0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 23
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->scheduleFaceUpdateActiveUserClient(I)V

    .line 26
    const/4 p0, 0x0

    .line 27
    invoke-static {v12, p0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 30
    move-result-object p0

    .line 31
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0, v1, v6}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    const-string v0, "Ignoring getFeature, no templates enrolled for user: "

    .line 49
    invoke-static {v6, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    .line 55
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 57
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 59
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 67
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 69
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 74
    move-result-object v7

    .line 75
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 80
    move-result-object v9

    .line 81
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 83
    move-object v1, p0

    .line 84
    move v8, v12

    .line 85
    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;I)V

    .line 88
    invoke-virtual {v0, v12, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 91
    :goto_0
    return-void
.end method
