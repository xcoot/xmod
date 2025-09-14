.class public final Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public mIsRegisterListener:Z

.field public final mPrxSensor:Landroid/hardware/Sensor;

.field public mSensorThread:Landroid/os/HandlerThread;

.field public final mSmgr:Landroid/hardware/SensorManager;

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mIsRegisterListener:Z

    .line 9
    const-string/jumbo p1, "sensor"

    .line 12
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/hardware/SensorManager;

    .line 18
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mSmgr:Landroid/hardware/SensorManager;

    .line 20
    if-eqz p1, :cond_0

    .line 22
    const/16 p2, 0x8

    .line 24
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mPrxSensor:Landroid/hardware/Sensor;

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 5
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 12
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x8

    .line 18
    if-ne v0, v1, :cond_2

    .line 20
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 22
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, [F

    .line 28
    const/4 v0, 0x0

    .line 29
    aget v1, p1, v0

    .line 31
    const/4 v2, 0x0

    .line 32
    cmpl-float v1, v1, v2

    .line 34
    if-nez v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 38
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 40
    const/4 v2, 0x4

    .line 41
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 46
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 48
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "[PROXIMITY] onSensorChanged : "

    .line 55
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    aget p1, p1, v0

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    const-string p1, "SemFace"

    .line 69
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    return-void
.end method
