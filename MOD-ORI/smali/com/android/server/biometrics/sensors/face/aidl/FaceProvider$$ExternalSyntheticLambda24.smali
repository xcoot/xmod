.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$5:Landroid/hardware/face/FaceAuthenticateOptions;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$2:Landroid/os/IBinder;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$3:J

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$5:Landroid/hardware/face/FaceAuthenticateOptions;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$6:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$1:I

    .line 6
    .line 7
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$2:Landroid/os/IBinder;

    .line 8
    .line 9
    iget-wide v7, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$3:J

    .line 10
    .line 11
    iget-object v9, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 12
    .line 13
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$5:Landroid/hardware/face/FaceAuthenticateOptions;

    .line 14
    .line 15
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;->f$6:I

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    .line 21
    .line 22
    .line 23
    move-result v14

    .line 24
    new-instance v15, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    .line 25
    .line 26
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 37
    .line 38
    iget-object v5, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    iget-object v11, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 42
    .line 43
    invoke-virtual {v1, v3, v0, v11}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    iget-object v12, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 48
    .line 49
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 50
    .line 51
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    .line 52
    .line 53
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    .line 58
    .line 59
    move-object v3, v15

    .line 60
    move-object/from16 v16, v15

    .line 61
    .line 62
    move-object v15, v0

    .line 63
    invoke-direct/range {v3 .. v15}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;ZLandroid/hardware/SensorPrivacyManager;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 67
    .line 68
    move-object/from16 v3, v16

    .line 69
    .line 70
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/HalClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
