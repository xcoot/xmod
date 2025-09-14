.class public final Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/face/FaceManager$GenerateChallengeCallback;


# instance fields
.field public faceManager:Landroid/hardware/face/FaceManager;

.field public finishCallback:Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;

.field public pendingResetLockuts:Ljava/util/List;

.field public sensorIds:Ljava/util/Set;

.field public spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;


# virtual methods
.method public final onGenerateChallengeResult(IIJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->sensorIds:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "BiometricDeferredQueue"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "Unknown sensorId received: "

    .line 16
    .line 17
    invoke-static {p1, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->pendingResetLockuts:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 38
    .line 39
    const-string v3, "Resetting face lockout for sensor: "

    .line 40
    .line 41
    const-string v4, ", user: "

    .line 42
    .line 43
    invoke-static {p1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget v4, v2, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 48
    .line 49
    invoke-static {v3, v4, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 53
    .line 54
    invoke-static {v3, v2, p3, p4}, Lcom/android/server/locksettings/BiometricDeferredQueue;->requestHatFromGatekeeperPassword(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;J)[B

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->faceManager:Landroid/hardware/face/FaceManager;

    .line 61
    .line 62
    iget v2, v2, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 63
    .line 64
    invoke-virtual {v4, p1, v2, v3}, Landroid/hardware/face/FaceManager;->resetLockout(II[B)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->sensorIds:Ljava/util/Set;

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->faceManager:Landroid/hardware/face/FaceManager;

    .line 78
    .line 79
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager;->revokeChallenge(IIJ)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->sensorIds:Ljava/util/Set;

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    const-string p1, "Done requesting resetLockout for all face sensors"

    .line 91
    .line 92
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;->finishCallback:Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;

    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceResetLockoutTask:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

    .line 101
    .line 102
    :cond_3
    return-void
.end method
