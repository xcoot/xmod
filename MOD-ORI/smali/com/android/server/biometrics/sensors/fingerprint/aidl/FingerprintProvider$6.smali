.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic val$requestId:J

.field public final synthetic val$sensorId:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->val$userId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->val$sensorId:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->val$requestId:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onBiometricAction()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onBiometricAction()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 4
    .line 5
    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->val$sensorId:I

    .line 17
    .line 18
    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->val$requestId:J

    .line 19
    .line 20
    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->val$userId:I

    .line 21
    .line 22
    move-object v2, v9

    .line 23
    move-object v3, p0

    .line 24
    move v8, p2

    .line 25
    invoke-direct/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;IIJZ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->val$userId:I

    .line 17
    .line 18
    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->val$sensorId:I

    .line 19
    .line 20
    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->val$requestId:J

    .line 21
    .line 22
    move-object v2, v8

    .line 23
    move-object v3, p0

    .line 24
    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;IIJ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
