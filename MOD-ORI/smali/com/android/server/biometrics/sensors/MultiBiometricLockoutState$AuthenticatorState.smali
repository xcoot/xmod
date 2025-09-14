.class public final Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthenticatorType:Ljava/lang/Integer;

.field public mPermanentlyLockedOut:Z

.field public mTimedLockout:Z


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mAuthenticatorType:Ljava/lang/Integer;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    .line 10
    .line 11
    return-void
.end method
