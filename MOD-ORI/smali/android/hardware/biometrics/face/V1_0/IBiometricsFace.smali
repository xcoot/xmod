.class public interface abstract Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract authenticate(J)I
.end method

.method public abstract cancel()I
.end method

.method public abstract enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
.end method

.method public abstract enumerate()I
.end method

.method public abstract generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
.end method

.method public abstract remove(I)I
.end method

.method public abstract resetLockout(Ljava/util/ArrayList;)I
.end method

.method public abstract revokeChallenge()I
.end method

.method public abstract setActiveUser(ILjava/lang/String;)I
.end method

.method public abstract setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract setFeature(IZLjava/util/ArrayList;I)I
.end method

.method public abstract userActivity()V
.end method
