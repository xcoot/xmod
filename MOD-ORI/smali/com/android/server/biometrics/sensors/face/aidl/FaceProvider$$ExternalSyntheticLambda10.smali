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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$1:Landroid/hardware/face/FaceAuthenticateOptions;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$3:Landroid/os/IBinder;

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$4:J

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 15
    .line 16
    iput-wide p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$6:J

    .line 17
    .line 18
    iput-boolean p10, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$7:Z

    .line 19
    .line 20
    iput p11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$8:I

    .line 21
    .line 22
    iput p12, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$9:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$1:Landroid/hardware/face/FaceAuthenticateOptions;

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$2:Z

    .line 8
    .line 9
    iget-object v11, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$3:Landroid/os/IBinder;

    .line 10
    .line 11
    iget-wide v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$4:J

    .line 12
    .line 13
    iget-object v14, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 14
    .line 15
    iget-wide v12, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$6:J

    .line 16
    .line 17
    iget-boolean v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$7:Z

    .line 18
    .line 19
    iget v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$8:I

    .line 20
    .line 21
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;->f$9:I

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 27
    .line 28
    .line 29
    move-result v15

    .line 30
    invoke-virtual {v1}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    sget-object v8, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mBundle:Landroid/os/Bundle;

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    if-nez v8, :cond_0

    .line 38
    .line 39
    move v8, v9

    .line 40
    move-wide/from16 v16, v12

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-wide/from16 v16, v12

    .line 44
    .line 45
    const-string/jumbo v12, "sem_privileged_attr"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v12, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    :goto_0
    and-int/lit8 v8, v8, 0x4

    .line 53
    .line 54
    const/4 v12, 0x1

    .line 55
    if-eqz v8, :cond_1

    .line 56
    .line 57
    move v9, v12

    .line 58
    :cond_1
    or-int v26, v2, v9

    .line 59
    .line 60
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    .line 61
    .line 62
    .line 63
    move-result v23

    .line 64
    iget-object v2, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 73
    .line 74
    invoke-virtual {v2, v15}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->scheduleFaceUpdateActiveUserClient(I)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 86
    .line 87
    invoke-virtual {v2, v12}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 88
    .line 89
    .line 90
    move-result-object v25

    .line 91
    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 92
    .line 93
    iget-object v9, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 96
    .line 97
    iget-object v8, v8, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    check-cast v8, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 104
    .line 105
    iget-object v12, v8, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 106
    .line 107
    const/4 v8, 0x2

    .line 108
    iget-object v13, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 109
    .line 110
    invoke-virtual {v7, v8, v0, v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 111
    .line 112
    .line 113
    move-result-object v21

    .line 114
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 115
    .line 116
    iget-object v13, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 117
    .line 118
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    .line 119
    .line 120
    .line 121
    move-result v28

    .line 122
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 123
    .line 124
    move-object/from16 v18, v8

    .line 125
    .line 126
    const-class v8, Landroid/hardware/SensorPrivacyManager;

    .line 127
    .line 128
    invoke-virtual {v9, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    move-object/from16 v27, v8

    .line 133
    .line 134
    check-cast v27, Landroid/hardware/SensorPrivacyManager;

    .line 135
    .line 136
    const/16 v20, 0x0

    .line 137
    .line 138
    move-object/from16 v29, v18

    .line 139
    .line 140
    move-object v8, v2

    .line 141
    move/from16 p0, v10

    .line 142
    .line 143
    move-object v10, v12

    .line 144
    move-object/from16 v24, v13

    .line 145
    .line 146
    move-wide v12, v4

    .line 147
    move/from16 v30, v15

    .line 148
    .line 149
    move-wide/from16 v15, v16

    .line 150
    .line 151
    move/from16 v17, v3

    .line 152
    .line 153
    move-object/from16 v18, v1

    .line 154
    .line 155
    move/from16 v19, v6

    .line 156
    .line 157
    move-object/from16 v22, v0

    .line 158
    .line 159
    invoke-direct/range {v8 .. v29}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/face/FaceAuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutTracker;ZLandroid/hardware/SensorPrivacyManager;ILcom/android/server/biometrics/sensors/AuthenticationStateListeners;)V

    .line 160
    .line 161
    .line 162
    new-instance v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;

    .line 163
    .line 164
    move-object v0, v8

    .line 165
    move-object v1, v7

    .line 166
    move-object v9, v2

    .line 167
    move/from16 v2, v30

    .line 168
    .line 169
    move/from16 v3, p0

    .line 170
    .line 171
    move-object v6, v9

    .line 172
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    .line 173
    .line 174
    .line 175
    move/from16 v0, p0

    .line 176
    .line 177
    invoke-virtual {v7, v0, v9, v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/HalClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method
