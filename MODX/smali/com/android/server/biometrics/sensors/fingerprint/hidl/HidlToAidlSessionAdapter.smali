.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISession;


# static fields
.field static final ENROLL_TIMEOUT_SEC:I


# instance fields
.field public final mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;

.field public final mSession:Ljava/util/function/Supplier;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;ILcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 8
    const-string p2, "HidlToAidlSessionAdapter"

    .line 10
    const-string v0, "Fingerprint HAL ready, HAL ID: "

    .line 12
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;

    .line 14
    invoke-direct {v1, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V

    .line 17
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;

    .line 19
    :try_start_0
    iget-object p3, p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    .line 21
    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getIBiometricsFingerprint()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 24
    move-result-object p3

    .line 25
    if-eqz p3, :cond_0

    .line 27
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    .line 29
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getIBiometricsFingerprint()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;

    .line 35
    invoke-interface {p1, p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    .line 38
    move-result-wide p0

    .line 39
    new-instance p3, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p3

    .line 51
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-wide/16 v0, 0x0

    .line 56
    cmp-long p0, p0, v0

    .line 58
    if-nez p0, :cond_1

    .line 60
    const-string p0, "Unable to set HIDL callback."

    .line 62
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string p0, "Unable to set HIDL callback. HIDL daemon is null."

    .line 68
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    const-string p0, "Failed to set callback"

    .line 74
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 11
    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(IJ)I

    .line 14
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter$Cancellation;

    .line 16
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;)V

    .line 19
    return-object p1
.end method

.method public final authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 1
    const-string p3, "HidlToAidlSessionAdapter"

    .line 3
    const-string v0, "authenticateWithContext unsupported in HIDL"

    .line 5
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo v0, "close unsupported in HIDL"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method

.method public final detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 13
    invoke-interface {v0, v3, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(IJ)I

    .line 16
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter$Cancellation;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;)V

    .line 21
    return-object v0
.end method

.method public final detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 1
    const-string p1, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo v0, "enrollWithContext unsupported in HIDL"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    .line 12
    move-result-object p1

    .line 13
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v0, v1, v2, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll(II[B)I

    .line 19
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter$Cancellation;

    .line 21
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;)V

    .line 24
    return-object p1
.end method

.method public final enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 1
    const-string p2, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo v0, "enrollWithContext unsupported in HIDL"

    .line 6
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final enumerateEnrollments()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enumerate()I

    .line 12
    return-void
.end method

.method public final generateChallenge()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    .line 12
    move-result-wide v0

    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;

    .line 15
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onChallengeGenerated(J)V

    .line 20
    return-void
.end method

.method public final getAuthenticatorId()V
    .locals 2

    .line 1
    const-string v0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo v1, "getAuthenticatorId unsupported in HIDL"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;

    .line 11
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->unsupportedClientScheduled(Ljava/lang/Class;)V

    .line 16
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo v0, "getInterfaceHash unsupported in HIDL"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo v0, "getInterfaceVersion unsupported in HIDL"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final invalidateAuthenticatorId()V
    .locals 2

    .line 1
    const-string v0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo v1, "invalidateAuthenticatorId unsupported in HIDL"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;

    .line 11
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->unsupportedClientScheduled(Ljava/lang/Class;)V

    .line 16
    return-void
.end method

.method public final onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo p1, "onContextChanged unsupported in HIDL"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method

.method public final onPointerCancelWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo p1, "onPointerCancelWithContext unsupported in HIDL"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method

.method public final onPointerDown(IIIFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    instance-of p1, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    .line 17
    move-result-object p0

    .line 18
    const-string p1, "UdfpsHelper"

    .line 20
    if-nez p0, :cond_1

    .line 22
    const-string/jumbo p0, "onFingerDown | failed to cast the HIDL to V2_3"

    .line 25
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :try_start_0
    invoke-interface {p0, p2, p4, p5, p3}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerDown(IFFI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string/jumbo p2, "onFingerDown | RemoteException: "

    .line 37
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :goto_0
    return-void
.end method

.method public final onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 8

    .line 1
    const-string v0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo v1, "onPointerDownWithContext unsupported in HIDL"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 11
    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 13
    float-to-int v4, v0

    .line 14
    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 16
    float-to-int v5, v0

    .line 17
    iget v6, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 19
    iget v7, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 21
    move-object v2, p0

    .line 22
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->onPointerDown(IIIFF)V

    .line 25
    return-void
.end method

.method public final onPointerUp(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    instance-of p1, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    .line 17
    move-result-object p0

    .line 18
    const-string p1, "UdfpsHelper"

    .line 20
    if-nez p0, :cond_1

    .line 22
    const-string/jumbo p0, "onFingerUp | failed to cast the HIDL to V2_3"

    .line 25
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string/jumbo v0, "onFingerUp | RemoteException: "

    .line 37
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :goto_0
    return-void
.end method

.method public final onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 2

    .line 1
    const-string v0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo v1, "onPointerUpWithContext unsupported in HIDL"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget p1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->onPointerUp(I)V

    .line 14
    return-void
.end method

.method public final onUiReady()V
    .locals 1

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo v0, "onUiReady unsupported in HIDL"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method

.method public final removeEnrollments([I)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 8
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 14
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 16
    invoke-interface {p1, p0, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 22
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 28
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 30
    aget p1, p1, v2

    .line 32
    invoke-interface {v0, p0, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    .line 35
    :goto_0
    return-void
.end method

.method public final resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onLockoutCleared()V

    .line 8
    return-void
.end method

.method public final revokeChallenge(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    invoke-interface {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;

    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 16
    const-wide/16 p1, 0x0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onChallengeRevoked(J)V

    .line 21
    return-void
.end method

.method public final setIgnoreDisplayTouches(Z)V
    .locals 0

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 3
    const-string/jumbo p1, "setIgnoreDisplayTouches unsupported in HIDL"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method
