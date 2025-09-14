.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;
.super Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    const-string/jumbo p1, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string p2, "authenticate"

    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;I)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public final authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final close()V
    .locals 2

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "close"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 11
    .line 12
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onSessionClosed()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 2

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "detectInteraction"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;I)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 1
    const-string/jumbo p1, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "enroll"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p1, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final enumerateEnrollments()V
    .locals 2

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "enumerateEnrollments"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    invoke-interface {p0, v0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsEnumerated([I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final generateChallenge()V
    .locals 2

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "generateChallenge"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeGenerated(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getAuthenticatorId()V
    .locals 2

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "getAuthenticatorId"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "41a730a7a6b5aa9cebebce70ee5b5e509b0af6fb"

    .line 2
    .line 3
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
    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "invalidateAuthenticatorId"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "onContextChanged"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPointerCancelWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "onPointerCancelWithContext"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPointerDown(IIIFF)V
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "onPointerDown"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 6

    .line 1
    iget v1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 2
    .line 3
    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 4
    .line 5
    float-to-int v2, v0

    .line 6
    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 7
    .line 8
    float-to-int v3, v0

    .line 9
    iget v4, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 10
    .line 11
    iget v5, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->onPointerDown(IIIFF)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onPointerUp(I)V
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "onPointerUp"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->onPointerUp(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUiReady()V
    .locals 1

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "onUiReady"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final removeEnrollments([I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "removeEnrollments"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsRemoved([I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 1

    .line 1
    const-string/jumbo p1, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "resetLockout"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 11
    .line 12
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onLockoutCleared()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final revokeChallenge(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "revokeChallenge: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "fingerprint.aidl.TestHal"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 23
    .line 24
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeRevoked(J)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final setIgnoreDisplayTouches(Z)V
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "setIgnoreDisplayTouches"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method
