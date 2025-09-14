.class public final Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

.field public final synthetic val$newUserId:I

.field public final synthetic val$sensorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->val$sensorId:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->val$newUserId:I

    .line 10
    return-void
.end method


# virtual methods
.method public final onEnrollSuccess()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 5
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 7
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->val$sensorId:I

    .line 9
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->val$newUserId:I

    .line 11
    invoke-virtual {v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 14
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 16
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 30
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;

    .line 32
    const/4 v4, 0x2

    .line 33
    invoke-direct {v3, v0, p0, v2, v4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;III)V

    .line 36
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    :goto_0
    return-void
.end method

.method public final onHardwareUnavailable()V
    .locals 2

    .line 1
    const-string v0, "Sensor"

    .line 3
    const-string v1, "Face sensor hardware unavailable."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 15
    return-void
.end method
