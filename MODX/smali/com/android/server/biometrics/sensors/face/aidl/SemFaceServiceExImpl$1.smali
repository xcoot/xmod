.class public final Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "SemFace"

    .line 8
    if-eq v0, v1, :cond_1

    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq v0, v1, :cond_0

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    const-string v0, "Unknown message:"

    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget p1, p1, Landroid/os/Message;->what:I

    .line 22
    invoke-static {p0, p1, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 25
    goto/16 :goto_0

    .line 27
    :cond_0
    const-string/jumbo p1, "handleMessage: MSG_PROXIMITY_SENSOR_ERROR"

    .line 30
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/16 p1, 0x3e9

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(I)V

    .line 38
    goto/16 :goto_0

    .line 40
    :cond_1
    const-string/jumbo p1, "handleMessage : MSG_INACTIVITY_TIMER_EXPIRED(TIMEOUT)"

    .line 43
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsTimeout:Z

    .line 48
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 50
    const/4 v0, -0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x3

    .line 53
    if-ne p1, v1, :cond_3

    .line 55
    invoke-virtual {p0, v4, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onExtended(II)V

    .line 58
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancelInternal()V

    .line 61
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCheckedTooDark:Z

    .line 63
    if-eqz p1, :cond_2

    .line 65
    const/16 p1, 0x8

    .line 67
    const v0, 0x186a2

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendError(II)V

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0, v4, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendError(II)V

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 v5, 0x2

    .line 79
    if-ne p1, v5, :cond_5

    .line 81
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 83
    iget v6, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 85
    iget v7, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 87
    iget p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 89
    filled-new-array {v6, v7, p1}, [I

    .line 92
    move-result-object p1

    .line 93
    iget-boolean v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticateResult:Z

    .line 95
    const-string v7, ":"

    .line 97
    if-eqz v6, :cond_4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v4, "no match timeout BILG "

    .line 104
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    aget v3, p1, v3

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    aget v1, p1, v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    aget p1, p1, v5

    .line 125
    invoke-static {v0, p1, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 130
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 132
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 135
    move-result-object p0

    .line 136
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 138
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFailed()V

    .line 141
    goto :goto_0

    .line 142
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 144
    const-string/jumbo v8, "no face BILG "

    .line 147
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    aget v8, p1, v3

    .line 152
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    aget v1, p1, v1

    .line 160
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    aget p1, p1, v5

    .line 168
    invoke-static {v6, p1, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 171
    invoke-virtual {p0, v4, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onExtended(II)V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancelInternal()V

    .line 177
    invoke-virtual {p0, v4, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendError(II)V

    .line 180
    :cond_5
    :goto_0
    return-void
.end method
