.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

.field public final synthetic val$requestId:J

.field public final synthetic val$sensorId:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    .line 10
    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    .line 12
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 14
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 3
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 5
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;

    .line 11
    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    .line 13
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 15
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    .line 17
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    .line 19
    move-object v0, p2

    .line 20
    move-object v1, p0

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 3
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 5
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 8
    move-result-object p1

    .line 9
    new-instance v6, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;

    .line 11
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    .line 13
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    .line 15
    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    .line 17
    move-object v0, v6

    .line 18
    move-object v1, p0

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;IIJ)V

    .line 22
    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method
