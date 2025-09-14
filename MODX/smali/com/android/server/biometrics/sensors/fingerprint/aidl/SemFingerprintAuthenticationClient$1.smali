.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 6
    return-void
.end method


# virtual methods
.method public final onSysUiDismissed()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    .line 6
    return-void
.end method

.method public final onSysUiError(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    if-ne p2, v0, :cond_0

    .line 8
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/16 p1, 0x8

    .line 14
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mErrorEscrow:I

    .line 16
    const/16 p1, 0x1388

    .line 18
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mVendorErrorEscrow:I

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthAttempted:Z

    .line 22
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x5

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onError(II)V

    .line 33
    :goto_0
    return-void
.end method
