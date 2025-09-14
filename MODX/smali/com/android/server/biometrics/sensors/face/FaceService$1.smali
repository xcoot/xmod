.class public final Lcom/android/server/biometrics/sensors/face/FaceService$1;
.super Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$1;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3
    invoke-direct {p0}, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$1;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    iput-object p0, p1, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mProviders:Ljava/util/List;

    .line 18
    const/4 p0, 0x0

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit p1

    .line 26
    throw p0
.end method
