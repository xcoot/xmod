.class public final synthetic Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 9
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    .line 11
    const-string/jumbo v0, "false"

    .line 14
    const-string/jumbo v1, "true"

    .line 17
    if-eqz p1, :cond_0

    .line 19
    move-object p1, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v0

    .line 22
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    .line 24
    if-eqz v2, :cond_1

    .line 26
    move-object v0, v1

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mAuthenticatorType:Ljava/lang/Integer;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p0

    .line 33
    invoke-static {p0}, Landroid/hardware/biometrics/BiometricManager;->authenticatorToStr(I)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    const-string v1, "("

    .line 39
    const-string v2, ", permanentLockout="

    .line 41
    const-string v3, ", timedLockout="

    .line 43
    invoke-static {v1, p0, v2, v0, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object p0

    .line 47
    const-string v0, ")"

    .line 49
    invoke-static {p0, p1, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
