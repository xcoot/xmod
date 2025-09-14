.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;JI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 5
    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;->f$1:J

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 8
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;->f$1:J

    .line 10
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-wide v3, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    .line 17
    cmp-long p0, v1, v3

    .line 19
    if-nez p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 26
    invoke-interface {v0, p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 32
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;->f$1:J

    .line 34
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    .line 36
    iget p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 38
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    :try_start_0
    iget-object v3, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 45
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 47
    if-eqz v4, :cond_1

    .line 49
    invoke-interface {v4, p0, v0, v1, v2}, Landroid/hardware/face/IFaceServiceReceiver;->onChallengeGenerated(IIJ)V

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 55
    if-eqz v3, :cond_2

    .line 57
    invoke-interface {v3, p0, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onChallengeGenerated(IIJ)V

    .line 60
    :cond_2
    :goto_1
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-interface {p0, p1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string v0, "FaceGenerateChallengeClient"

    .line 70
    const-string v1, "Unable to send challenge"

    .line 72
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-interface {p0, p1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 81
    :goto_2
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
