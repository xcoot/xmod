.class public final Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;
.super Lcom/android/server/biometrics/sensors/face/aidl/Sensor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public mCurrentUserId:I

.field public mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

.field public final mFaceProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final mInternalCleanupAndGetFeatureRunnable:Ljava/lang/Runnable;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

.field public mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

.field public final mUserStartedCallback:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/face/SensorProps;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/lang/Runnable;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p6

    .line 8
    move v6, p7

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/face/SensorProps;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 10
    .line 11
    .line 12
    const/16 v0, -0x2710

    .line 13
    .line 14
    iput v0, v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    .line 22
    .line 23
    move-object/from16 v0, p8

    .line 24
    .line 25
    iput-object v0, v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mInternalCleanupAndGetFeatureRunnable:Ljava/lang/Runnable;

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    iput-object v0, v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mFaceProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 29
    .line 30
    move-object v0, p5

    .line 31
    iput-object v0, v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 32
    .line 33
    move-object/from16 v0, p9

    .line 34
    .line 35
    iput-object v0, v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 36
    .line 37
    move-object/from16 v0, p10

    .line 38
    .line 39
    iput-object v0, v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 40
    .line 41
    if-nez p11, :cond_0

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object/from16 v0, p11

    .line 50
    .line 51
    :goto_0
    iput-object v0, v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final getAidlResponseHandler()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 8
    .line 9
    iget v3, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 10
    .line 11
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    .line 14
    .line 15
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 16
    .line 17
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 18
    .line 19
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 20
    .line 21
    move-object v0, v9

    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V

    .line 23
    .line 24
    .line 25
    return-object v9
.end method

.method public final getIBiometricsFace()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mFaceProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isTpaSehTestHalEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 16
    .line 17
    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 18
    .line 19
    sget-object v2, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 20
    .line 21
    const-class v2, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    sget-object v3, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 29
    .line 30
    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    monitor-exit v2

    .line 41
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getAidlResponseHandler()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :goto_1
    monitor-exit v2

    .line 55
    throw p0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mFaceProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 57
    .line 58
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 67
    .line 68
    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 69
    .line 70
    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getAidlResponseHandler()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_3
    const-string v0, "HidlToAidlSensorAdapter"

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "Face daemon was null, reconnecting, current operation: "

    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :try_start_1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    invoke-static {}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->getService()Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :catch_0
    move-exception v0

    .line 128
    goto :goto_2

    .line 129
    :catch_1
    move-exception v0

    .line 130
    goto :goto_3

    .line 131
    :cond_4
    invoke-static {}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;->getService()Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :goto_2
    const-string v1, "HidlToAidlSensorAdapter"

    .line 139
    .line 140
    const-string v2, "Failed to get face HAL"

    .line 141
    .line 142
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :goto_3
    const-string v1, "HidlToAidlSensorAdapter"

    .line 147
    .line 148
    const-string v2, "NoSuchElementException"

    .line 149
    .line 150
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    :goto_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 154
    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    const-string p0, "HidlToAidlSensorAdapter"

    .line 158
    .line 159
    const-string v0, "Face HAL not available"

    .line 160
    .line 161
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    const/4 p0, 0x0

    .line 165
    return-object p0

    .line 166
    :cond_5
    invoke-interface {v0}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const-wide/16 v1, 0x0

    .line 171
    .line 172
    invoke-interface {v0, p0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 173
    .line 174
    .line 175
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;

    .line 176
    .line 177
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mHandler:Landroid/os/Handler;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mInternalCleanupAndGetFeatureRunnable:Ljava/lang/Runnable;

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 191
    .line 192
    return-object p0
.end method

.method public final getLockoutModeForUser(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    .line 4
    .line 5
    return p0
.end method

.method public final getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getAidlResponseHandler()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 28
    .line 29
    return-object v0
.end method

.method public handleUserChanged(I)V
    .locals 2

    .line 1
    const-string v0, "User changed. Current user for face sensor is "

    .line 2
    .line 3
    const-string v1, "HidlToAidlSensorAdapter"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 12
    .line 13
    return-void
.end method

.method public final isHardwareDetected(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getIBiometricsFace()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final scheduleFaceUpdateActiveUserClient(I)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    iget-object v12, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 3
    .line 4
    new-instance v13, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {v3, p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;I)V

    .line 12
    .line 13
    .line 14
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 17
    .line 18
    iget v6, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 19
    .line 20
    invoke-static {v2}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 25
    .line 26
    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 27
    .line 28
    const/4 v14, 0x0

    .line 29
    invoke-static {v0, v14}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    move/from16 v11, p1

    .line 36
    .line 37
    invoke-virtual {v0, v5, v11}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    xor-int/lit8 v9, v0, 0x1

    .line 48
    .line 49
    iget-object v10, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 50
    .line 51
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 52
    .line 53
    move-object v0, v13

    .line 54
    move-object v1, p0

    .line 55
    move/from16 v5, p1

    .line 56
    .line 57
    move/from16 v11, p1

    .line 58
    .line 59
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v12, v13, v14}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final serviceDied(J)V
    .locals 0

    .line 1
    const-string p1, "HidlToAidlSensorAdapter"

    .line 2
    .line 3
    const-string p2, "Face HAL died."

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 10
    .line 11
    return-void
.end method
