.class public final Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# instance fields
.field public mCurrentUserLockoutMode:I


# virtual methods
.method public final getLockoutModeForUser(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    .line 3
    return p0
.end method

.method public final setLockoutModeForUser(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    .line 3
    return-void
.end method
