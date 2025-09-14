.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public final synthetic f$5:I

.field public final synthetic f$6:[B

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:I

.field public final synthetic f$9:Landroid/hardware/fingerprint/FingerprintEnrollOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;I[BLjava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$2:Landroid/os/IBinder;

    .line 10
    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$3:J

    .line 12
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$4:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 14
    iput p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$5:I

    .line 16
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$6:[B

    .line 18
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$7:Ljava/lang/String;

    .line 20
    iput p10, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$8:I

    .line 22
    iput-object p11, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$9:Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 5
    iget v15, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$1:I

    .line 7
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$2:Landroid/os/IBinder;

    .line 9
    iget-wide v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$3:J

    .line 11
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$4:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 13
    iget v9, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$5:I

    .line 15
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$6:[B

    .line 17
    iget-object v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$7:Ljava/lang/String;

    .line 19
    iget v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$8:I

    .line 21
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$9:Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    .line 23
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 25
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 33
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 35
    iget v13, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 37
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    .line 39
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 41
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 43
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 51
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 53
    new-instance v8, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 55
    invoke-direct {v8, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 58
    invoke-static {v15}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 61
    move-result-object v16

    .line 62
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 64
    move/from16 v18, v13

    .line 66
    const/4 v13, 0x1

    .line 67
    move/from16 v19, v14

    .line 69
    const/4 v14, 0x0

    .line 70
    invoke-virtual {v1, v13, v14, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger$1(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 73
    move-result-object v14

    .line 74
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 76
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 78
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 80
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 86
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 88
    move-object/from16 v20, v2

    .line 90
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 92
    move-object/from16 v17, v2

    .line 94
    move-object v2, v12

    .line 95
    move-object/from16 v21, v12

    .line 97
    move-object/from16 v12, v16

    .line 99
    move-object/from16 v16, v13

    .line 101
    move v13, v15

    .line 102
    move/from16 v22, v15

    .line 104
    move-object/from16 v15, v16

    .line 106
    move-object/from16 v16, v20

    .line 108
    move-object/from16 v20, v0

    .line 110
    invoke-direct/range {v2 .. v20}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;IILandroid/hardware/fingerprint/FingerprintEnrollOptions;)V

    .line 113
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;

    .line 115
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    .line 118
    new-instance v2, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 120
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 122
    filled-new-array {v3, v0}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 125
    move-result-object v0

    .line 126
    invoke-direct {v2, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 129
    move-object/from16 v3, v21

    .line 131
    move/from16 v0, v22

    .line 133
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 136
    return-void
.end method
