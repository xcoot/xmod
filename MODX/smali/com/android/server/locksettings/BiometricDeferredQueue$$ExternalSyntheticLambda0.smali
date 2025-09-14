.class public final synthetic Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 6
    iput p2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$2:[B

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 3
    iget v1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$2:[B

    .line 7
    iget-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 9
    const-string v3, "BiometricDeferredQueue"

    .line 11
    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v2, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 19
    const-string v2, "Face addPendingLockoutResetForUser: "

    .line 21
    invoke-static {v1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    .line 26
    new-instance v4, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 28
    invoke-direct {v4, v1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;-><init>(I[B)V

    .line 31
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    iget-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 36
    const-string v4, "Fingerprint addPendingLockoutResetForUser: "

    .line 38
    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 46
    invoke-static {v1, v4, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    .line 51
    new-instance v5, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 53
    invoke-direct {v5, v1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;-><init>(I[B)V

    .line 56
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    iget-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 61
    if-eqz v2, :cond_2

    .line 63
    invoke-static {v1, v4, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockouts:Ljava/util/ArrayList;

    .line 68
    new-instance v2, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 70
    invoke-direct {v2, v1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;-><init>(I[B)V

    .line 73
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    return-void
.end method
