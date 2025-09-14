.class public final Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricCameraManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;->this$0:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraAvailable(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;->this$0:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public final onCameraUnavailable(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;->this$0:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method
