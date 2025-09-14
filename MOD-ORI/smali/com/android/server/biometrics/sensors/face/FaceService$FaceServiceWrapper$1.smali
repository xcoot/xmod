.class public final Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;
.super Landroid/hardware/face/FaceServiceReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final numSensors:I

.field public sensorsFinishedRemoving:I

.field public final synthetic val$receiver:Landroid/hardware/face/IFaceServiceReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Landroid/hardware/face/IFaceServiceReceiver;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/face/FaceServiceReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    .line 8
    .line 9
    iget-object p2, p1, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final onError(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "removeAll internalReceiver : error = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", vendor = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "FaceService"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 30
    .line 31
    invoke-interface {p0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onRemoved(Landroid/hardware/face/Face;I)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo p2, "sensorsFinishedRemoving: "

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, ", numSensors: "

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    .line 28
    .line 29
    const-string v0, "FaceService"

    .line 30
    .line 31
    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    .line 35
    .line 36
    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    .line 37
    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 41
    .line 42
    new-instance p1, Landroid/hardware/face/Face;

    .line 43
    .line 44
    const-string p2, ""

    .line 45
    .line 46
    const-wide/16 v0, 0x0

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {p1, p2, v2, v0, v1}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p0, p1, v2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(Landroid/hardware/face/Face;I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method
