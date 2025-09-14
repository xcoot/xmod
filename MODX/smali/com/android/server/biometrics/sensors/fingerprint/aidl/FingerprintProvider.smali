.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# instance fields
.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

.field public final mContext:Landroid/content/Context;

.field public mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;

.field public mDaemonForHidl:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

.field final mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

.field public final mHalInstanceName:Ljava/lang/String;

.field public mHalInstanceNameCurrent:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mInternalCleanupClientCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

.field public final mIsForHidl:Z

.field public mIsHalStarted:Z

.field public final mLifecycleListeners:Ljava/util/ArrayList;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public mPowerSinglePressedTimeStamp:J

.field public final mProviderEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;

.field public final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field public mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

.field public final mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

.field public mTestHalEnabled:Z

.field public mTpaHalModeEnabled:Z

.field public mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/biometrics/fingerprint/IFingerprint;Lcom/android/server/biometrics/BiometricHandlerProvider;ZZ)V
    .locals 24

    .line 1
    move-object/from16 v13, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v14, p4

    .line 7
    move-object/from16 v0, p5

    .line 9
    move-object/from16 v2, p8

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 16
    const-wide/16 v4, 0x0

    .line 18
    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 21
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 30
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {v3, v13, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V

    .line 36
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mInternalCleanupClientCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    .line 38
    iput-object v1, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 40
    move-object/from16 v3, p2

    .line 42
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 44
    move-object/from16 v3, p3

    .line 46
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 48
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    .line 50
    new-instance v3, Lcom/android/server/biometrics/sensors/SensorList;

    .line 52
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 55
    move-result-object v4

    .line 56
    invoke-direct {v3, v4}, Lcom/android/server/biometrics/sensors/SensorList;-><init>(Landroid/app/IActivityManager;)V

    .line 59
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 61
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 64
    move-result-object v3

    .line 65
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 67
    move-object/from16 v3, p6

    .line 69
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 71
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 74
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    .line 76
    invoke-direct {v3, v13}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    .line 79
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    .line 81
    iput-object v2, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 83
    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 85
    iget-object v2, v2, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 87
    iput-object v2, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 89
    move-object/from16 v2, p9

    .line 91
    iput-object v2, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 93
    move/from16 v2, p12

    .line 95
    iput-boolean v2, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    .line 97
    move-object/from16 v2, p10

    .line 99
    iput-object v2, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 101
    const-string/jumbo v2, "defaultHIDL"

    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 107
    move-result v0

    .line 108
    const/4 v2, 0x1

    .line 109
    if-nez v0, :cond_1

    .line 111
    instance-of v0, v14, [Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;

    .line 113
    if-eqz v0, :cond_0

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 117
    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    move v0, v2

    .line 119
    :goto_1
    iput-boolean v0, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsForHidl:Z

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createSemFpProviderEx()Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;

    .line 124
    move-result-object v3

    .line 125
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mProviderEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createSemFpCallbackCenter()Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 130
    move-result-object v3

    .line 131
    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 133
    new-instance v3, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;

    .line 135
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;

    .line 137
    invoke-direct {v4, v13}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    .line 140
    invoke-direct {v3, v1, v2, v4}, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;-><init>(Landroid/content/Context;ILjava/util/function/Consumer;)V

    .line 143
    new-instance v3, Lcom/android/server/biometrics/BiometricDanglingReceiver;

    .line 145
    invoke-direct {v3, v1, v2}, Lcom/android/server/biometrics/BiometricDanglingReceiver;-><init>(Landroid/content/Context;I)V

    .line 148
    const-string v12, "FingerprintProvider"

    .line 150
    if-nez v14, :cond_2

    .line 152
    const-string/jumbo v0, "initSensors: props is null"

    .line 155
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    goto/16 :goto_e

    .line 160
    :cond_2
    const-string v9, "Added: "

    .line 162
    const/16 v16, -0x2710

    .line 164
    if-eqz v0, :cond_6

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    const-string v1, "Adding HIDL configs"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    array-length v0, v14

    .line 176
    const/4 v8, 0x0

    .line 177
    :goto_2
    if-ge v8, v0, :cond_5

    .line 179
    aget-object v5, v14, v8

    .line 181
    iget-object v1, v5, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 183
    iget v7, v1, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 185
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    .line 187
    iget-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 189
    iget-object v4, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 191
    iget-object v2, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 193
    iget-object v1, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 195
    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda10;

    .line 197
    const/4 v11, 0x2

    .line 198
    invoke-direct {v10, v13, v7, v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V

    .line 201
    move-object v11, v1

    .line 202
    check-cast v11, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 204
    iget-object v11, v11, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 206
    const/16 v17, 0x0

    .line 208
    const/16 v18, 0x0

    .line 210
    move-object/from16 v19, v1

    .line 212
    move-object v1, v6

    .line 213
    move-object/from16 v20, v2

    .line 215
    move-object/from16 v2, p0

    .line 217
    move-object v15, v6

    .line 218
    move-object/from16 v6, v20

    .line 220
    move/from16 v21, v7

    .line 222
    move-object/from16 v7, v19

    .line 224
    move/from16 v19, v8

    .line 226
    move/from16 v8, p11

    .line 228
    move-object/from16 v22, v9

    .line 230
    move-object v9, v10

    .line 231
    move-object v10, v11

    .line 232
    const/4 v14, 0x3

    .line 233
    move-object/from16 v11, v17

    .line 235
    move-object/from16 v23, v12

    .line 237
    move-object/from16 v12, v18

    .line 239
    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/SensorProps;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/lang/Runnable;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V

    .line 242
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    .line 244
    const/4 v2, 0x0

    .line 245
    invoke-direct {v1, v15, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;I)V

    .line 248
    iput-object v1, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 250
    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 252
    iget-object v2, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 254
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_3

    .line 260
    const/4 v5, 0x2

    .line 261
    goto :goto_3

    .line 262
    :cond_3
    move v5, v14

    .line 263
    :goto_3
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    .line 265
    const/4 v2, 0x1

    .line 266
    invoke-direct {v7, v15, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;I)V

    .line 269
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;

    .line 271
    invoke-direct {v8, v15}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    .line 274
    iget-object v4, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mHandler:Landroid/os/Handler;

    .line 276
    move-object v3, v1

    .line 277
    move-object/from16 v6, p7

    .line 279
    invoke-direct/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Ljava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V

    .line 282
    iput-object v1, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 284
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 286
    iget-object v2, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 288
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    .line 290
    invoke-direct {v3, v15}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 293
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda1;

    .line 295
    invoke-direct {v4, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 298
    iget-object v5, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mHandler:Landroid/os/Handler;

    .line 300
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;Ljava/util/function/Function;Landroid/os/Handler;)V

    .line 303
    iput-object v1, v15, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 305
    iget-object v1, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 307
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 310
    move-result-object v1

    .line 311
    if-nez v1, :cond_4

    .line 313
    move/from16 v1, v16

    .line 315
    goto :goto_4

    .line 316
    :cond_4
    iget-object v1, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 318
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 324
    iget v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    .line 326
    :goto_4
    iget-object v2, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 328
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$2;

    .line 330
    const/4 v4, 0x0

    .line 331
    move/from16 v5, v21

    .line 333
    invoke-direct {v3, v13, v5, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V

    .line 336
    invoke-virtual {v2, v5, v15, v1, v3}, Lcom/android/server/biometrics/sensors/SensorList;->addSensor(ILjava/lang/Object;ILandroid/app/SynchronousUserSwitchObserver;)V

    .line 339
    iget-object v1, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 341
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;

    .line 343
    const/4 v3, 0x0

    .line 344
    invoke-direct {v2, v3, v13, v15}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 347
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 353
    move-result-object v1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    .line 356
    move-object/from16 v7, v22

    .line 358
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    iget-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 363
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 365
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 368
    move-result-object v3

    .line 369
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 371
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    move-result-object v2

    .line 382
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    add-int/lit8 v8, v19, 0x1

    .line 387
    move-object/from16 v14, p4

    .line 389
    move-object v9, v7

    .line 390
    move-object/from16 v12, v23

    .line 392
    goto/16 :goto_2

    .line 394
    :cond_5
    move-object/from16 v23, v12

    .line 396
    goto/16 :goto_c

    .line 398
    :cond_6
    move-object v7, v9

    .line 399
    move-object/from16 v23, v12

    .line 401
    const/4 v14, 0x3

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 405
    move-result-object v0

    .line 406
    const-string v3, "Adding AIDL configs"

    .line 408
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v8, Ljava/util/ArrayList;

    .line 413
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 419
    move-result-object v0

    .line 420
    const v3, 0x1070161

    .line 423
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 426
    move-result-object v3

    .line 427
    const/4 v4, 0x0

    .line 428
    :goto_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    .line 431
    move-result v0

    .line 432
    if-ge v4, v0, :cond_a

    .line 434
    const/4 v0, -0x1

    .line 435
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 438
    move-result v0

    .line 439
    if-lez v0, :cond_8

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 444
    move-result-object v5

    .line 445
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 448
    move-result-object v0

    .line 449
    const/4 v5, 0x0

    .line 450
    if-nez v0, :cond_7

    .line 452
    const/4 v12, 0x2

    .line 453
    goto :goto_7

    .line 454
    :cond_7
    :try_start_0
    new-instance v6, Landroid/hardware/biometrics/SensorLocationInternal;

    .line 456
    const/4 v9, 0x0

    .line 457
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 460
    move-result-object v10

    .line 461
    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 464
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 465
    const/4 v12, 0x2

    .line 466
    :try_start_1
    invoke-virtual {v0, v12, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 469
    move-result v15

    .line 470
    invoke-virtual {v0, v14, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 473
    move-result v0

    .line 474
    invoke-direct {v6, v10, v11, v15, v0}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 477
    move-object v5, v6

    .line 478
    goto :goto_7

    .line 479
    :catch_0
    move-exception v0

    .line 480
    goto :goto_6

    .line 481
    :catch_1
    move-exception v0

    .line 482
    const/4 v12, 0x2

    .line 483
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 486
    move-result-object v6

    .line 487
    const-string/jumbo v9, "malformed sensor location"

    .line 490
    invoke-static {v6, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    :goto_7
    if-eqz v5, :cond_9

    .line 495
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    goto :goto_8

    .line 499
    :cond_8
    const/4 v12, 0x2

    .line 500
    :cond_9
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 502
    goto :goto_5

    .line 503
    :cond_a
    const/4 v12, 0x2

    .line 504
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 507
    move-object/from16 v9, p4

    .line 509
    move v10, v14

    .line 510
    array-length v0, v9

    .line 511
    const/4 v11, 0x0

    .line 512
    :goto_9
    if-ge v11, v0, :cond_d

    .line 514
    aget-object v1, v9, v11

    .line 516
    iget-object v2, v1, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 518
    iget v14, v2, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 520
    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 522
    iget-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 524
    iget-object v4, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 526
    iget-object v6, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 528
    move/from16 v5, p11

    .line 530
    invoke-static {v1, v8, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getFingerprintSensorPropertiesInternal(Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/util/List;Z)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 533
    move-result-object v17

    .line 534
    move-object v1, v15

    .line 535
    move-object/from16 v2, p0

    .line 537
    move-object/from16 v5, v17

    .line 539
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 542
    iget-object v1, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 544
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 546
    iget-object v3, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 548
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 551
    move-result v3

    .line 552
    if-eqz v3, :cond_b

    .line 554
    move/from16 v19, v12

    .line 556
    goto :goto_a

    .line 557
    :cond_b
    move/from16 v19, v10

    .line 559
    :goto_a
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda1;

    .line 561
    const/4 v4, 0x1

    .line 562
    invoke-direct {v3, v15, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;I)V

    .line 565
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    .line 567
    invoke-direct {v4, v15, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    .line 570
    iget-object v1, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mHandler:Landroid/os/Handler;

    .line 572
    move-object/from16 v17, v2

    .line 574
    move-object/from16 v18, v1

    .line 576
    move-object/from16 v20, p7

    .line 578
    move-object/from16 v21, v3

    .line 580
    move-object/from16 v22, v4

    .line 582
    invoke-direct/range {v17 .. v22}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Ljava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V

    .line 585
    iput-object v2, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 587
    new-instance v1, Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 589
    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/LockoutCache;-><init>()V

    .line 592
    iput-object v1, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 594
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda1;

    .line 596
    const/4 v2, 0x0

    .line 597
    invoke-direct {v1, v15, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;I)V

    .line 600
    iput-object v1, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 602
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    .line 605
    move-result-object v1

    .line 606
    if-nez v1, :cond_c

    .line 608
    move/from16 v1, v16

    .line 610
    goto :goto_b

    .line 611
    :cond_c
    iget-object v1, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 613
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 616
    move-result-object v1

    .line 617
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 619
    iget v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    .line 621
    :goto_b
    iget-object v2, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 623
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$2;

    .line 625
    const/4 v4, 0x1

    .line 626
    invoke-direct {v3, v13, v14, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V

    .line 629
    invoke-virtual {v2, v14, v15, v1, v3}, Lcom/android/server/biometrics/sensors/SensorList;->addSensor(ILjava/lang/Object;ILandroid/app/SynchronousUserSwitchObserver;)V

    .line 632
    iget-object v1, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 634
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;

    .line 636
    const/4 v3, 0x3

    .line 637
    invoke-direct {v2, v3, v13}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 640
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 646
    move-result-object v1

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    .line 649
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    iget-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 654
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 656
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 659
    move-result-object v3

    .line 660
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 662
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 665
    move-result-object v3

    .line 666
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    move-result-object v2

    .line 673
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    add-int/lit8 v11, v11, 0x1

    .line 678
    goto/16 :goto_9

    .line 680
    :cond_d
    :goto_c
    const/4 v9, 0x0

    .line 681
    :goto_d
    iget-object v0, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 683
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 685
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 688
    move-result v0

    .line 689
    if-ge v9, v0, :cond_e

    .line 691
    iget-object v0, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 693
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 695
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    .line 698
    move-result v0

    .line 699
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 702
    move-result-object v0

    .line 703
    iget-object v1, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 705
    const/4 v2, 0x0

    .line 706
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 709
    move-result-object v0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    .line 712
    const-string/jumbo v3, "init sensors: "

    .line 715
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 721
    move-result v0

    .line 722
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    move-result-object v0

    .line 729
    move-object/from16 v1, v23

    .line 731
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    add-int/lit8 v9, v9, 0x1

    .line 736
    goto :goto_d

    .line 737
    :cond_e
    :goto_e
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "HAL died"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public final containsSensor(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final createLogger$1(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/biometrics/log/BiometricLogger;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 5
    const/4 v2, 0x1

    .line 6
    move-object v0, v6

    .line 7
    move v3, p1

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    .line 13
    return-object v6
.end method

.method public createSemFpCallbackCenter()Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Landroid/os/Handler;)V

    .line 8
    return-object v0
.end method

.method public createSemFpProviderEx()Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;

    .line 3
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda5;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V

    .line 9
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda5;

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V

    .line 15
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Lcom/android/server/biometrics/SemBioAnalyticsManager;)V

    .line 22
    return-object v0
.end method

.method public final createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    move-object v5, p0

    .line 10
    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;

    .line 17
    iget-object v1, v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 19
    iget-object p1, v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 21
    iget v2, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 23
    iget-object v4, v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 25
    move-object v0, p0

    .line 26
    move-object v3, p2

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V

    .line 30
    return-object p0
.end method

.method public final dumpInternal(ILjava/io/PrintWriter;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    const-string/jumbo v3, "service"

    .line 14
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    new-instance v3, Lorg/json/JSONArray;

    .line 23
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 26
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v4

    .line 40
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_c

    .line 46
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 52
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 59
    move-result v5

    .line 60
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 63
    move-result-object v6

    .line 64
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v6, v7, v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 69
    move-result-object v6

    .line 70
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 73
    move-result v6

    .line 74
    new-instance v7, Lorg/json/JSONObject;

    .line 76
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 79
    const-string/jumbo v8, "id"

    .line 82
    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v8, "count"

    .line 88
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v6, "accept"

    .line 93
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 95
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_0

    .line 101
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 103
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 109
    iget v8, v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    .line 111
    goto :goto_1

    .line 112
    :cond_0
    move v8, v2

    .line 113
    :goto_1
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v6, "reject"

    .line 119
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 121
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_1

    .line 127
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 129
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v8

    .line 133
    check-cast v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 135
    iget v8, v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    .line 137
    goto :goto_2

    .line 138
    :cond_1
    move v8, v2

    .line 139
    :goto_2
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string/jumbo v6, "quality"

    .line 145
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 147
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_2

    .line 153
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 155
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 158
    move-result-object v8

    .line 159
    check-cast v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 161
    iget v8, v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQuality:I

    .line 163
    goto :goto_3

    .line 164
    :cond_2
    move v8, v2

    .line 165
    :goto_3
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    const-string v6, "acquire"

    .line 170
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 172
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_3

    .line 178
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 180
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 183
    move-result-object v8

    .line 184
    check-cast v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 186
    iget v8, v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    .line 188
    goto :goto_4

    .line 189
    :cond_3
    move v8, v2

    .line 190
    :goto_4
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    const-string/jumbo v6, "lockout"

    .line 196
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 198
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 201
    move-result v8

    .line 202
    if-eqz v8, :cond_4

    .line 204
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 206
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v8

    .line 210
    check-cast v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 212
    iget v8, v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    .line 214
    goto :goto_5

    .line 215
    :cond_4
    move v8, v2

    .line 216
    :goto_5
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string/jumbo v6, "permanentLockout"

    .line 222
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 224
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 227
    move-result v8

    .line 228
    if-eqz v8, :cond_5

    .line 230
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 232
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 235
    move-result-object v8

    .line 236
    check-cast v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 238
    iget v8, v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    .line 240
    goto :goto_6

    .line 241
    :cond_5
    move v8, v2

    .line 242
    :goto_6
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    const-string v6, "acceptCrypto"

    .line 247
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 249
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 252
    move-result v8

    .line 253
    if-eqz v8, :cond_6

    .line 255
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 257
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 260
    move-result-object v8

    .line 261
    check-cast v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 263
    iget v8, v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    .line 265
    goto :goto_7

    .line 266
    :cond_6
    move v8, v2

    .line 267
    :goto_7
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    const-string/jumbo v6, "rejectCrypto"

    .line 273
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 275
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 278
    move-result v8

    .line 279
    if-eqz v8, :cond_7

    .line 281
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 283
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object v8

    .line 287
    check-cast v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 289
    iget v8, v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    .line 291
    goto :goto_8

    .line 292
    :cond_7
    move v8, v2

    .line 293
    :goto_8
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    const-string/jumbo v6, "qualityCrypto"

    .line 299
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 301
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 304
    move-result v8

    .line 305
    if-eqz v8, :cond_8

    .line 307
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 309
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 312
    move-result-object v8

    .line 313
    check-cast v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 315
    iget v8, v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQualityCrypto:I

    .line 317
    goto :goto_9

    .line 318
    :cond_8
    move v8, v2

    .line 319
    :goto_9
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 322
    const-string v6, "acquireCrypto"

    .line 324
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 326
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 329
    move-result v8

    .line 330
    if-eqz v8, :cond_9

    .line 332
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 334
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 337
    move-result-object v8

    .line 338
    check-cast v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 340
    iget v8, v8, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    .line 342
    goto :goto_a

    .line 343
    :cond_9
    move v8, v2

    .line 344
    :goto_a
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 349
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 352
    move-result v6

    .line 353
    if-eqz v6, :cond_a

    .line 355
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 357
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 360
    move-result-object v5

    .line 361
    check-cast v5, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 363
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    .line 365
    goto :goto_b

    .line 366
    :cond_a
    const/4 v5, 0x0

    .line 367
    :goto_b
    if-eqz v5, :cond_b

    .line 369
    move v6, v2

    .line 370
    :goto_c
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 373
    move-result v8

    .line 374
    if-ge v6, v8, :cond_b

    .line 376
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 379
    move-result v8

    .line 380
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 383
    move-result-object v9

    .line 384
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 387
    move-result-object v8

    .line 388
    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    add-int/lit8 v6, v6, 0x1

    .line 393
    goto :goto_c

    .line 394
    :catch_0
    move-exception v3

    .line 395
    goto :goto_d

    .line 396
    :cond_b
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 399
    goto/16 :goto_0

    .line 401
    :cond_c
    const-string/jumbo v4, "prints"

    .line 404
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_e

    .line 408
    :goto_d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 411
    move-result-object v4

    .line 412
    const-string/jumbo v5, "dump formatting failure"

    .line 415
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    :goto_e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    .line 423
    const-string v3, "HAL deaths since last reboot: "

    .line 425
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 430
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    const-string v0, "---AuthSessionCoordinator logs begin---"

    .line 442
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 447
    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 449
    iget-object v0, v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 451
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 454
    const-string v0, "---AuthSessionCoordinator logs end  ---"

    .line 456
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 461
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 463
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 466
    move-result-object v0

    .line 467
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 469
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 471
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    .line 474
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mProviderEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    .line 484
    const-string v1, " daemon version : "

    .line 486
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSdkVersions:Landroid/util/SparseArray;

    .line 491
    const-string v3, "None"

    .line 493
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 496
    move-result-object v1

    .line 497
    check-cast v1, Ljava/lang/String;

    .line 499
    const-string v4, " sensor info : "

    .line 501
    invoke-static {p2, v1, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 504
    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSensorInfos:Landroid/util/SparseArray;

    .line 507
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 510
    move-result-object v1

    .line 511
    check-cast v1, Ljava/lang/String;

    .line 513
    const-string v3, " SL : "

    .line 515
    invoke-static {p2, v1, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 518
    move-result-object v0

    .line 519
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSecurityLevels:Landroid/util/SparseIntArray;

    .line 521
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 524
    move-result p0

    .line 525
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    move-result-object p0

    .line 532
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public final dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const-wide v0, 0x20b00000001L

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 32
    move-result-wide v0

    .line 33
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 35
    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 37
    const-wide v2, 0x10500000001L

    .line 42
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 45
    const-wide v4, 0x10e00000002L

    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 54
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 56
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_0

    .line 62
    const-wide v4, 0x20e00000008L

    .line 67
    const/4 p1, 0x0

    .line 68
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 73
    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 75
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    .line 78
    move-result p1

    .line 79
    const-wide v4, 0x10500000003L

    .line 84
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 87
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 89
    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    .line 92
    move-result-object p1

    .line 93
    const-wide v4, 0x10b00000004L

    .line 98
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 101
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 114
    move-result-object p1

    .line 115
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result p3

    .line 119
    if-eqz p3, :cond_1

    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object p3

    .line 125
    check-cast p3, Landroid/content/pm/UserInfo;

    .line 127
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 130
    move-result-object p3

    .line 131
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 134
    move-result p3

    .line 135
    const-wide v4, 0x20b00000005L

    .line 140
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 143
    move-result-wide v4

    .line 144
    invoke-virtual {p2, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 147
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 149
    iget v6, v6, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 151
    invoke-static {v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 154
    move-result-object v6

    .line 155
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {v6, v7, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 160
    move-result-object p3

    .line 161
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 164
    move-result p3

    .line 165
    const-wide v6, 0x10500000002L

    .line 170
    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 173
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 176
    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 179
    iget-boolean p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    .line 181
    const-wide v2, 0x10800000006L

    .line 186
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 189
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 191
    iget-boolean p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    .line 193
    const-wide v2, 0x10800000007L

    .line 198
    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 201
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 204
    :cond_2
    return-void
.end method

.method public final getAuthenticatorId(II)J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    const-wide/16 v0, 0x0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object p2

    .line 23
    check-cast p0, Ljava/util/HashMap;

    .line 25
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Long;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 34
    move-result-wide p0

    .line 35
    return-wide p0
.end method

.method public getFirstVendorApiLevel()I
    .locals 1

    .line 1
    const-string/jumbo p0, "ro.board.first_api_level"

    .line 4
    const/16 v0, 0x21

    .line 6
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public declared-synchronized getHalInstance()Landroid/hardware/biometrics/fingerprint/IFingerprint;
    .locals 7

    .line 1
    const-string v0, "Switching fingerprint from virtual hal to "

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Lcom/android/server/biometrics/Flags;->useVhalForTesting()Z

    .line 11
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;

    .line 13
    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto/16 :goto_5

    .line 21
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceNameCurrent:Ljava/lang/String;

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceNameCurrent:Ljava/lang/String;

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string/jumbo v3, "virtual"

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceNameCurrent:Ljava/lang/String;

    .line 42
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    .line 44
    if-eq v1, v3, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceNameCurrent:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 73
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    .line 75
    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    .line 80
    return-object v0

    .line 81
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsForHidl:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    if-eqz v0, :cond_4

    .line 85
    monitor-exit p0

    .line 86
    return-object v2

    .line 87
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    if-eqz v0, :cond_5

    .line 91
    monitor-exit p0

    .line 92
    return-object v0

    .line 93
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    const-string v1, "Daemon was null, reconnecting"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    sget-object v1, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "/"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceNameCurrent:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 140
    if-nez v0, :cond_6

    .line 142
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    const-string v1, "Unable to get daemon"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    monitor-exit p0

    .line 152
    return-object v2

    .line 153
    :cond_6
    const/4 v1, 0x0

    .line 154
    :try_start_5
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/IFingerprint;->asBinder()Landroid/os/IBinder;

    .line 157
    move-result-object v0

    .line 158
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    const-string v3, "Unable to linkToDeath"

    .line 169
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :goto_1
    move v0, v1

    .line 173
    :goto_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 175
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 177
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 180
    move-result v2

    .line 181
    if-ge v0, v2, :cond_8

    .line 183
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 185
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 187
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 190
    move-result v2

    .line 191
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 193
    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 200
    move-result-object v3

    .line 201
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 204
    move-result-object v3

    .line 205
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    move-result v4

    .line 209
    if-eqz v4, :cond_7

    .line 211
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    move-result-object v4

    .line 215
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 217
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 219
    invoke-virtual {p0, v2, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 222
    goto :goto_3

    .line 223
    :cond_7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 226
    move-result v3

    .line 227
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mInternalCleanupClientCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    .line 229
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    .line 234
    goto :goto_2

    .line 235
    :cond_8
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 243
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 245
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 248
    move-result v0

    .line 249
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 252
    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 262
    move-result-object v1

    .line 263
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 266
    move-result-object v1

    .line 267
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_9

    .line 273
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    move-result-object v2

    .line 277
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 279
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 281
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 283
    invoke-virtual {v0, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 290
    move-result-object v4

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    const-string v6, "Expecting enrollments for user "

    .line 298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 303
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    const-string v2, ": "

    .line 308
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 314
    move-result-object v2

    .line 315
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda3;

    .line 317
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 323
    move-result-object v2

    .line 324
    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    move-result-object v2

    .line 335
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    goto :goto_4

    .line 339
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 341
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;

    .line 343
    const/4 v2, 0x4

    .line 344
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 347
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 352
    monitor-exit p0

    .line 353
    return-object v0

    .line 354
    :goto_5
    monitor-exit p0

    .line 355
    throw v0
.end method

.method public final getLockoutModeForUser(II)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 11
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 13
    check-cast p1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 15
    iget-object p1, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 17
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 19
    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 21
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    .line 24
    move-result p0

    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 28
    invoke-virtual {v0, p2, p0}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getLockoutState(II)I

    .line 31
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p1

    .line 33
    return p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1

    .line 36
    throw p0
.end method

.method public getSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 v0, -0x1

    .line 14
    if-ne p1, v0, :cond_1

    .line 16
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 27
    return-object p0

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 38
    return-object p0
.end method

.method public final getSensorProperties(I)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 12
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 15
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 18
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    goto :goto_0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    if-eqz p0, :cond_2

    .line 23
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getSensorProperties()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 6
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 9
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTag$1()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "FingerprintProvider/"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getTaskStackListener()Landroid/app/TaskStackListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    .line 3
    return-object p0
.end method

.method public final handleRequestCommandWithoutScheduler(III[B[B)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v6, p1

    .line 4
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 6
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->contains(I)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    const/4 v0, -0x1

    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 18
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 20
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 22
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 30
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 32
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    .line 34
    const/4 v5, 0x0

    .line 35
    const-string v8, "FingerprintRequestClient"

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    move-object v0, v14

    .line 41
    move/from16 v6, p1

    .line 43
    move/from16 v10, p2

    .line 45
    move/from16 v11, p3

    .line 47
    move-object/from16 v12, p4

    .line 49
    move-object/from16 v13, p5

    .line 51
    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V

    .line 54
    invoke-virtual {v14}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startWithoutScheduler()I

    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public final hasEnrollments(II)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result p0

    .line 15
    xor-int/lit8 p0, p0, 0x1

    .line 17
    return p0
.end method

.method public final isHardwareDetected(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->isHardwareDetected(Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_LOCAL_HBM:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/16 v3, 0x16

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move v2, p3

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 17
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 25
    iget-object p3, p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 27
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda16;

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, p0, p4, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/hardware/biometrics/fingerprint/PointerContext;I)V

    .line 33
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;

    .line 38
    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;JLjava/util/function/Consumer;)V

    .line 41
    iget-object p1, p3, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method

.method public final onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_LOCAL_HBM:Z

    .line 14
    if-nez v0, :cond_1

    .line 16
    const/16 v3, 0x16

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v1, p0

    .line 22
    move v2, p3

    .line 23
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 28
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 36
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 38
    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 40
    const/4 v2, 0x3

    .line 41
    if-ne v1, v2, :cond_2

    .line 43
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->generateEvent()V

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 48
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p3

    .line 54
    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 56
    iget-object p3, p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 58
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda16;

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, p0, p4, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/hardware/biometrics/fingerprint/PointerContext;I)V

    .line 64
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;

    .line 69
    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;JLjava/util/function/Consumer;)V

    .line 72
    iget-object p1, p3, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 74
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public final onPowerPressed()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 4
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 14
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 22
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 24
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_0

    .line 30
    return-void

    .line 31
    :cond_0
    instance-of v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/PowerPressHandler;

    .line 33
    if-nez v2, :cond_1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/PowerPressHandler;

    .line 38
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public final onUdfpsUiEvent(IJI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p4

    .line 9
    check-cast p4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 11
    iget-object p4, p4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 13
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda27;

    .line 15
    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V

    .line 18
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;

    .line 23
    invoke-direct {p0, p4, p2, p3, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;JLjava/util/function/Consumer;)V

    .line 26
    iget-object p1, p4, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 4
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 14
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    move-result v4

    .line 20
    new-instance v3, Landroid/os/Binder;

    .line 22
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 25
    new-instance v6, Landroid/hardware/fingerprint/FingerprintServiceReceiver;

    .line 27
    invoke-direct {v6}, Landroid/hardware/fingerprint/FingerprintServiceReceiver;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 33
    move-result-object v7

    .line 34
    move-object v2, p0

    .line 35
    move v5, p1

    .line 36
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleRemoveAll(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public final scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JZIZLandroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsForHidl:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemonForHidl:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 13
    invoke-virtual/range {p6 .. p6}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 16
    move-result v2

    .line 17
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 25
    instance-of v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    .line 27
    if-eqz v2, :cond_0

    .line 29
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    .line 31
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getIBiometricsFingerprint()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemonForHidl:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 37
    :cond_0
    iget-object v14, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 39
    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;

    .line 41
    move-object v0, v15

    .line 42
    move-object/from16 v1, p0

    .line 44
    move-object/from16 v2, p6

    .line 46
    move-object/from16 v3, p1

    .line 48
    move-wide/from16 v4, p7

    .line 50
    move-object/from16 v6, p5

    .line 52
    move-wide/from16 v7, p2

    .line 54
    move/from16 v9, p9

    .line 56
    move/from16 v10, p4

    .line 58
    move/from16 v11, p10

    .line 60
    move/from16 v12, p11

    .line 62
    move-object/from16 v13, p12

    .line 64
    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZIIZLandroid/os/Bundle;)V

    .line 67
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method public final scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 2
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to schedule client: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for sensor: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 12
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 15
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 19
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unable to schedule client: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for sensor: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "scheduleInternalCleanup: "

    .line 4
    const-string v1, ", "

    .line 6
    const-string v2, "FingerprintProvider"

    .line 8
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 13
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda2;

    .line 15
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public final scheduleLoadAuthenticatorIdsForUser(II)V
    .locals 3

    .line 1
    const-string/jumbo v0, "scheduleLoadAuthenticatorIdsForUser: "

    .line 4
    const-string v1, ", "

    .line 6
    const-string v2, "FingerprintProvider"

    .line 8
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 13
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;

    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;III)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method public final scheduleRemoveAll(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, v1, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    new-array v7, v1, [I

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 30
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    .line 33
    move-result v2

    .line 34
    aput v2, v7, v1

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda14;

    .line 43
    move-object v2, v1

    .line 44
    move-object v3, p0

    .line 45
    move v4, p2

    .line 46
    move-object v5, p1

    .line 47
    move-object v6, p4

    .line 48
    move v8, p3

    .line 49
    move-object v9, p5

    .line 50
    invoke-direct/range {v2 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;[IILjava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public final scheduleWatchdog(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Starting watchdog for fingerprint"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 22
    if-nez p0, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startWatchdog()V

    .line 28
    return-void
.end method

.method public final semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
.end method

.method public final semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 22
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 24
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final semGetDaemonSdkVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mProviderEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 11
    move-result p0

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->getDaemonSdkVersion(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final semGetRemainingLockoutTime(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 4
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 12
    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getRemainingLockoutTime(I)I

    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return p0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v2, "semGetRemainingLockoutTime: "

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return v0
.end method

.method public final semGetSecurityLevel$1()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mProviderEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 11
    move-result p0

    .line 12
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSecurityLevels:Landroid/util/SparseIntArray;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final semGetSensorInfo(I)Ljava/lang/String;
    .locals 23

    .line 1
    move-object/from16 v7, p0

    .line 3
    move/from16 v6, p1

    .line 5
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 7
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->contains(I)Z

    .line 12
    move-result v0

    .line 13
    const-string v22, ""

    .line 15
    if-nez v0, :cond_1

    .line 17
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 19
    if-nez v0, :cond_0

    .line 21
    return-object v22

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    const-string v1, "Unable to use sensor: "

    .line 26
    invoke-static {v6, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0

    .line 34
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 40
    const/16 v1, 0x800

    .line 42
    new-array v5, v1, [B

    .line 44
    iget-object v9, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 46
    iget-object v10, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 48
    iget-object v1, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 50
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 58
    iget-object v11, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 60
    iget-object v1, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 62
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 70
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getCurrentSessionUserId()I

    .line 73
    move-result v15

    .line 74
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    .line 76
    const/16 v19, 0x0

    .line 78
    const/16 v20, 0x0

    .line 80
    const/4 v12, 0x0

    .line 81
    const/4 v13, 0x0

    .line 82
    const-string v16, "FingerprintRequestClient"

    .line 84
    const/16 v17, 0x1

    .line 86
    const/16 v18, 0x5

    .line 88
    move-object v8, v4

    .line 89
    move/from16 v14, p1

    .line 91
    move-object/from16 v21, v5

    .line 93
    invoke-direct/range {v8 .. v21}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V

    .line 96
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;

    .line 100
    const/4 v10, 0x0

    .line 101
    move-object v1, v9

    .line 102
    move-object/from16 v2, p0

    .line 104
    move/from16 v3, p1

    .line 106
    move-object v11, v4

    .line 107
    move-object v12, v5

    .line 108
    move-object v5, v0

    .line 109
    move v13, v6

    .line 110
    move v6, v10

    .line 111
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 114
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 119
    const-wide/16 v2, 0x2

    .line 121
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    const-string v2, "Latch interrupted"

    .line 132
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_0
    iget v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 137
    if-lez v0, :cond_2

    .line 139
    new-instance v1, Ljava/lang/String;

    .line 141
    invoke-static {v12, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 144
    move-result-object v0

    .line 145
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 147
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 150
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mProviderEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;

    .line 152
    const-string v2, "\n"

    .line 154
    const-string v3, ", "

    .line 156
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSensorInfos:Landroid/util/SparseArray;

    .line 162
    invoke-virtual {v0, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    goto :goto_1

    .line 166
    :cond_2
    move-object/from16 v1, v22

    .line 168
    :goto_1
    const-string/jumbo v0, "sensorInfo = "

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 175
    const-string v2, "FingerprintProvider"

    .line 177
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-object v1
.end method

.method public final semNotifyTspBlockStateToClient(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 4
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 14
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 22
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 24
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 33
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 36
    move-result-object v1

    .line 37
    instance-of v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpTspBlockStatusHandler;

    .line 39
    if-eqz v2, :cond_2

    .line 41
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpTspBlockStatusHandler;

    .line 43
    if-eqz p1, :cond_1

    .line 45
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpTspBlockStatusHandler;->onTspBlocked()V

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpTspBlockStatusHandler;->onTspUnBlocked()V

    .line 52
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return-void
.end method

.method public final semOpenTzSession()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 11
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 13
    if-nez p0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string v0, "Unable to use sensor"

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;

    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    return-void
.end method

.method public final semProcessFidoCommand(I[B[B)I
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 3
    move/from16 v0, p1

    .line 5
    iget-object v1, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 7
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 15
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 17
    if-nez v1, :cond_0

    .line 19
    const/4 v0, -0x1

    .line 20
    return v0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    const-string v2, "Unable to use sensor: "

    .line 25
    invoke-static {v0, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v1

    .line 33
    :cond_1
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 39
    iget-object v9, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 41
    iget-object v10, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 43
    iget-object v1, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 45
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 53
    iget-object v11, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 55
    iget-object v1, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 57
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 65
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getCurrentSessionUserId()I

    .line 68
    move-result v15

    .line 69
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    .line 71
    const/16 v18, 0x9

    .line 73
    const/16 v19, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v13, 0x0

    .line 77
    const-string v16, "FingerprintRequestClient"

    .line 79
    const/16 v17, 0x1

    .line 81
    move-object v8, v5

    .line 82
    move/from16 v14, p1

    .line 84
    move-object/from16 v20, p2

    .line 86
    move-object/from16 v21, p3

    .line 88
    invoke-direct/range {v8 .. v21}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V

    .line 91
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;

    .line 95
    const/4 v10, 0x1

    .line 96
    move-object v1, v9

    .line 97
    move-object/from16 v2, p0

    .line 99
    move/from16 v3, p1

    .line 101
    move-object v4, v5

    .line 102
    move-object v11, v5

    .line 103
    move-object v5, v6

    .line 104
    move-object v0, v6

    .line 105
    move v6, v10

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 109
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 114
    const-wide/16 v2, 0x2

    .line 116
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    const-string v2, "Latch interrupted"

    .line 127
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_0
    iget v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 132
    return v0
.end method

.method public final semRequest(II)I
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    move-result p0

    return p0
.end method

.method public final semRequest(III[B[B)I
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result p0

    return p0
.end method

.method public final semScheduleSensorTest(ILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;

    .line 16
    const/4 v6, 0x2

    .line 17
    move-object v1, v7

    .line 18
    move-object v2, p0

    .line 19
    move v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p3

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 25
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method

.method public final semSetTpaHalEnabled(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "semSetTpaHalEnabled: start, "

    .line 9
    const-string v1, "FingerprintProvider"

    .line 11
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    .line 16
    const/4 v0, 0x0

    .line 17
    move v2, v0

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 20
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    if-ge v2, v3, :cond_1

    .line 29
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 31
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 39
    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 42
    invoke-virtual {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 45
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setTpaHalEnabled()V

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 53
    const-string/jumbo v3, "biometric_tpa_mode"

    .line 56
    const/4 v5, -0x2

    .line 57
    invoke-static {v2, v0, v5, v3, v4}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 60
    move-result v2

    .line 61
    if-eqz p1, :cond_2

    .line 63
    or-int/lit8 p1, v2, 0x2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    and-int/lit8 p1, v2, -0x3

    .line 68
    :goto_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {v2, v3, v4, p1}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 73
    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsForHidl:Z

    .line 75
    const/4 v3, 0x0

    .line 76
    if-nez v2, :cond_6

    .line 78
    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    .line 80
    if-eqz v2, :cond_4

    .line 82
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 84
    if-nez v2, :cond_6

    .line 86
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 88
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {v2, v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;-><init>(Landroid/content/Context;)V

    .line 93
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 95
    iget-object v6, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 97
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->initActions()V

    .line 100
    iget-object v6, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mSehFingerprint:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;

    .line 102
    iget-object v7, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 104
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 107
    iget-object v6, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 109
    const/4 v7, 0x6

    .line 110
    const v8, 0x186c8

    .line 113
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    iget-object v6, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 118
    if-eqz v6, :cond_3

    .line 120
    invoke-virtual {v6}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 123
    iput-object v3, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 125
    :cond_3
    new-instance v6, Lcom/android/server/ServiceThread;

    .line 127
    const-string/jumbo v7, "fingerprint.aidl.SemTpaTestHal"

    .line 130
    invoke-direct {v6, v5, v7, v4}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 133
    iput-object v6, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 135
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 141
    if-eqz v2, :cond_6

    .line 143
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 145
    if-eqz v4, :cond_5

    .line 147
    invoke-virtual {v4}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 150
    iput-object v3, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 152
    :cond_5
    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 154
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 156
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 158
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 161
    move-result v2

    .line 162
    if-ge v0, v2, :cond_7

    .line 164
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 166
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 168
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 171
    move-result v2

    .line 172
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 175
    move-result v4

    .line 176
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 181
    goto :goto_2

    .line 182
    :cond_7
    const-string/jumbo p0, "semSetTpaHalEnabled: done, "

    .line 185
    invoke-static {p1, p0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public final semUpdateTpaAction()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 7
    if-eqz p0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public final setIgnoreDisplayTouches(JIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p3

    .line 9
    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 11
    iget-object p3, p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 13
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda33;

    .line 15
    invoke-direct {v0, p0, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Z)V

    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;

    .line 23
    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;JLjava/util/function/Consumer;)V

    .line 26
    iget-object p1, p3, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method

.method public final simulateVhalFingerDown(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Simulate virtual HAL finger down event"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 12
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 20
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    const-string/jumbo p1, "no existing hal session found - aborting"

    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p2, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 39
    invoke-direct {p2}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 42
    :try_start_0
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 44
    invoke-interface {v0, p2}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 47
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 49
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->onUiReady()V

    .line 52
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 54
    invoke-interface {p1, p2}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    const-string/jumbo p2, "failed hal operation "

    .line 66
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_0
    return-void
.end method
