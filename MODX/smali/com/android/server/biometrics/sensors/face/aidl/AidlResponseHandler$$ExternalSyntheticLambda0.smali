.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

.field public final synthetic f$1:Landroid/hardware/face/Face;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Landroid/hardware/face/Face;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/face/Face;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/face/Face;

    .line 5
    check-cast p1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v3, "e="

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEarlyStop:Z

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, ", n="

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, ", t="

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsTimeout:Z

    .line 44
    const-string v4, "SemFace"

    .line 46
    invoke-static {v4, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 49
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 51
    iget-boolean v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 53
    const/4 v3, 0x1

    .line 54
    if-eqz v2, :cond_0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 59
    if-nez v2, :cond_1

    .line 61
    const-string/jumbo p0, "onAuthenticated: skip events after stop()"

    .line 64
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 70
    if-eqz v2, :cond_2

    .line 72
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 74
    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendFailed()V

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iput-boolean v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticateResult:Z

    .line 82
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEarlyStop:Z

    .line 84
    if-nez v2, :cond_3

    .line 86
    iget v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    .line 88
    if-gtz v2, :cond_3

    .line 90
    iget-boolean v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsTimeout:Z

    .line 92
    if-eqz v1, :cond_6

    .line 94
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    const-string/jumbo v2, "no match BILG "

    .line 104
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v2, 0x2

    .line 108
    const/4 v4, -0x1

    .line 109
    invoke-virtual {v1, v2, v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onExtended(II)V

    .line 112
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancelInternal()V

    .line 115
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 117
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_5

    .line 123
    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 125
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->canIgnoreLockout()Z

    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_5

    .line 131
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 133
    if-eqz v1, :cond_5

    .line 135
    iget v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 137
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->addFailedAttemptForUser(I)V

    .line 140
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 142
    iget v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 144
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->getLockoutModeForUser(I)I

    .line 147
    move-result v1

    .line 148
    if-ne v1, v2, :cond_4

    .line 150
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onLockoutPermanent()V

    .line 153
    goto :goto_1

    .line 154
    :cond_4
    if-ne v1, v3, :cond_5

    .line 156
    const-wide/16 p0, 0x7530

    .line 158
    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onLockoutTimed(J)V

    .line 161
    goto :goto_1

    .line 162
    :cond_5
    const/4 v0, 0x0

    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-interface {p1, p0, v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 167
    :cond_6
    :goto_1
    return-void
.end method
