.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSysUiDismissed()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSysUiError(II)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    const/4 p2, 0x0

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->onError(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
