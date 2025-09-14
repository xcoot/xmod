.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onInteractionDetected()V

    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 21
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 23
    int-to-long v1, v1

    .line 24
    const-string v3, ""

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {p1, v0, v4, v1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 34
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mHalCallbackEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 36
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mAuthenticationListeners:Ljava/util/List;

    .line 38
    check-cast v0, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    .line 56
    invoke-interface {v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationResult(I)V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->canIgnoreLockout()Z

    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 66
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    .line 68
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mUserId:I

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->addFailedAttemptForUser(I)V

    .line 73
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    .line 75
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mUserId:I

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->getLockoutModeForUser(I)I

    .line 80
    move-result p1

    .line 81
    const/4 v0, 0x2

    .line 82
    if-ne p1, v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onLockoutPermanent()V

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v0, 0x1

    .line 89
    if-ne p1, v0, :cond_2

    .line 91
    const-wide/16 v0, 0x7530

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onLockoutTimed(J)V

    .line 96
    :cond_2
    :goto_1
    return-void

    .line 97
    :pswitch_1
    check-cast p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 99
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onInteractionDetected()V

    .line 102
    return-void

    .line 103
    :pswitch_2
    check-cast p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 105
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    .line 107
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mUserId:I

    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->resetFailedAttemptsForUser(IZ)V

    .line 113
    return-void

    .line 114
    :pswitch_3
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    .line 116
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    .line 118
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mUserId:I

    .line 120
    const/4 v0, 0x1

    .line 121
    invoke-virtual {p1, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->resetFailedAttemptsForUser(IZ)V

    .line 124
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
