.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

.field public final synthetic f$2:Landroid/hardware/keymaster/HardwareAuthToken;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 6
    .line 7
    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 13
    .line 14
    invoke-interface {v1, p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "FingerprintEnrollClient"

    .line 23
    .line 24
    const-string v1, "Remote exception when requesting enroll"

    .line 25
    .line 26
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x2

    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->onError(II)V

    .line 32
    .line 33
    .line 34
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 35
    .line 36
    invoke-interface {p0, v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
