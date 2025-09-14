.class public final Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;
.super Landroid/hardware/biometrics/face/ISession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$cb:Landroid/hardware/biometrics/face/ISessionCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/face/ISessionCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISession$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    const-string/jumbo p1, "face.aidl.TestHal"

    .line 4
    const-string p2, "authenticate"

    .line 6
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;

    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;I)V

    .line 15
    return-object p1
.end method

.method public final authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final close()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.TestHal"

    .line 4
    const-string/jumbo v1, "close"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 12
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onSessionClosed()V

    .line 15
    return-void
.end method

.method public final detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.TestHal"

    .line 4
    const-string/jumbo v1, "detectInteraction"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;

    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;I)V

    .line 16
    return-object v0
.end method

.method public final detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    const-string/jumbo p1, "face.aidl.TestHal"

    .line 4
    const-string/jumbo p2, "enroll"

    .line 7
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;I)V

    .line 16
    return-object p1
.end method

.method public final enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final enrollWithOptions(Landroid/hardware/biometrics/face/FaceEnrollOptions;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->hardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 3
    iget-byte v1, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->enrollmentType:B

    .line 5
    iget-object v2, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->features:[B

    .line 7
    iget-object p1, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->nativeHandlePreview:Landroid/hardware/common/NativeHandle;

    .line 9
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final enumerateEnrollments()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.TestHal"

    .line 4
    const-string/jumbo v1, "enumerateEnrollments"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [I

    .line 15
    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsEnumerated([I)V

    .line 18
    return-void
.end method

.method public final generateChallenge()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.TestHal"

    .line 4
    const-string/jumbo v1, "generateChallenge"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeGenerated(J)V

    .line 17
    return-void
.end method

.method public final getAuthenticatorId()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.TestHal"

    .line 4
    const-string/jumbo v1, "getAuthenticatorId"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    .line 17
    return-void
.end method

.method public final getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    .line 4
    return-object p0
.end method

.method public final getFeatures()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.TestHal"

    .line 4
    const-string/jumbo v1, "getFeatures"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [B

    .line 15
    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeaturesRetrieved([B)V

    .line 18
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "c43fbb9be4a662cc9ace640dba21cccdb84c6c21"

    .line 4
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public final invalidateAuthenticatorId()V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.TestHal"

    .line 4
    const-string/jumbo v1, "invalidateAuthenticatorId"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    .line 17
    return-void
.end method

.method public final onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "face.aidl.TestHal"

    .line 4
    const-string/jumbo p1, "onContextChanged"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public final removeEnrollments([I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "face.aidl.TestHal"

    .line 4
    const-string/jumbo v1, "removeEnrollments"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 12
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsRemoved([I)V

    .line 15
    return-void
.end method

.method public final resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 1

    .line 1
    const-string/jumbo p1, "face.aidl.TestHal"

    .line 4
    const-string/jumbo v0, "resetLockout"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 12
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onLockoutCleared()V

    .line 15
    return-void
.end method

.method public final revokeChallenge(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "revokeChallenge: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "face.aidl.TestHal"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 24
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeRevoked(J)V

    .line 27
    return-void
.end method

.method public final setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    .locals 0

    .line 1
    const-string/jumbo p1, "face.aidl.TestHal"

    .line 4
    const-string/jumbo p3, "setFeature"

    .line 7
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 12
    invoke-interface {p0, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeatureSet(B)V

    .line 15
    return-void
.end method
