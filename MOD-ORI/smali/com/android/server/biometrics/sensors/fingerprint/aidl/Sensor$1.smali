.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/UserSwitchProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

.field public final synthetic val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 6
    .line 7
    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 8
    .line 9
    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 10
    .line 11
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 14
    .line 15
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 16
    .line 17
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 18
    .line 19
    check-cast v3, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 20
    .line 21
    iget-object v10, v3, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 22
    .line 23
    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;

    .line 24
    .line 25
    move/from16 v14, p1

    .line 26
    .line 27
    invoke-direct {v11, v0, v2, v14}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;II)V

    .line 28
    .line 29
    .line 30
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 31
    .line 32
    iget-object v12, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 33
    .line 34
    iget-object v9, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 37
    .line 38
    iget-object v7, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    .line 39
    .line 40
    move-object v3, v15

    .line 41
    move v6, v2

    .line 42
    move-object/from16 v16, v7

    .line 43
    .line 44
    move/from16 v7, p1

    .line 45
    .line 46
    move-object/from16 v17, v9

    .line 47
    .line 48
    move-object v9, v0

    .line 49
    move-object v0, v13

    .line 50
    move-object/from16 v13, v16

    .line 51
    .line 52
    move-object/from16 v14, v17

    .line 53
    .line 54
    invoke-direct/range {v3 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 55
    .line 56
    .line 57
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;

    .line 58
    .line 59
    invoke-direct {v12, v1, v15, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;I)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;

    .line 63
    .line 64
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-direct {v5, v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v6, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mToken:Landroid/os/IBinder;

    .line 76
    .line 77
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 78
    .line 79
    iget v8, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 80
    .line 81
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    iget-object v10, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 88
    .line 89
    move-object v3, v2

    .line 90
    move/from16 v7, p1

    .line 91
    .line 92
    move-object v11, v15

    .line 93
    invoke-direct/range {v3 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;)V

    .line 94
    .line 95
    .line 96
    return-object v2
.end method

.method public final getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStopUserClient;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mToken:Landroid/os/IBinder;

    .line 14
    .line 15
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 16
    .line 17
    iget v5, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v8, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 29
    .line 30
    move-object v0, v9

    .line 31
    move v4, p1

    .line 32
    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/StopUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V

    .line 33
    .line 34
    .line 35
    return-object v9
.end method
