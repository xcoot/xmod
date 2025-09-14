.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addAuthenticatorsRegisteredCallback_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->addAllRegisteredCallback(Landroid/os/IInterface;)V

    .line 11
    return-void
.end method

.method public final addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addClientActiveCallback_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public final addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addLockoutResetCallback_enforcePermission()V

    .line 4
    const-string v0, "addLockoutResetCallback: "

    .line 6
    const-string v1, "FingerprintService"

    .line 8
    invoke-static {v0, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public final authenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J
    .locals 7

    .line 1
    new-instance v6, Landroid/os/Bundle;

    .line 3
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-wide v2, p2

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->semAuthenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Landroid/os/Bundle;)J

    .line 14
    move-result-wide p0

    .line 15
    return-wide p0
.end method

.method public final cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 1
    const-string/jumbo v0, "cancelAuthentication rejecting package: "

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    move-result v5

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    move-result v6

    .line 12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 15
    move-result v7

    .line 16
    const-string v1, "FingerprintService"

    .line 18
    const-string/jumbo v2, "cancelAuthentication: "

    .line 21
    invoke-static {v2, p2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 26
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationSyncLock:Ljava/lang/Object;

    .line 28
    monitor-enter v8

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v2, p2

    .line 33
    move-object v3, p3

    .line 34
    invoke-static/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    .line 37
    move-result p3

    .line 38
    if-nez p3, :cond_0

    .line 40
    const-string p0, "FingerprintService"

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    monitor-exit v8

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 63
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 68
    move-result-object p0

    .line 69
    if-nez p0, :cond_1

    .line 71
    const-string p0, "FingerprintService"

    .line 73
    const-string p1, "Null provider for cancelAuthentication"

    .line 75
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    monitor-exit v8

    .line 79
    return-void

    .line 80
    :cond_1
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 82
    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 84
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    check-cast p0, Ljava/lang/Integer;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result v2

    .line 92
    move-object v1, p2

    .line 93
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 95
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda30;

    .line 99
    const/4 v6, 0x0

    .line 100
    move-object v0, p2

    .line 101
    move-object v3, p1

    .line 102
    move-wide v4, p4

    .line 103
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JI)V

    .line 106
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    monitor-exit v8

    .line 110
    return-void

    .line 111
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw p0
.end method

