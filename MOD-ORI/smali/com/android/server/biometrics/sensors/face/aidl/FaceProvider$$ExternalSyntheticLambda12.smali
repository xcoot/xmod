.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:I

.field public final synthetic f$10:Z

.field public final synthetic f$11:Landroid/hardware/face/FaceEnrollOptions;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:Landroid/hardware/face/IFaceServiceReceiver;

.field public final synthetic f$5:[B

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:J

.field public final synthetic f$8:[I

.field public final synthetic f$9:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$3:Landroid/os/IBinder;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$5:[B

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    iput-wide p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$7:J

    .line 19
    .line 20
    iput-object p10, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$8:[I

    .line 21
    .line 22
    iput-object p11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$9:Landroid/view/Surface;

    .line 23
    .line 24
    iput-boolean p12, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$10:Z

    .line 25
    .line 26
    iput-object p13, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$11:Landroid/hardware/face/FaceEnrollOptions;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 4
    .line 5
    iget v15, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$1:I

    .line 6
    .line 7
    iget v7, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$2:I

    .line 8
    .line 9
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$3:Landroid/os/IBinder;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    .line 12
    .line 13
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$5:[B

    .line 14
    .line 15
    iget-object v9, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$6:Ljava/lang/String;

    .line 16
    .line 17
    iget-wide v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$7:J

    .line 18
    .line 19
    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$8:[I

    .line 20
    .line 21
    iget-object v14, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$9:Landroid/view/Surface;

    .line 22
    .line 23
    iget-boolean v12, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$10:Z

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;->f$11:Landroid/hardware/face/FaceEnrollOptions;

    .line 26
    .line 27
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 36
    .line 37
    invoke-virtual {v3, v7}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->scheduleFaceUpdateActiveUserClient(I)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 49
    .line 50
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 51
    .line 52
    iget v6, v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 53
    .line 54
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 55
    .line 56
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    move/from16 v18, v6

    .line 59
    .line 60
    iget-object v6, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 61
    .line 62
    iget-object v6, v6, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 69
    .line 70
    iget-object v6, v6, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 71
    .line 72
    move/from16 v19, v12

    .line 73
    .line 74
    new-instance v12, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 75
    .line 76
    invoke-direct {v12, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-static {v15, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 81
    .line 82
    .line 83
    move-result-object v20

    .line 84
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 85
    .line 86
    move/from16 v22, v15

    .line 87
    .line 88
    const/4 v15, 0x1

    .line 89
    move-object/from16 p0, v0

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {v1, v15, v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 93
    .line 94
    .line 95
    move-result-object v16

    .line 96
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 97
    .line 98
    move-object/from16 v17, v0

    .line 99
    .line 100
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 101
    .line 102
    move-object/from16 v21, v0

    .line 103
    .line 104
    move-object v2, v4

    .line 105
    move-object v0, v4

    .line 106
    move-object v4, v6

    .line 107
    move-object v6, v12

    .line 108
    move-object/from16 v12, v20

    .line 109
    .line 110
    move/from16 v23, v22

    .line 111
    .line 112
    move/from16 v15, v23

    .line 113
    .line 114
    move-object/from16 v20, p0

    .line 115
    .line 116
    invoke-direct/range {v2 .. v21}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/face/FaceUtils;[ILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZLandroid/hardware/face/FaceEnrollOptions;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 120
    .line 121
    move/from16 v3, v23

    .line 122
    .line 123
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/HalClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method
