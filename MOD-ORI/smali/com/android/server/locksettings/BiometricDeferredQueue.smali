.class public final Lcom/android/server/locksettings/BiometricDeferredQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public final mFaceFinishCallback:Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;

.field public mFaceManager:Landroid/hardware/face/FaceManager;

.field public mFaceResetLockoutTask:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mPendingResetLockouts:Ljava/util/ArrayList;

.field public final mPendingResetLockoutsForFace:Ljava/util/ArrayList;

.field public final mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

.field public final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceFinishCallback:Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 12
    .line 13
    sget-object p1, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockouts:Ljava/util/ArrayList;

    .line 41
    .line 42
    return-void
.end method

.method public static requestHatFromGatekeeperPassword(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;J)[B
    .locals 9

    .line 1
    const-class v0, Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "android.service.gatekeeper.IGateKeeperService"

    .line 5
    .line 6
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "BiometricDeferredQueue"

    .line 14
    .line 15
    const-string v3, "Unable to acquire GateKeeperService"

    .line 16
    .line 17
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    move-object v7, v2

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    monitor-exit v0

    .line 30
    move-object v7, v1

    .line 31
    :goto_0
    iget-object v8, p1, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->gatekeeperPassword:[B

    .line 32
    .line 33
    iget v4, p1, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 34
    .line 35
    move-object v3, p0

    .line 36
    move-wide v5, p2

    .line 37
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    const-string p0, "BiometricDeferredQueue"

    .line 44
    .line 45
    const-string p1, "VerifyChallenge failed, null response"

    .line 46
    .line 47
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-object v2

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const-string p1, "BiometricDeferredQueue"

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p3, "VerifyChallenge failed, response: "

    .line 62
    .line 63
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    const-string p1, "BiometricDeferredQueue"

    .line 88
    .line 89
    const-string p2, "Null HAT received from spManager"

    .line 90
    .line 91
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :goto_1
    monitor-exit v0

    .line 100
    throw p0
.end method
