.class public final synthetic Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getHalInstance()Landroid/hardware/biometrics/face/IFace;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mH:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$1;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
