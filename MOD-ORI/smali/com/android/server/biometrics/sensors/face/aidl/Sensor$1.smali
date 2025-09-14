.class public final Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/UserSwitchProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public final synthetic val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final synthetic val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 4
    .line 5
    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 6
    .line 7
    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 12
    .line 13
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 16
    .line 17
    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 18
    .line 19
    iget-object v9, v2, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 20
    .line 21
    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;

    .line 22
    .line 23
    invoke-direct {v10, p0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;II)V

    .line 24
    .line 25
    .line 26
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 27
    .line 28
    move-object v2, v11

    .line 29
    move v5, v1

    .line 30
    move v6, p1

    .line 31
    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 35
    .line 36
    iput-object v2, v11, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "UserAwareBiometricScheduler.UserSwitchCallback getStartUserClient("

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, ")"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "Sensor"

    .line 58
    .line 59
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v12, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 65
    .line 66
    invoke-direct {v12, v0, v11, v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;ILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;

    .line 70
    .line 71
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-direct {v4, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    .line 83
    .line 84
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 85
    .line 86
    iget v7, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 87
    .line 88
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    iget-object v9, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 95
    .line 96
    move-object v2, v1

    .line 97
    move v6, p1

    .line 98
    move-object v10, v11

    .line 99
    move-object v11, v12

    .line 100
    invoke-direct/range {v2 .. v11}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;)V

    .line 101
    .line 102
    .line 103
    return-object v1
.end method

.method public final getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UserAwareBiometricScheduler.UserSwitchCallback getStopUserClient("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ")"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Sensor"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 28
    .line 29
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-direct {v4, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 40
    .line 41
    iget v7, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 42
    .line 43
    invoke-static {v3}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-object v9, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 48
    .line 49
    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    invoke-direct {v10, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v2, v0

    .line 55
    move v6, p1

    .line 56
    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/StopUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method