.method public final cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthenticationFromService_enforcePermission()V

    .line 4
    const-string/jumbo p3, "cancelAuthenticationFromService, sensorId: "

    .line 7
    const-string v0, "FingerprintService"

    .line 9
    invoke-static {p1, p3, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 22
    if-nez p0, :cond_0

    .line 24
    const-string p0, "Null provider for cancelAuthenticationFromService"

    .line 26
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void

    .line 30
    :cond_0
    move-object v2, p0

    .line 31
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 33
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda30;

    .line 37
    const/4 v7, 0x0

    .line 38
    move-object v1, p3

    .line 39
    move v3, p1

    .line 40
    move-object v4, p2

    .line 41
    move-wide v5, p4

    .line 42
    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JI)V

    .line 45
    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public final cancelEnrollment(Landroid/os/IBinder;J)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelEnrollment_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "cancelEnrollment: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "FingerprintService"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 26
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 28
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 31
    move-result-object p0

    .line 32
    if-nez p0, :cond_0

    .line 34
    const-string p0, "Null provider for cancelEnrollment"

    .line 36
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 44
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 46
    check-cast p0, Ljava/lang/Integer;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v3

    .line 52
    move-object v2, v0

    .line 53
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 55
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda30;

    .line 59
    const/4 v7, 0x1

    .line 60
    move-object v1, v0

    .line 61
    move-object v4, p1

    .line 62
    move-wide v5, p2

    .line 63
    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JI)V

    .line 66
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method public final cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelFingerprintDetect_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "cancelFingerprintDetect: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FingerprintService"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 34
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 44
    const-string/jumbo p0, "cancelFingerprintDetect called from non-sysui package: "

    .line 47
    invoke-static {p0, p2, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 53
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 55
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 58
    move-result-object p0

    .line 59
    if-nez p0, :cond_1

    .line 61
    const-string p0, "Null provider for cancelFingerprintDetect"

    .line 63
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 67
    :cond_1
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 69
    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 71
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 73
    check-cast p0, Ljava/lang/Integer;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 78
    move-result v2

    .line 79
    move-object v1, p2

    .line 80
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 82
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda30;

    .line 86
    const/4 v6, 0x0

    .line 87
    move-object v0, p2

    .line 88
    move-object v3, p1

    .line 89
    move-wide v4, p3

    .line 90
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JI)V

    .line 93
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public final createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->createTestSession_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 14
    if-nez p0, :cond_0

    .line 16
    const-string p0, "Null provider for createTestSession, sensorId: "

    .line 18
    const-string p2, "FingerprintService"

    .line 20
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final detectFingerprint(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->detectFingerprint_enforcePermission()V

    .line 4
    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v2, "detectFingerprint: ["

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getUserId()I

    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "] from pkg="

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    const-string v2, "FingerprintService"

    .line 37
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 42
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 49
    move-result v1

    .line 50
    const-wide/16 v3, -0x1

    .line 52
    if-nez v1, :cond_0

    .line 54
    const-string/jumbo p0, "detectFingerprint called from non-sysui package: "

    .line 57
    invoke-static {p0, v0, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-wide v3

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 63
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 68
    move-result-object p0

    .line 69
    if-nez p0, :cond_1

    .line 71
    const-string p0, "Null provider for detectFingerprint"

    .line 73
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-wide v3

    .line 77
    :cond_1
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 79
    check-cast v0, Ljava/lang/Integer;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v0

    .line 85
    invoke-virtual {p3, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 88
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 90
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 92
    new-instance v6, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 94
    invoke-direct {v6, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 97
    move-object v1, p0

    .line 98
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 100
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 102
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 105
    move-result-wide v7

    .line 106
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda28;

    .line 110
    move-object v0, p2

    .line 111
    move-object v2, p3

    .line 112
    move-object v3, p1

    .line 113
    move-wide v4, v7

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    .line 117
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-wide v7
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "FingerprintService"

    .line 9
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 22
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    array-length v2, p3

    .line 34
    const/4 v4, 0x2

    .line 35
    if-le v2, v4, :cond_2

    .line 37
    const-string v2, "--tpa"

    .line 39
    aget-object v4, p3, v3

    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 47
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 49
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 51
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleTpaCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto/16 :goto_5

    .line 61
    :cond_2
    :goto_0
    :try_start_1
    array-length v2, p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    const-string v4, "--proto"

    .line 64
    const/4 v5, 0x1

    .line 65
    if-le v2, v5, :cond_5

    .line 67
    :try_start_2
    aget-object v2, p3, v3

    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_5

    .line 75
    const-string v2, "--state"

    .line 77
    aget-object v5, p3, v5

    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_5

    .line 85
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 87
    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 90
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 92
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 97
    move-result-object p0

    .line 98
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object p0

    .line 102
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_4

    .line 108
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 114
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties()Ljava/util/List;

    .line 119
    move-result-object p3

    .line 120
    check-cast p3, Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object p3

    .line 126
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_3

    .line 132
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 138
    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 140
    invoke-virtual {p1, v2, p2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 143
    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 147
    goto/16 :goto_4

    .line 149
    :cond_5
    array-length p1, p3

    .line 150
    if-lez p1, :cond_7

    .line 152
    aget-object p1, p3, v3

    .line 154
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_7

    .line 160
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 162
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 164
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 167
    move-result-object p0

    .line 168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 171
    move-result-object p0

    .line 172
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_a

    .line 178
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 184
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 186
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties()Ljava/util/List;

    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Ljava/util/ArrayList;

    .line 192
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    move-result-object p1

    .line 196
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    move-result p2

    .line 200
    if-eqz p2, :cond_6

    .line 202
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    move-result-object p2

    .line 206
    check-cast p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 208
    iget p2, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 210
    goto :goto_2

    .line 211
    :cond_7
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 213
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 215
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 218
    move-result-object p1

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 222
    move-result-object p1

    .line 223
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    move-result p3

    .line 227
    if-eqz p3, :cond_9

    .line 229
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    move-result-object p3

    .line 233
    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 235
    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 237
    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties()Ljava/util/List;

    .line 240
    move-result-object v2

    .line 241
    check-cast v2, Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 246
    move-result-object v2

    .line 247
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_8

    .line 253
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    move-result-object v3

    .line 257
    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    const-string v5, "Dumping for sensorId: "

    .line 266
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget v5, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    const-string v5, ", provider: "

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    move-result-object v5

    .line 283
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v4

    .line 294
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    .line 299
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    const-string v5, "Fps state: "

    .line 304
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 309
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 311
    iget v5, v5, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    move-result-object v4

    .line 320
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    iget v3, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 325
    invoke-virtual {p3, v3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->dumpInternal(ILjava/io/PrintWriter;)V

    .line 328
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 331
    goto :goto_3

    .line 332
    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 334
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 336
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->dump(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    :cond_a
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    return-void

    .line 343
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    throw p0
.end method

.method public final dumpSensorServiceStateProto(IZ)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->dumpSensorServiceStateProto_enforcePermission()V

    .line 4
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 6
    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 23
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 29
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v8, p2

    .line 5
    move/from16 v1, p3

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->enroll_enforcePermission()V

    .line 10
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 12
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 14
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 17
    move-result-object v2

    .line 18
    const-wide/16 v3, -0x1

    .line 20
    const-string v5, "FingerprintService"

    .line 22
    if-nez v2, :cond_0

    .line 24
    const-string v0, "Null provider for enroll"

    .line 26
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-wide v3

    .line 30
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v7, "enroll: ["

    .line 35
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v7, "] from pkg="

    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-object/from16 v9, p5

    .line 48
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v6

    .line 55
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v8, :cond_3

    .line 60
    array-length v5, v8

    .line 61
    if-nez v5, :cond_1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 66
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-virtual {v3, v4, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->canUseFingerprint(ZZ)Landroid/util/Pair;

    .line 72
    move-result-object v3

    .line 73
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 75
    check-cast v4, Ljava/lang/Integer;

    .line 77
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_2

    .line 83
    :try_start_0
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 85
    check-cast v0, Ljava/lang/Integer;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 90
    move-result v0

    .line 91
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 93
    check-cast v1, Ljava/lang/Integer;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 98
    move-result v1

    .line 99
    move-object/from16 v6, p4

    .line 101
    invoke-interface {v6, v0, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 109
    :goto_0
    const-wide/16 v0, 0x0

    .line 111
    return-wide v0

    .line 112
    :cond_2
    move-object/from16 v6, p4

    .line 114
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 119
    move-result v7

    .line 120
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 122
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 124
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 126
    check-cast v1, Ljava/lang/Integer;

    .line 128
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 131
    move-result v2

    .line 132
    move-object v1, v0

    .line 133
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 135
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 137
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 140
    move-result-wide v12

    .line 141
    iget-object v14, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;

    .line 145
    move-object v0, v15

    .line 146
    move-object/from16 v3, p1

    .line 148
    move-wide v4, v12

    .line 149
    move-object/from16 v6, p4

    .line 151
    move-object/from16 v8, p2

    .line 153
    move-object/from16 v9, p5

    .line 155
    move/from16 v10, p6

    .line 157
    move-object/from16 v11, p7

    .line 159
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;I[BLjava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)V

    .line 162
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-wide v12

    .line 166
    :cond_3
    :goto_1
    return-wide v3
.end method

.method public final generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->generateChallenge_enforcePermission()V

    .line 4
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 6
    const-string v1, "FingerprintService"

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo v0, "generateChallenge: "

    .line 13
    const-string v2, ", "

    .line 15
    invoke-static {p2, p3, v0, v2, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p5, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 26
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 32
    if-nez p0, :cond_1

    .line 34
    const-string p0, "No matching sensor for generateChallenge, sensorId: "

    .line 36
    invoke-static {p2, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void

    .line 40
    :cond_1
    move-object v3, p0

    .line 41
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 43
    iget-object p0, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;

    .line 47
    move-object v2, v0

    .line 48
    move v4, p2

    .line 49
    move-object v5, p1

    .line 50
    move-object v6, p4

    .line 51
    move v7, p3

    .line 52
    move-object v8, p5

    .line 53
    invoke-direct/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    .line 56
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method public final getAuthenticatorId(II)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getAuthenticatorId_enforcePermission()V

    .line 4
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 6
    const-string v1, "FingerprintService"

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo v0, "getAuthenticatorId: "

    .line 13
    const-string v2, ", "

    .line 15
    invoke-static {p1, p2, v0, v2, v1}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 20
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 23
    move-result p2

    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 26
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 34
    if-nez p0, :cond_1

    .line 36
    const-string p0, "Null provider for getAuthenticatorId"

    .line 38
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-wide/16 p0, 0x0

    .line 43
    return-wide p0

    .line 44
    :cond_1
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getAuthenticatorId(II)J

    .line 49
    move-result-wide p0

    .line 50
    return-wide p0
.end method

.method public final getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v4

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    move-result v5

    .line 11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    move-result v6

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v1, p2

    .line 17
    move-object v2, p3

    .line 18
    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    .line 21
    move-result p3

    .line 22
    if-nez p3, :cond_0

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 32
    move-result p3

    .line 33
    if-eq p1, p3, :cond_1

    .line 35
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 37
    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p3

    .line 41
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 43
    invoke-static {p3, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    :cond_1
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 48
    invoke-virtual {p3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 51
    move-result p1

    .line 52
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;

    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public final getLockoutModeForUser(II)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getLockoutModeForUser_enforcePermission()V

    .line 4
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 6
    const-string v1, "FingerprintService"

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo v0, "getLockoutModeForUser: "

    .line 13
    const-string v2, ", "

    .line 15
    invoke-static {p1, p2, v0, v2, v1}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 28
    if-nez p0, :cond_1

    .line 30
    const-string p0, "Null provider for getLockoutModeForUser"

    .line 32
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_1
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getLockoutModeForUser(II)I

    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getSensorProperties_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 14
    if-nez p0, :cond_0

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    const-string v0, "No matching sensor for getSensorProperties, sensorId: "

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, ", caller: "

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    const-string p1, "FingerprintService"

    .line 40
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties(I)Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 53
    return-object p0
.end method

.method public final getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 17
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, "android.permission.TEST_BIOMETRIC"

    .line 23
    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final hasEnrolledFingerprints(IILjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprints_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 17
    const-string p0, "Null provider for hasEnrolledFingerprints, caller: "

    .line 19
    const-string p1, "FingerprintService"

    .line 21
    invoke-static {p0, p3, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return v1

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 27
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 30
    move-result p0

    .line 31
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 33
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 36
    move-result-object p1

    .line 37
    iget-object p2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1, p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 46
    move-result p0

    .line 47
    if-lez p0, :cond_1

    .line 49
    const/4 v1, 0x1

    .line 50
    :cond_1
    return v1
.end method

.method public final hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v4

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    move-result v5

    .line 11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    move-result v6

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v1, p2

    .line 17
    move-object v2, p3

    .line 18
    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    .line 21
    move-result p3

    .line 22
    if-nez p3, :cond_0

    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 29
    move-result p3

    .line 30
    if-eq p1, p3, :cond_1

    .line 32
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 34
    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p3

    .line 38
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 40
    invoke-static {p3, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    :cond_1
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 45
    invoke-virtual {p3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 48
    move-result p1

    .line 49
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;

    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 58
    move-result p0

    .line 59
    xor-int/lit8 p0, p0, 0x1

    .line 61
    return p0
.end method

.method public final invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->invalidateAuthenticatorId_enforcePermission()V

    .line 4
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 6
    const-string v1, "FingerprintService"

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo v0, "invalidateAuthenticatorId: "

    .line 13
    const-string v2, ", "

    .line 15
    invoke-static {p1, p2, v0, v2, v1}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 20
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 23
    move-result v5

    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 26
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 34
    if-nez p0, :cond_1

    .line 36
    const-string p0, "Null provider for invalidateAuthenticatorId"

    .line 38
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 42
    :cond_1
    move-object v3, p0

    .line 43
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 45
    iget-object p0, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;

    .line 49
    const/4 v7, 0x0

    .line 50
    move-object v2, p2

    .line 51
    move v4, p1

    .line 52
    move-object v6, p3

    .line 53
    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILjava/lang/Object;I)V

    .line 56
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method public final isClientActive()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isClientActive_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 8
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    .line 10
    return p0
.end method

.method public final isHardwareDetected(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetected_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 14
    if-nez p0, :cond_0

    .line 16
    const-string p0, "Null provider for isHardwareDetected, caller: "

    .line 18
    const-string p1, "FingerprintService"

    .line 20
    invoke-static {p0, p2, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->isHardwareDetected(I)Z

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, "Null provider for isHardwareDetectedDeprecated, caller: "

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v5

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    move-result v6

    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 16
    move-result v7

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v2, p1

    .line 19
    move-object v3, p2

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    .line 23
    move-result p2

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez p2, :cond_0

    .line 27
    return v1

    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    move-result-wide v2

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 34
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_1

    .line 42
    const-string p0, "FingerprintService"

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    return v1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :try_start_1
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 67
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 69
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 71
    check-cast p0, Ljava/lang/Integer;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result p0

    .line 77
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 79
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->isHardwareDetected(I)Z

    .line 82
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    return p0

    .line 87
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw p0
.end method

.method public final onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerDown_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 14
    if-nez p0, :cond_0

    .line 16
    const-string p0, "No matching provider for onFingerDown, sensorId: "

    .line 18
    const-string p1, "FingerprintService"

    .line 20
    invoke-static {p3, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void

    .line 24
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 29
    return-void
.end method

.method public final onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerUp_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 14
    if-nez p0, :cond_0

    .line 16
    const-string p0, "No matching provider for onFingerUp, sensorId: "

    .line 18
    const-string p1, "FingerprintService"

    .line 20
    invoke-static {p3, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void

    .line 24
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 29
    return-void
.end method

.method public final onPowerPressed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPowerPressed_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 8
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda0;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;I)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
.end method

.method public final onPowerSinglePressed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPowerSinglePressed_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 8
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda0;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;I)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 5
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 10
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move-object v4, p3

    .line 17
    move-object v5, p4

    .line 18
    move-object v6, p5

    .line 19
    move-object v7, p6

    .line 20
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 23
    return-void
.end method

.method public final onUdfpsUiEvent(IJI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onUdfpsUiEvent_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {p0, p4}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 14
    if-nez p0, :cond_0

    .line 16
    const-string p0, "No matching provider for onUdfpsUiEvent, sensorId: "

    .line 18
    const-string p1, "FingerprintService"

    .line 20
    invoke-static {p4, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void

    .line 24
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->onUdfpsUiEvent(IJI)V

    .line 29
    return-void
.end method

.method public final prepareForAuthentication(Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JIZZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p4

    .line 4
    move/from16 v4, p8

    .line 6
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->prepareForAuthentication_enforcePermission()V

    .line 9
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 11
    const-string v3, "FingerprintService"

    .line 13
    if-eqz v2, :cond_0

    .line 15
    const-string/jumbo v2, "prepareForAuthentication: "

    .line 18
    invoke-static {v4, v2, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 23
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getUserId()I

    .line 26
    move-result v5

    .line 27
    invoke-virtual {v2, v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 30
    move-result v2

    .line 31
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getUserId()I

    .line 34
    move-result v5

    .line 35
    if-eq v2, v5, :cond_1

    .line 37
    move-object/from16 v5, p5

    .line 39
    invoke-static {v2, v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->copyOptions(ILandroid/hardware/fingerprint/FingerprintAuthenticateOptions;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 42
    move-result-object v2

    .line 43
    move-object v6, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object/from16 v5, p5

    .line 47
    move-object v6, v5

    .line 48
    :goto_0
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 50
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 52
    const/4 v5, 0x1

    .line 53
    const/4 v7, 0x0

    .line 54
    invoke-virtual {v2, v5, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->canUseFingerprint(ZZ)Landroid/util/Pair;

    .line 57
    move-result-object v2

    .line 58
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 60
    check-cast v5, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_2

    .line 68
    :try_start_0
    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 71
    move-result v0

    .line 72
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    check-cast v3, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result v3

    .line 80
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 82
    check-cast v2, Ljava/lang/Integer;

    .line 84
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result v2

    .line 88
    invoke-interface {v1, v0, v4, v3, v2}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    :goto_1
    return-void

    .line 97
    :cond_2
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 99
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 101
    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 104
    move-result v2

    .line 105
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 111
    if-nez v0, :cond_3

    .line 113
    const-string v0, "Null provider for prepareForAuthentication"

    .line 115
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 119
    :cond_3
    if-eqz p10, :cond_4

    .line 121
    const/4 v2, 0x3

    .line 122
    :goto_2
    move v10, v2

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    const/4 v2, 0x2

    .line 125
    goto :goto_2

    .line 126
    :goto_3
    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 128
    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V

    .line 131
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 133
    new-instance v12, Landroid/os/Bundle;

    .line 135
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 138
    const/4 v9, 0x1

    .line 139
    move-object v1, p1

    .line 140
    move-wide v2, p2

    .line 141
    move/from16 v4, p8

    .line 143
    move-wide/from16 v7, p6

    .line 145
    move/from16 v11, p9

    .line 147
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JZIZLandroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public final registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerAuthenticationStateListener_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->asBinder()Landroid/os/IBinder;

    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string p1, "AuthenticationStateListeners"

    .line 25
    const-string v0, "Failed to link to death"

    .line 27
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :goto_0
    return-void
.end method

.method public final registerAuthenticators(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerAuthenticators_enforcePermission()V

    .line 4
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->hasSensorConfigurations()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "FingerprintService"

    .line 12
    const-string p1, "No fingerprint sensors available."

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 20
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 22
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;

    .line 24
    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 35
    move-result-object p0

    .line 36
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry$$ExternalSyntheticLambda0;

    .line 38
    invoke-direct {p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;)V

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method

.method public final registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerBiometricStateListener_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 11
    return-void
.end method

.method public final remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->remove_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "remove: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FingerprintService"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 34
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_0

    .line 42
    const-string p0, "Null provider for remove"

    .line 44
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 50
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 52
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    check-cast p0, Ljava/lang/Integer;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result v3

    .line 60
    move-object v2, v0

    .line 61
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 63
    filled-new-array {p2}, [I

    .line 66
    move-result-object v6

    .line 67
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda14;

    .line 71
    move-object v1, p2

    .line 72
    move-object v4, p1

    .line 73
    move-object v5, p4

    .line 74
    move v7, p3

    .line 75
    move-object v8, p5

    .line 76
    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;[IILjava/lang/String;)V

    .line 79
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public final removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeAll_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "removeAll: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FingerprintService"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;

    .line 34
    invoke-direct {v0, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 37
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 39
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 41
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 49
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_1

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 61
    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 63
    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties()Ljava/util/List;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v1

    .line 73
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 85
    iget v4, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 87
    move-object v2, p3

    .line 88
    move-object v3, p1

    .line 89
    move v5, p2

    .line 90
    move-object v6, v0

    .line 91
    move-object v7, p4

    .line 92
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleRemoveAll(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method public final removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeClientActiveCallback_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public final rename(IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->rename_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 19
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_1

    .line 27
    const-string p0, "FingerprintService"

    .line 29
    const-string p1, "Null provider for rename"

    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 39
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 41
    check-cast p0, Ljava/lang/Integer;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result p0

    .line 47
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 55
    move-result-object p0

    .line 56
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 71
    move-result-object p0

    .line 72
    monitor-enter p0

    .line 73
    const/4 p2, 0x0

    .line 74
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v0

    .line 80
    if-ge p2, v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 90
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 93
    move-result v0

    .line 94
    if-ne v0, p1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 104
    invoke-virtual {p1, p3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->setName(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    .line 109
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 117
    goto :goto_0

    .line 118
    :cond_4
    :goto_1
    monitor-exit p0

    .line 119
    :goto_2
    return-void

    .line 120
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p1
.end method

.method public final resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->resetLockout_enforcePermission()V

    .line 4
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 6
    const-string v0, "FingerprintService"

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const-string/jumbo p1, "resetLockout: "

    .line 13
    const-string v1, ", "

    .line 15
    invoke-static {p2, p3, p1, v1, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1, p5, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 24
    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 27
    move-result v4

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 38
    if-nez p0, :cond_1

    .line 40
    const-string p0, "Null provider for resetLockout, caller: "

    .line 42
    invoke-static {p0, p5, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 46
    :cond_1
    move-object v2, p0

    .line 47
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 49
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;

    .line 53
    const/4 v6, 0x1

    .line 54
    move-object v1, p1

    .line 55
    move v3, p2

    .line 56
    move-object v5, p4

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILjava/lang/Object;I)V

    .line 60
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.method public final revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move v2, p2

    .line 3
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->revokeChallenge_enforcePermission()V

    .line 6
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 8
    const-string v3, "FingerprintService"

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const-string/jumbo v1, "revokeChallenge: "

    .line 15
    const-string v4, ", "

    .line 17
    move v5, p3

    .line 18
    invoke-static {p2, p3, v1, v4, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object v1

    .line 22
    move-object v6, p4

    .line 23
    invoke-static {v1, p4, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v5, p3

    .line 28
    move-object v6, p4

    .line 29
    :goto_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 31
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 33
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mEnrollSessionMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    .line 35
    invoke-virtual {v1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->isEnrollSession(I)Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 41
    const-string v0, "No enroll session, sensorId: "

    .line 43
    invoke-static {p2, v0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .line 47
    :cond_1
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 49
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 51
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 57
    if-nez v0, :cond_2

    .line 59
    const-string v0, "No matching sensor for revokeChallenge, sensorId: "

    .line 61
    invoke-static {p2, v0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void

    .line 65
    :cond_2
    move-object v1, v0

    .line 66
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 68
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda11;

    .line 72
    move-object v0, v9

    .line 73
    move v2, p2

    .line 74
    move-object v3, p1

    .line 75
    move v4, p3

    .line 76
    move-object v5, p4

    .line 77
    move-wide v6, p5

    .line 78
    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;ILjava/lang/String;J)V

    .line 81
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public final scheduleWatchdog()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->scheduleWatchdog_enforcePermission()V

    .line 4
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 6
    const-string v1, "FingerprintService"

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo v0, "scheduleWatchdog"

    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 20
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 26
    const-string p0, "Null provider for scheduling watchdog"

    .line 28
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 36
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    check-cast p0, Ljava/lang/Integer;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result p0

    .line 44
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 46
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleWatchdog(I)V

    .line 49
    return-void
.end method

.method public final semAddMaskView(Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semAddMaskView_enforcePermission()V

    .line 4
    if-eqz p1, :cond_1

    .line 6
    if-nez p2, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string v0, "addMaskView: "

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FingerprintService.Ext"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 29
    if-eqz v0, :cond_1

    .line 31
    sget-object v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 33
    iget-object v1, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 35
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 37
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda4;

    .line 44
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final semAuthenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Landroid/os/Bundle;)J
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p4

    .line 5
    move-object/from16 v2, p5

    .line 7
    const-string v3, "Authenticate rejecting package: "

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v11

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    move-result v9

    .line 17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 20
    move-result v10

    .line 21
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 24
    move-result-object v12

    .line 25
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getAttributionTag()Ljava/lang/String;

    .line 28
    move-result-object v6

    .line 29
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getUserId()I

    .line 32
    move-result v13

    .line 33
    const-string v4, "FingerprintService"

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v7, "semAuthenticate: ["

    .line 40
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v7, "] from pkg="

    .line 48
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v5

    .line 58
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez p6, :cond_0

    .line 63
    new-instance v4, Landroid/os/Bundle;

    .line 65
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 68
    move-object v15, v4

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move-object/from16 v15, p6

    .line 72
    :goto_0
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 74
    iget-object v14, v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationSyncLock:Ljava/lang/Object;

    .line 76
    monitor-enter v14

    .line 77
    :try_start_0
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 79
    const/4 v7, 0x1

    .line 80
    move-object v5, v12

    .line 81
    move v8, v11

    .line 82
    invoke-static/range {v4 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    .line 85
    move-result v4

    .line 86
    const-wide/16 v5, -0x1

    .line 88
    if-nez v4, :cond_1

    .line 90
    const-string v0, "FingerprintService"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v14

    .line 108
    return-wide v5

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    move-object v1, v14

    .line 111
    goto/16 :goto_10

    .line 113
    :cond_1
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 115
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 117
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIFAAFlag:Landroid/util/Pair;

    .line 119
    if-eqz v4, :cond_2

    .line 121
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 123
    check-cast v4, Ljava/lang/String;

    .line 125
    invoke-virtual {v4, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_2

    .line 131
    const-string v4, "IFAA: "

    .line 133
    const-string v7, "FingerprintService.Ext"

    .line 135
    invoke-static {v4, v12, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIFAAFlag:Landroid/util/Pair;

    .line 140
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 142
    check-cast v4, Ljava/lang/Integer;

    .line 144
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 147
    move-result v4

    .line 148
    const-string v7, "EXTRA_KEY_AUTH_FLAG"

    .line 150
    invoke-virtual {v15, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const/4 v4, 0x0

    .line 154
    iput-object v4, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIFAAFlag:Landroid/util/Pair;

    .line 156
    :cond_2
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 158
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 161
    move-result-object v3

    .line 162
    invoke-static {v3, v12}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 165
    move-result v3

    .line 166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 169
    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    const-string v4, "EXTRA_KEY_ALLOW_EVEN_IF_ENCRYPTED_OR_LOCKDOWN"

    .line 172
    invoke-virtual {v15, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 175
    move-result v4

    .line 176
    if-eqz v3, :cond_7

    .line 178
    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 180
    iget-object v12, v12, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 182
    invoke-virtual {v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    .line 185
    move-result v12

    .line 186
    and-int/lit8 v16, v12, 0x1

    .line 188
    if-eqz v16, :cond_3

    .line 190
    const/4 v10, 0x1

    .line 191
    goto :goto_1

    .line 192
    :cond_3
    const/4 v10, 0x0

    .line 193
    :goto_1
    and-int/lit8 v16, v12, 0x2

    .line 195
    if-eqz v16, :cond_4

    .line 197
    goto :goto_2

    .line 198
    :cond_4
    and-int/lit8 v12, v12, 0x20

    .line 200
    if-eqz v12, :cond_5

    .line 202
    :goto_2
    const/4 v12, 0x1

    .line 203
    goto :goto_3

    .line 204
    :cond_5
    const/4 v12, 0x0

    .line 205
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v5, "isEncrypted: "

    .line 210
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    const-string v5, " isLockdown: "

    .line 218
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v5

    .line 228
    const-string v6, "BiometricUtils"

    .line 230
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-nez v10, :cond_6

    .line 235
    if-eqz v12, :cond_7

    .line 237
    :cond_6
    if-nez v4, :cond_7

    .line 239
    const-string v0, "79776455"

    .line 241
    const v1, 0x534e4554

    .line 244
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 247
    const-string v0, "FingerprintService"

    .line 249
    const-string v1, "Authenticate invoked when user is encrypted or lockdown"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    :try_start_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    monitor-exit v14

    .line 258
    const-wide/16 v0, -0x1

    .line 260
    return-wide v0

    .line 261
    :catchall_1
    move-exception v0

    .line 262
    move-object v1, v14

    .line 263
    goto/16 :goto_f

    .line 265
    :cond_7
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 270
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 272
    const/4 v5, 0x1

    .line 273
    invoke-virtual {v4, v5, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->canUseFingerprint(ZZ)Landroid/util/Pair;

    .line 276
    move-result-object v4

    .line 277
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 279
    check-cast v6, Ljava/lang/Integer;

    .line 281
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 284
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    if-eqz v6, :cond_8

    .line 287
    :try_start_3
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 289
    check-cast v0, Ljava/lang/Integer;

    .line 291
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 294
    move-result v0

    .line 295
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 297
    check-cast v2, Ljava/lang/Integer;

    .line 299
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 302
    move-result v2

    .line 303
    invoke-interface {v1, v0, v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    goto :goto_4

    .line 307
    :catch_0
    move-exception v0

    .line 308
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 311
    :goto_4
    monitor-exit v14

    .line 312
    const-wide/16 v0, 0x0

    .line 314
    return-wide v0

    .line 315
    :cond_8
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 317
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 320
    move-result-object v4

    .line 321
    const-string/jumbo v6, "com.samsung.android.permission.FINGERPRINT_PRIVILEGED"

    .line 324
    invoke-static {v4, v6}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 327
    move-result v4

    .line 328
    if-nez v4, :cond_9

    .line 330
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 332
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 335
    move-result-object v4

    .line 336
    const-string v6, "android.permission.MANAGE_BIOMETRIC"

    .line 338
    invoke-static {v4, v6}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 341
    move-result v4

    .line 342
    if-nez v4, :cond_9

    .line 344
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 346
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 349
    move-result-object v4

    .line 350
    const-string/jumbo v6, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    .line 353
    invoke-static {v4, v6}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 356
    move-result v4

    .line 357
    if-nez v4, :cond_9

    .line 359
    move/from16 v23, v5

    .line 361
    goto :goto_5

    .line 362
    :cond_9
    const/16 v23, 0x0

    .line 364
    :goto_5
    if-eqz v23, :cond_a

    .line 366
    const-string/jumbo v4, "sem_privileged_attr"

    .line 369
    invoke-virtual {v15, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 372
    const/4 v4, 0x0

    .line 373
    const/4 v6, 0x0

    .line 374
    goto :goto_6

    .line 375
    :cond_a
    const-string/jumbo v4, "sem_privileged_attr"

    .line 378
    const/4 v6, 0x0

    .line 379
    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 382
    move-result v4

    .line 383
    const/4 v7, 0x4

    .line 384
    and-int/2addr v4, v7

    .line 385
    if-eqz v4, :cond_b

    .line 387
    move v4, v5

    .line 388
    goto :goto_6

    .line 389
    :cond_b
    move v4, v6

    .line 390
    :goto_6
    if-eqz v3, :cond_c

    .line 392
    move/from16 v24, v5

    .line 394
    goto :goto_7

    .line 395
    :cond_c
    const/4 v7, 0x3

    .line 396
    move/from16 v24, v7

    .line 398
    :goto_7
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 401
    move-result v7

    .line 402
    const/4 v8, -0x1

    .line 403
    if-ne v7, v8, :cond_d

    .line 405
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 407
    iget-object v7, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 409
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 412
    move-result-object v7

    .line 413
    goto :goto_8

    .line 414
    :cond_d
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 416
    invoke-virtual {v7}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 419
    move-result-object v7

    .line 420
    const-string v8, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 422
    invoke-static {v7, v8}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    new-instance v7, Landroid/util/Pair;

    .line 427
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 430
    move-result v8

    .line 431
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    move-result-object v8

    .line 435
    iget-object v9, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 437
    iget-object v9, v9, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 439
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 442
    move-result v10

    .line 443
    invoke-virtual {v9, v10}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 446
    move-result-object v9

    .line 447
    check-cast v9, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 449
    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    :goto_8
    if-eqz v7, :cond_e

    .line 454
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 456
    if-nez v8, :cond_f

    .line 458
    :cond_e
    move-object v1, v14

    .line 459
    goto/16 :goto_e

    .line 461
    :cond_f
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 463
    check-cast v8, Ljava/lang/Integer;

    .line 465
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 468
    move-result v8

    .line 469
    invoke-virtual {v2, v8}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 475
    move-result-wide v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 476
    :try_start_5
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 478
    const-class v12, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 480
    invoke-virtual {v10, v12}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 483
    move-result-object v10

    .line 484
    check-cast v10, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 486
    if-eqz v10, :cond_10

    .line 488
    invoke-virtual {v10, v11}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onAuthenticationPrompt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 491
    goto :goto_9

    .line 492
    :catchall_2
    move-exception v0

    .line 493
    move-object v1, v14

    .line 494
    goto/16 :goto_d

    .line 496
    :cond_10
    :goto_9
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    if-eqz v3, :cond_11

    .line 501
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 503
    iget-object v8, v8, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 505
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 508
    move-result v9

    .line 509
    iget-object v8, v8, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mEnrollSessionMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    .line 511
    invoke-virtual {v8, v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->isEnrollSession(I)Z

    .line 514
    move-result v8

    .line 515
    if-eqz v8, :cond_11

    .line 517
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 519
    iget-object v8, v8, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 521
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 524
    move-result v9

    .line 525
    iget-object v8, v8, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mEnrollSessionMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    .line 527
    invoke-virtual {v8, v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->revokeChallenge(I)V

    .line 530
    :cond_11
    if-nez v3, :cond_12

    .line 532
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 534
    invoke-virtual {v0, v13}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 537
    move-result v0

    .line 538
    if-eq v13, v0, :cond_12

    .line 540
    invoke-static {v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->copyOptions(ILandroid/hardware/fingerprint/FingerprintAuthenticateOptions;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 543
    move-result-object v0

    .line 544
    move-object/from16 v20, v0

    .line 546
    goto :goto_a

    .line 547
    :cond_12
    move-object/from16 v20, v2

    .line 549
    :goto_a
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 551
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 553
    new-instance v2, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 555
    invoke-direct {v2, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 558
    if-nez v3, :cond_14

    .line 560
    if-eqz v4, :cond_13

    .line 562
    goto :goto_b

    .line 563
    :cond_13
    move/from16 v25, v6

    .line 565
    goto :goto_c

    .line 566
    :cond_14
    :goto_b
    move/from16 v25, v5

    .line 568
    :goto_c
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 570
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 572
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 575
    move-result-wide v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 576
    const/16 v18, 0x0

    .line 578
    move-object v1, v14

    .line 579
    move-object v14, v0

    .line 580
    move-object v0, v15

    .line 581
    move-object/from16 v15, p1

    .line 583
    move-wide/from16 v16, p2

    .line 585
    move-object/from16 v19, v2

    .line 587
    move-wide/from16 v21, v3

    .line 589
    move-object/from16 v26, v0

    .line 591
    :try_start_7
    invoke-virtual/range {v14 .. v26}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JZIZLandroid/os/Bundle;)V

    .line 594
    monitor-exit v1

    .line 595
    return-wide v3

    .line 596
    :catchall_3
    move-exception v0

    .line 597
    goto :goto_10

    .line 598
    :goto_d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    throw v0

    .line 602
    :goto_e
    const-string v0, "FingerprintService"

    .line 604
    const-string v2, "Null provider for authenticate"

    .line 606
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    monitor-exit v1

    .line 610
    const-wide/16 v0, -0x1

    .line 612
    return-wide v0

    .line 613
    :goto_f
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw v0

    .line 617
    :goto_10
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 618
    throw v0
.end method

.method public final semBioSysUiRequest(IIJLjava/lang/String;)I
    .locals 18

    .line 1
    move/from16 v0, p1

    .line 3
    move/from16 v1, p2

    .line 5
    move-wide/from16 v2, p3

    .line 7
    move-object/from16 v4, p5

    .line 9
    const/4 v5, 0x1

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semBioSysUiRequest_enforcePermission()V

    .line 13
    move-object/from16 v6, p0

    .line 15
    iget-object v6, v6, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 17
    iget-object v6, v6, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 19
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string v7, "FingerprintService.Ext"

    .line 24
    new-instance v8, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v9, "handleBioSysUiRequest: "

    .line 29
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v9, ", "

    .line 37
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v9, ", "

    .line 45
    const-string v10, ", "

    .line 47
    invoke-static {v8, v9, v2, v3, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 50
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v8

    .line 57
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    move-result-wide v7

    .line 64
    const/16 v9, 0x64

    .line 66
    const/4 v10, 0x0

    .line 67
    if-eq v0, v9, :cond_8

    .line 69
    packed-switch v0, :pswitch_data_0

    .line 72
    goto/16 :goto_5

    .line 74
    :pswitch_0
    :try_start_0
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLocalHbmController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;

    .line 76
    if-eqz v0, :cond_9

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->handleLocalHbm(I)V

    .line 81
    goto/16 :goto_5

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto/16 :goto_6

    .line 86
    :pswitch_1
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    sget-object v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 93
    if-ne v1, v5, :cond_0

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    move v5, v10

    .line 97
    :goto_0
    iget-object v1, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mKeepBind:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    if-nez v5, :cond_9

    .line 104
    iget-object v1, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 106
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;

    .line 108
    const-wide/16 v2, 0xfa0

    .line 110
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    goto/16 :goto_5

    .line 115
    :pswitch_2
    iput-wide v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIconDrawnTime:J

    .line 117
    goto/16 :goto_5

    .line 119
    :pswitch_3
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    .line 121
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 124
    if-eqz v0, :cond_1

    .line 126
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    .line 128
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;

    .line 130
    invoke-direct {v3, v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;I)V

    .line 133
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_1
    monitor-exit v1

    .line 137
    goto/16 :goto_5

    .line 139
    :catchall_1
    move-exception v0

    .line 140
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    :try_start_2
    throw v0

    .line 142
    :pswitch_4
    invoke-virtual {v6, v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleTouchEvent(IJ)V

    .line 145
    goto/16 :goto_5

    .line 147
    :pswitch_5
    if-ne v1, v5, :cond_3

    .line 149
    const-wide/16 v0, 0x0

    .line 151
    cmp-long v0, v2, v0

    .line 153
    if-gtz v0, :cond_2

    .line 155
    const/16 v0, 0x7d0

    .line 157
    goto :goto_1

    .line 158
    :cond_2
    long-to-int v0, v2

    .line 159
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    const-string v2, "acquireDvfs: "

    .line 163
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    const-string v2, "FingerprintService.Ext"

    .line 175
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 181
    move-result-object v11

    .line 182
    iget-object v12, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 184
    iget v1, v11, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mFingerprintHalTid:I

    .line 186
    const-string v15, "FINGERPRINT_SERVICE"

    .line 188
    const/16 v13, 0xdad

    .line 190
    const/4 v14, 0x2

    .line 191
    move/from16 v16, v0

    .line 193
    move/from16 v17, v1

    .line 195
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireDvfs(Landroid/content/Context;IILjava/lang/String;II)V

    .line 198
    goto/16 :goto_5

    .line 200
    :cond_3
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 203
    move-result-object v0

    .line 204
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 206
    const/4 v2, 0x2

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    .line 210
    goto/16 :goto_5

    .line 212
    :pswitch_6
    invoke-virtual {v6, v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleBioSysOpticalControl(IJ)V

    .line 215
    goto :goto_5

    .line 216
    :pswitch_7
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 218
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 221
    move-result v10

    .line 222
    goto :goto_5

    .line 223
    :pswitch_8
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 225
    if-eqz v0, :cond_9

    .line 227
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 229
    if-ne v1, v5, :cond_4

    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 236
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 238
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 240
    const-string v1, "1"

    .line 242
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->setHwLightMode(Ljava/lang/String;)V

    .line 245
    goto :goto_5

    .line 246
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 251
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 253
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 255
    const-string v1, "0"

    .line 257
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->setHwLightMode(Ljava/lang/String;)V

    .line 260
    goto :goto_5

    .line 261
    :pswitch_9
    invoke-virtual {v6, v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleBioSysTspControl(ILjava/lang/String;)V

    .line 264
    goto :goto_5

    .line 265
    :pswitch_a
    if-ne v1, v5, :cond_5

    .line 267
    goto :goto_2

    .line 268
    :cond_5
    move v5, v10

    .line 269
    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->requestDozeHLPM(Z)V

    .line 272
    goto :goto_5

    .line 273
    :pswitch_b
    if-ne v1, v5, :cond_6

    .line 275
    goto :goto_3

    .line 276
    :cond_6
    move v5, v10

    .line 277
    :goto_3
    invoke-virtual {v6, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->requestDozeMode(Z)V

    .line 280
    goto :goto_5

    .line 281
    :pswitch_c
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 283
    if-eqz v0, :cond_9

    .line 285
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 292
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 294
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 296
    if-ne v1, v5, :cond_7

    .line 298
    goto :goto_4

    .line 299
    :cond_7
    move v5, v10

    .line 300
    :goto_4
    invoke-virtual {v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->setDisplayStateLimit(Z)V

    .line 303
    goto :goto_5

    .line 304
    :cond_8
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleQcomForceQDB()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :cond_9
    :goto_5
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    return v10

    .line 311
    :goto_6
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw v0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final semCanChangeDeviceColorMode()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semCanChangeDeviceColorMode_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 23
    sget-object p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 25
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 27
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

    .line 29
    if-eqz p0, :cond_0

    .line 31
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    .line 36
    xor-int/2addr v1, p0

    .line 37
    monitor-exit v0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_0
    :goto_0
    return v1
.end method

.method public final semForceCBGE()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semForceCBGE_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 16
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 20
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    check-cast p0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result p0

    .line 28
    const/16 v1, 0x15

    .line 30
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 32
    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(II)I

    .line 35
    :cond_0
    return-void
.end method

.method public final semGetDaemonVersion()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetDaemonVersion_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetDaemonSdkVersion()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, ""

    .line 23
    :goto_0
    return-object p0
.end method

.method public final semGetIconBottomMargin()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 21
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v1

    .line 27
    :goto_0
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 38
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 40
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 42
    const/4 v2, -0x1

    .line 43
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;

    .line 46
    move-result-object v0

    .line 47
    const-string/jumbo v1, "window"

    .line 50
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Landroid/view/WindowManager;

    .line 56
    new-instance v1, Landroid/graphics/Point;

    .line 58
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 61
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 68
    iget p0, v1, Landroid/graphics/Point;->y:I

    .line 70
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 72
    sub-int/2addr p0, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/4 p0, 0x0

    .line 75
    :goto_1
    return p0
.end method

.method public final semGetMaxEnrollmentNumber()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 29
    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const-string p0, "FingerprintService"

    .line 34
    const-string v0, "Null prop"

    .line 36
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 p0, 0x4

    .line 40
    return p0
.end method

.method public final semGetRemainingLockoutTime(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetRemainingLockoutTime_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 9
    move-result p1

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 20
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetRemainingLockoutTime(I)I

    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final semGetSecurityLevel()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSecurityLevel_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetSecurityLevel$1()I

    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    :goto_0
    return p0
.end method

.method public final semGetSensorAreaInDisplay(IILandroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 10
    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 14
    if-nez p1, :cond_4

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    sget-boolean p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 21
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 23
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 25
    const-string/jumbo p2, "getFodSensorAreaRectForKeyguard: "

    .line 28
    const-string p3, "FingerprintService"

    .line 30
    const/4 v0, -0x1

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;

    .line 35
    move-result-object v0

    .line 36
    :try_start_0
    const-string/jumbo v1, "window"

    .line 39
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/view/WindowManager;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 52
    move-result-object p0

    .line 53
    iget-object v2, p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 55
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x5

    .line 60
    invoke-static {v3, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 63
    move-result v2

    .line 64
    float-to-int v2, v2

    .line 65
    iget-object v4, p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    .line 67
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 70
    move-result v4

    .line 71
    invoke-static {v3, v4, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 74
    move-result v4

    .line 75
    float-to-int v4, v4

    .line 76
    sub-int/2addr v2, v4

    .line 77
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 82
    move-result p1

    .line 83
    invoke-static {v3, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 86
    move-result p0

    .line 87
    float-to-int p0, p0

    .line 88
    add-int/2addr v2, p0

    .line 89
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_3

    .line 99
    const/4 p1, 0x1

    .line 100
    if-eq p0, p1, :cond_2

    .line 102
    const/4 p1, 0x2

    .line 103
    if-eq p0, p1, :cond_1

    .line 105
    const/4 p1, 0x3

    .line 106
    if-eq p0, p1, :cond_0

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 111
    add-int/2addr p0, v2

    .line 112
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 114
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 116
    sub-int/2addr p0, v2

    .line 117
    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 119
    iget p0, v0, Landroid/graphics/Rect;->top:I

    .line 121
    sub-int/2addr p0, v2

    .line 122
    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 124
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 126
    add-int/2addr p0, v2

    .line 127
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception p0

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 134
    add-int/2addr p0, v2

    .line 135
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 137
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 139
    sub-int/2addr p0, v2

    .line 140
    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 142
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 144
    add-int/2addr p0, v2

    .line 145
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 147
    iget p0, v0, Landroid/graphics/Rect;->top:I

    .line 149
    sub-int/2addr p0, v2

    .line 150
    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 152
    goto :goto_1

    .line 153
    :cond_2
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 155
    sub-int/2addr p0, v2

    .line 156
    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 158
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 160
    add-int/2addr p0, v2

    .line 161
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 163
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 165
    add-int/2addr p0, v2

    .line 166
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 168
    iget p0, v0, Landroid/graphics/Rect;->top:I

    .line 170
    sub-int/2addr p0, v2

    .line 171
    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 173
    goto :goto_1

    .line 174
    :cond_3
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 176
    sub-int/2addr p0, v2

    .line 177
    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 179
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 181
    add-int/2addr p0, v2

    .line 182
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 184
    iget p0, v0, Landroid/graphics/Rect;->top:I

    .line 186
    sub-int/2addr p0, v2

    .line 187
    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 189
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 191
    add-int/2addr p0, v2

    .line 192
    iput p0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_1

    .line 195
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-static {p0, p1, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 203
    :goto_1
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 205
    if-eqz p0, :cond_6

    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p0

    .line 223
    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    goto :goto_2

    .line 227
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    sget-boolean p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 232
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 234
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;

    .line 239
    move-result-object v0

    .line 240
    goto :goto_2

    .line 241
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    .line 243
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 246
    :cond_6
    :goto_2
    return-object v0
.end method

.method public final semGetSensorData(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorData_enforcePermission()V

    .line 4
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 10
    sget-object p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInDisplaySensorArea(Landroid/os/Bundle;)V

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_SIDE:Z

    .line 18
    if-eqz p0, :cond_2

    .line 20
    new-instance p0, Ljava/io/File;

    .line 22
    const-string v0, "/sys/class/fingerprint/fingerprint/position"

    .line 24
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_2

    .line 33
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 35
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 37
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    const-string v1, "\\,"

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result p0

    .line 63
    const/4 v1, 0x2

    .line 64
    if-lt p0, v1, :cond_2

    .line 66
    const/4 p0, 0x0

    .line 67
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/lang/String;

    .line 73
    const-string v2, "NA"

    .line 75
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_2

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result p0

    .line 85
    if-ne p0, v1, :cond_1

    .line 87
    const-string p0, "0"

    .line 89
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    const-string/jumbo p0, "sem_area"

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 101
    move-result v1

    .line 102
    new-array v1, v1, [Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    check-cast v0, [Ljava/lang/String;

    .line 110
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_2

    .line 114
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v0, "semGetSensorPosition: "

    .line 119
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v0, "FingerprintService"

    .line 124
    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 127
    :cond_2
    :goto_2
    return-void
.end method

.method public final semGetSensorInfo()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorInfo_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, ""

    .line 14
    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 19
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 21
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_1

    .line 35
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetSensorInfo(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    :cond_1
    return-object v1
.end method

.method public final semGetSensorStatus()I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const p0, 0x186c8

    .line 15
    goto/16 :goto_2

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 19
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 27
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 29
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x6

    .line 38
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 40
    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(II)I

    .line 43
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, -0x2

    .line 46
    :goto_0
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLatestSensorStatus:I

    .line 48
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 56
    move-result-object p0

    .line 57
    const v1, 0x186ca

    .line 60
    const/4 v2, 0x0

    .line 61
    if-ne v0, v1, :cond_2

    .line 63
    iget-boolean v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSensorErrorForDQA:Z

    .line 65
    if-nez v1, :cond_3

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v3, "pre:"

    .line 72
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v3, ";gesture:false;first:"

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-boolean v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    const-string/jumbo v4, "fpInsertLogSensorStatus: "

    .line 99
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v4, ", "

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    const-string v4, "BiometricService.AM"

    .line 119
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 124
    const-string v4, "FPST"

    .line 126
    const/4 v5, -0x1

    .line 127
    const/4 v6, 0x2

    .line 128
    invoke-direct {v3, v5, v6, v4, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 134
    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSensorErrorForDQA:Z

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSensorErrorForDQA:Z

    .line 140
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    .line 142
    move p0, v0

    .line 143
    :goto_2
    return p0
.end method

.method public final semGetSensorTestResult([B)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorTestResult_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 16
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 20
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    check-cast p0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v2

    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 31
    const/16 v3, 0x13

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    move-object v6, p1

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 39
    move-result p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, -0x2

    .line 42
    :goto_0
    return p0
.end method

.method public final semGetTrustAppVersion()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetTrustAppVersion_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 16
    const/16 v0, 0x32

    .line 18
    new-array v7, v0, [B

    .line 20
    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 22
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 24
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 26
    check-cast p0, Ljava/lang/Integer;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v2

    .line 32
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 34
    const/16 v3, 0x2710

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v6, v7

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 42
    move-result p0

    .line 43
    if-lez p0, :cond_1

    .line 45
    if-lt v0, p0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/String;

    .line 49
    invoke-static {v7, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 52
    move-result-object p0

    .line 53
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 55
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v0, ""

    .line 61
    :goto_0
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 63
    if-eqz p0, :cond_2

    .line 65
    const-string p0, "TrustApp Version: "

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    const-string v1, "FingerprintService.Ext"

    .line 73
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public final semGetUserIdList()[Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetUserIdList_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 16
    const/16 v0, 0x100

    .line 18
    new-array v0, v0, [B

    .line 20
    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 22
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 24
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 26
    check-cast p0, Ljava/lang/Integer;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v2

    .line 32
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 34
    const/16 v3, 0xc

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v6, v0

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 42
    move-result p0

    .line 43
    if-lez p0, :cond_0

    .line 45
    new-instance v1, Ljava/lang/String;

    .line 47
    const/4 v2, 0x0

    .line 48
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 50
    invoke-direct {v1, v0, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 53
    const-string p0, ":"

    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 p0, 0x0

    .line 61
    :goto_0
    return-object p0
.end method

.method public final semHasFeature(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 p0, 0x1

    .line 9
    if-eq p1, p0, :cond_2

    .line 11
    const/4 p0, 0x2

    .line 12
    if-eq p1, p0, :cond_1

    .line 14
    const/4 p0, 0x3

    .line 15
    if-eq p1, p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 26
    :goto_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final semIsEnrollSession()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semIsEnrollSession_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 20
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v0

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mEnrollSessionMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->isEnrollSession(I)Z

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final semIsTemplateDbCorrupted()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semIsTemplateDbCorrupted_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 16
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 20
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    check-cast p0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v2

    .line 28
    const/4 p0, 0x5

    .line 29
    new-array v6, p0, [B

    .line 31
    move-object v1, v0

    .line 32
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/16 v3, 0xb

    .line 38
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 41
    move-result p0

    .line 42
    const/4 v0, -0x1

    .line 43
    if-ne p0, v0, :cond_0

    .line 45
    const/4 p0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    :goto_0
    return p0
.end method

.method public final semMoveSensorIconInDisplay(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semMoveSensorIconInDisplay_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 15
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 17
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, p2

    .line 23
    :goto_0
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 25
    if-nez v0, :cond_1

    .line 27
    goto/16 :goto_1

    .line 29
    :cond_1
    check-cast p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 31
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 37
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    sget-object p1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 44
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 46
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 48
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 50
    new-instance v1, Landroid/os/Bundle;

    .line 52
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    .line 57
    if-nez v2, :cond_2

    .line 59
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    .line 61
    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    .line 66
    :cond_2
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    .line 68
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconLocationIndex:I

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 72
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconLocationIndex:I

    .line 74
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    .line 76
    mul-int v3, v2, v2

    .line 78
    rem-int/2addr v0, v3

    .line 79
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconLocationIndex:I

    .line 81
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    .line 83
    aget v0, v3, v0

    .line 85
    div-int v3, v0, v2

    .line 87
    shr-int/lit8 v4, v2, 0x1

    .line 89
    sub-int/2addr v3, v4

    .line 90
    iput v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mX:I

    .line 92
    rem-int/2addr v0, v2

    .line 93
    sub-int/2addr v0, v4

    .line 94
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mY:I

    .line 96
    const-string/jumbo v0, "x"

    .line 99
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v0, "y"

    .line 105
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mY:I

    .line 107
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v2, "getNextPosition: "

    .line 115
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mX:I

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v2, ", "

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mY:I

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    const-string v0, "FingerprintService"

    .line 139
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    new-instance p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;

    .line 147
    const/16 v0, 0x72

    .line 149
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IILandroid/os/Bundle;)V

    .line 153
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 156
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 159
    move-result-object p0

    .line 160
    const-string p1, "FPMV"

    .line 162
    const/4 v0, 0x2

    .line 163
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_3
    :goto_1
    return-void
.end method

.method public final semOpenSession()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semOpenSession_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 28
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 48
    iget v2, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 50
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mEnrollSessionMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    .line 52
    invoke-virtual {v3, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->isEnrollSession(I)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 58
    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 60
    invoke-virtual {v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->revokeChallenge(I)V

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 67
    move-result-object p0

    .line 68
    if-nez p0, :cond_3

    .line 70
    const/4 p0, 0x0

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 74
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semOpenTzSession()V

    .line 77
    const/4 p0, 0x1

    .line 78
    :goto_1
    return p0
.end method

.method public final semPauseEnroll()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semPauseEnroll_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 20
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v0

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 36
    if-eqz p0, :cond_1

    .line 38
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 40
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda10;

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V

    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_1
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method public final semProcessFido(I[B[BLjava/lang/String;)I
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 11
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    const-string/jumbo v1, "com.samsung.android.permission.REQUEST_PROCESS_FIDO"

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v1, "process FIDO: "

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string p1, ", "

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    const-string p4, "FingerprintService"

    .line 46
    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    move-result-wide v0

    .line 53
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 55
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 57
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 59
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_1

    .line 65
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 67
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 69
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 71
    check-cast p0, Ljava/lang/Integer;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result p0

    .line 77
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 79
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semProcessFidoCommand(I[B[B)I

    .line 82
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 p0, -0x2

    .line 85
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    return p0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    throw p0
.end method

.method public final semRegisterAodController(Landroid/os/IBinder;Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRegisterAodController_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string p1, "FingerprintService.Ext"

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v1, "registerAodController: "

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 40
    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->createAodController()Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 58
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    .line 60
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;

    .line 62
    const/4 v2, 0x4

    .line 63
    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Object;I)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    monitor-exit p1

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final semRegisterDisplayBrightnessCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRegisterDisplayBrightnessCallback_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda2;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 21
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightness:I

    .line 23
    return p0
.end method

.method public final semRegisterDisplayStateCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRegisterDisplayStateCallback_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda2;

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 21
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    .line 23
    return p0
.end method

.method public final semRemoveMaskView(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRemoveMaskView_enforcePermission()V

    .line 4
    if-eqz p1, :cond_2

    .line 6
    if-nez p2, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string/jumbo v0, "removeMaskView: "

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    const-string v0, "FingerprintService.Ext"

    .line 25
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-boolean p2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 30
    if-eqz p2, :cond_1

    .line 32
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda2;

    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :cond_2
    :goto_0
    const/4 p0, -0x1

    .line 46
    return p0
.end method

.method public final semRequest(Landroid/os/IBinder;I[B[BIILjava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    invoke-virtual {p1, p6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUserOrWorkProfileId(I)I

    .line 6
    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance p6, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo p8, "startRequest("

    .line 22
    invoke-direct {p6, p8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string p8, ") called from "

    .line 30
    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string p7, ", "

    .line 38
    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    const-string p6, "FingerprintService.Ext"

    .line 56
    invoke-static {p6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 61
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_0

    .line 67
    const-string/jumbo p0, "startRequest: No provider"

    .line 70
    invoke-static {p6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 p0, -0x1

    .line 74
    goto :goto_2

    .line 75
    :cond_0
    const/16 p6, 0x3f2

    .line 77
    if-ne p2, p6, :cond_4

    .line 79
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 81
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 83
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 85
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 88
    move-result-object p1

    .line 89
    instance-of p1, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 91
    const/4 p2, 0x0

    .line 92
    if-eqz p1, :cond_3

    .line 94
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 96
    const-wide/16 p3, 0x2710

    .line 98
    if-eqz p1, :cond_1

    .line 100
    iget-wide p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mCaptureStartedTime:J

    .line 102
    add-long/2addr p0, p3

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 106
    move-result-wide p3

    .line 107
    :goto_0
    sub-long/2addr p0, p3

    .line 108
    long-to-int p0, p0

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 112
    if-eqz p1, :cond_2

    .line 114
    iget-wide p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIconDrawnTime:J

    .line 116
    add-long/2addr p0, p3

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 120
    move-result-wide p3

    .line 121
    goto :goto_0

    .line 122
    :cond_2
    move p0, p2

    .line 123
    :goto_1
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 126
    move-result p0

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    move p0, p2

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 132
    const-string p6, "android.permission.MANAGE_FINGERPRINT"

    .line 134
    invoke-static {p0, p6}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 139
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 141
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 143
    check-cast p1, Ljava/lang/Integer;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 148
    move-result v1

    .line 149
    move-object v0, p0

    .line 150
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 152
    move v2, p2

    .line 153
    move v3, p5

    .line 154
    move-object v4, p3

    .line 155
    move-object v5, p4

    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 159
    move-result p0

    .line 160
    :goto_2
    return p0
.end method

.method public final semResumeEnroll()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semResumeEnroll_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 20
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v0

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 36
    if-eqz p0, :cond_1

    .line 38
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 40
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda10;

    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V

    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_1
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method public final semRunSensorTest(Landroid/os/IBinder;IILcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRunSensorTest_enforcePermission()V

    .line 4
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p2, p2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_0

    .line 14
    const/4 p0, -0x1

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 20
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    check-cast p2, Ljava/lang/Integer;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result p2

    .line 28
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 34
    new-instance p3, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 36
    invoke-direct {p3, p4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)V

    .line 39
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 41
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semScheduleSensorTest(ILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    .line 44
    const/4 p0, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, -0x2

    .line 47
    :goto_0
    return p0
.end method

.method public final semSetCalibrationMode(Landroid/os/IBinder;ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetCalibrationMode_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "setCalibrationMode: "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " from "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "FingerprintService.Ext"

    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 41
    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;

    .line 47
    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    :cond_0
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public final semSetFlagForIFAA(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetFlagForIFAA_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "setFlagForIFAA: "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "FingerprintService.Ext"

    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/util/Pair;

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIFAAFlag:Landroid/util/Pair;

    .line 56
    :cond_0
    return-void
.end method

.method public final semSetFodStrictMode(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetFodStrictMode_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 13
    if-eqz v0, :cond_2

    .line 15
    const-string v0, "FingerprintService.Ext"

    .line 17
    const-string/jumbo v1, "setFodStrictMode: "

    .line 20
    invoke-static {v1, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 31
    move-result-object p0

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsInterruptDelayModeOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    monitor-exit p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsStrictMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-ne v0, p1, :cond_1

    .line 43
    monitor-exit p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsStrictMode:Z

    .line 47
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodEnable()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    monitor-exit p0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0

    .line 54
    throw p1

    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public final semSetScreenStatus(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetScreenStatus_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v0

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v2, "setScreenStatusFromKeyguard: "

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const-string v2, "FingerprintService.Ext"

    .line 34
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 39
    invoke-virtual {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->bind()V

    .line 42
    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;

    .line 44
    const/16 v3, 0x73

    .line 46
    invoke-direct {v2, v1, v3, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 52
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;

    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;ZI)V

    .line 60
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->unregisterAodController()V

    .line 68
    :cond_1
    return v0
.end method

.method public final semShowBouncerScreen(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semShowBouncerScreen_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne p1, v2, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v1

    .line 20
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    sget-object p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;

    .line 35
    const/16 v2, 0x75

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v0, p0, v2, p1, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IILandroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 44
    :cond_1
    return v1
.end method

.method public final semShowUdfpsIcon()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 5
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const-string p0, "FingerprintService.Ext"

    .line 11
    const-string/jumbo v0, "showUdfpsIcon"

    .line 14
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 19
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->bind()V

    .line 22
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;

    .line 24
    const/16 v1, 0x77

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 33
    :cond_0
    return-void
.end method

.method public final semUnregisterAodController(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semUnregisterAodController_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->unregisterAodController()V

    .line 11
    return-void
.end method

.method public final semUnregisterDisplayBrightnessCallback()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semUnregisterDisplayBrightnessCallback_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method

.method public final semUnregisterDisplayStateCallback()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semUnregisterDisplayStateCallback_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method

.method public final semUpdateTrustApp(Ljava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semUpdateTrustApp_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v1, "updateTrustApp: ["

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "]"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string v1, "FingerprintService.Ext"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 42
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_1

    .line 48
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 50
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 52
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    check-cast p0, Ljava/lang/Integer;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result v6

    .line 60
    new-instance v3, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 62
    invoke-direct {v3, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)V

    .line 65
    move-object v2, v0

    .line 66
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 68
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda17;

    .line 72
    move-object v1, p2

    .line 73
    move-object v4, p3

    .line 74
    move-object v5, p1

    .line 75
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :cond_1
    return-void
.end method

.method public final setIgnoreDisplayTouches(JIZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setIgnoreDisplayTouches_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 8
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 14
    if-nez p0, :cond_0

    .line 16
    const-string p0, "No matching provider for setIgnoreDisplayTouches, sensorId: "

    .line 18
    const-string p1, "FingerprintService"

    .line 20
    invoke-static {p3, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void

    .line 24
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->setIgnoreDisplayTouches(JIZ)V

    .line 29
    return-void
.end method

.method public final setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setUdfpsOverlayController_enforcePermission()V

    .line 4
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo p1, "setUdfpsOverlayController: "

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    const-string p1, "FingerprintService"

    .line 29
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

.method public final startPreparedClient(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->startPreparedClient_enforcePermission()V

    .line 4
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 6
    const-string v1, "FingerprintService"

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo v0, "startPreparedClient: "

    .line 13
    invoke-static {p2, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 26
    if-nez p0, :cond_1

    .line 28
    const-string p0, "Null provider for startPreparedClient"

    .line 30
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void

    .line 34
    :cond_1
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 36
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;III)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method public final unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->unregisterAuthenticationStateListener_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method
