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

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 10
    return-void
.end method


# virtual methods
.method public final getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 5
    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 7
    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 9
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 11
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 13
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 15
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 17
    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 19
    iget-object v9, v2, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 21
    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;

    .line 23
    invoke-direct {v10, p0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;II)V

    .line 26
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 28
    move-object v2, v11

    .line 29
    move v5, v1

    .line 30
    move v6, p1

    .line 31
    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V

    .line 34
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 36
    iput-object v2, v11, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    const-string v3, "UserAwareBiometricScheduler.UserSwitchCallback getStartUserClient("

    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, ")"

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    const-string v3, "Sensor"

    .line 59
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v12, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;

    .line 64
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 66
    invoke-direct {v12, v0, v11, v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;ILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    .line 69
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;

    .line 71
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-direct {v4, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 82
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    .line 84
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 86
    iget v7, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 88
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 93
    move-result-object v8

    .line 94
    iget-object v9, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

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

    .line 103
    return-object v1
.end method

.method public final getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "UserAwareBiometricScheduler.UserSwitchCallback getStopUserClient("

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ")"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Sensor"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;

    .line 27
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 29
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 31
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-direct {v4, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 37
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    .line 39
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 41
    iget v7, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 43
    invoke-static {v3}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 46
    move-result-object v8

    .line 47
    iget-object v9, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 49
    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;

    .line 51
    invoke-direct {v10, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    .line 54
    move-object v2, v0

    .line 55
    move v6, p1

    .line 56
    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/StopUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V

    .line 59
    return-object v0
.end method
