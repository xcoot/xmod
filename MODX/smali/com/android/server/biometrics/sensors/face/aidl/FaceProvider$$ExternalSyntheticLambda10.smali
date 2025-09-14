.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:Landroid/hardware/face/FaceAuthenticateOptions;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:J

.field public final synthetic f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$6:J

.field public final synthetic f$7:Z

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/hardware/face/FaceAuthenticateOptions;ZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$1:Landroid/hardware/face/FaceAuthenticateOptions;

    .line 8
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$2:Z

    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$3:Landroid/os/IBinder;

    .line 12
    iput-wide p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$4:J

    .line 14
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 16
    iput-wide p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$6:J

    .line 18
    iput-boolean p10, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$7:Z

    .line 20
    iput p11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$8:I

    .line 22
    iput p12, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$9:I

    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 5
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$1:Landroid/hardware/face/FaceAuthenticateOptions;

    .line 7
    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$2:Z

    .line 9
    iget-object v11, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$3:Landroid/os/IBinder;

    .line 11
    iget-wide v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$4:J

    .line 13
    iget-object v14, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 15
    iget-wide v12, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$6:J

    .line 17
    iget-boolean v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$7:Z

    .line 19
    iget v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$8:I

    .line 21
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$9:I

    .line 23
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {v1}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 29
    move-result v15

    .line 30
    invoke-virtual {v1}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    .line 33
    move-result v10

    .line 34
    sget-object v8, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mBundle:Landroid/os/Bundle;

    .line 36
    const/4 v9, 0x0

    .line 37
    if-nez v8, :cond_0

    .line 39
    move v8, v9

    .line 40
    move-wide/from16 v16, v12

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-wide/from16 v16, v12

    .line 45
    const-string/jumbo v12, "sem_privileged_attr"

    .line 48
    invoke-virtual {v8, v12, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 51
    move-result v8

    .line 52
    :goto_0
    and-int/lit8 v8, v8, 0x4

    .line 54
    const/4 v12, 0x1

    .line 55
    if-eqz v8, :cond_1

    .line 57
    move v9, v12

    .line 58
    :cond_1
    or-int v26, v2, v9

    .line 60
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    .line 63
    move-result v23

    .line 64
    iget-object v2, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 66
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 74
    invoke-virtual {v2, v15}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->scheduleFaceUpdateActiveUserClient(I)V

    .line 77
    iget-object v2, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 79
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 87
    invoke-virtual {v2, v12}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 90
    move-result-object v25

    .line 91
    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 93
    iget-object v9, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 95
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 97
    iget-object v8, v8, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 99
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v8

    .line 103
    check-cast v8, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 105
    iget-object v12, v8, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 107
    const/4 v8, 0x2

    .line 108
    iget-object v13, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 110
    invoke-virtual {v7, v8, v0, v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 113
    move-result-object v21

    .line 114
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 116
    iget-object v13, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 118
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    .line 121
    move-result v28

    .line 122
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 124
    move-object/from16 v18, v8

    .line 126
    const-class v8, Landroid/hardware/SensorPrivacyManager;

    .line 128
    invoke-virtual {v9, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    move-result-object v8

    .line 132
    move-object/from16 v27, v8

    .line 134
    check-cast v27, Landroid/hardware/SensorPrivacyManager;

    .line 136
    const/16 v20, 0x0

    .line 138
    move-object/from16 v29, v18

    .line 140
    move-object v8, v2

    .line 141
    move/from16 p0, v10

    .line 143
    move-object v10, v12

    .line 144
    move-object/from16 v24, v13

    .line 146
    move-wide v12, v4

    .line 147
    move/from16 v30, v15

    .line 149
    move-wide/from16 v15, v16

    .line 151
    move/from16 v17, v3

    .line 153
    move-object/from16 v18, v1

    .line 155
    move/from16 v19, v6

    .line 157
    move-object/from16 v22, v0

    .line 159
    invoke-direct/range {v8 .. v29}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/face/FaceAuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutTracker;ZLandroid/hardware/SensorPrivacyManager;ILcom/android/server/biometrics/sensors/AuthenticationStateListeners;)V

    .line 162
    new-instance v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;

    .line 164
    move-object v0, v8

    .line 165
    move-object v1, v7

    .line 166
    move-object v9, v2

    .line 167
    move/from16 v2, v30

    .line 169
    move/from16 v3, p0

    .line 171
    move-object v6, v9

    .line 172
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    .line 175
    move/from16 v0, p0

    .line 177
    invoke-virtual {v7, v0, v9, v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/HalClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 180
    return-void
.end method
