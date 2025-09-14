.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;
.super Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 7
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$userId:I

    .line 9
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "authenticate, "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string/jumbo v1, "fingerprint.aidl.SemTpaTestHal"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Landroid/os/CancellationSignal;

    .line 23
    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    .line 28
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 30
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;

    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V

    .line 36
    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 39
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 41
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 43
    iget-wide v1, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mDelayAuthAction:J

    .line 45
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    .line 47
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;

    .line 49
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;JLandroid/os/CancellationSignal;)V

    .line 52
    const-wide/16 p1, 0x0

    .line 54
    cmp-long p1, v1, p1

    .line 56
    if-nez p1, :cond_0

    .line 58
    const-wide/16 v1, 0x258

    .line 60
    :cond_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;

    .line 70
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;-><init>(Landroid/os/CancellationSignal;)V

    .line 73
    return-object p0
.end method

.method public final authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final close()V
    .locals 2

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo v1, "close"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 12
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onSessionClosed()V

    .line 15
    return-void
.end method

.method public final detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 6

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo v1, "detectInteraction"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Landroid/os/CancellationSignal;

    .line 12
    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    .line 17
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 19
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda1;

    .line 21
    invoke-direct {v3, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    .line 24
    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 27
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    .line 29
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 31
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V

    .line 37
    const-wide/16 v4, 0x258

    .line 39
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;

    .line 49
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;-><init>(Landroid/os/CancellationSignal;)V

    .line 52
    return-object p0
.end method

.method public final detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "enroll: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const-string/jumbo v0, "fingerprint.aidl.SemTpaTestHal"

    .line 19
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance p1, Landroid/os/CancellationSignal;

    .line 24
    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 27
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    .line 29
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 31
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V

    .line 37
    invoke-virtual {p1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    .line 42
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$userId:I

    .line 44
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;

    .line 46
    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/CancellationSignal;I)V

    .line 49
    const-wide/16 v3, 0x258

    .line 51
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;-><init>(Landroid/os/CancellationSignal;)V

    .line 64
    return-object p0
.end method

.method public final enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final enumerateEnrollments()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "enumerateEnrollments: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 11
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string/jumbo v1, "fingerprint.aidl.SemTpaTestHal"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 32
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 34
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 36
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 39
    move-result-object p0

    .line 40
    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 46
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 53
    move-result-object p0

    .line 54
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsEnumerated([I)V

    .line 57
    return-void
.end method

.method public final generateChallenge()V
    .locals 4

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo v1, "generateChallenge"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 12
    new-instance v1, Ljava/util/Random;

    .line 14
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 17
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mChallenge:J

    .line 23
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    .line 25
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 27
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V

    .line 33
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method public final getAuthenticatorId()V
    .locals 4

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo v1, "getAuthenticatorId"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 12
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 14
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    .line 16
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$userId:I

    .line 18
    const-wide/16 v2, 0x0

    .line 20
    invoke-virtual {v1, p0, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 23
    move-result-wide v1

    .line 24
    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    .line 27
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "41a730a7a6b5aa9cebebce70ee5b5e509b0af6fb"

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
    .locals 4

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo v1, "invalidateAuthenticatorId"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 12
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    .line 14
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$userId:I

    .line 16
    new-instance v2, Ljava/util/Random;

    .line 18
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 21
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 28
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 30
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 32
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    .line 34
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$userId:I

    .line 36
    const-wide/16 v2, 0x0

    .line 38
    invoke-virtual {v1, p0, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 41
    move-result-wide v1

    .line 42
    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    .line 45
    return-void
.end method

.method public final onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo p1, "onContextChanged"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public final onPointerCancelWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo p1, "onPointerCancelWithContext"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public final onPointerDown(IIIFF)V
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo p1, "onPointerDown"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public final onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 6

    .line 1
    iget v1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 3
    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 5
    float-to-int v2, v0

    .line 6
    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 8
    float-to-int v3, v0

    .line 9
    iget v4, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 11
    iget v5, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 13
    move-object v0, p0

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->onPointerDown(IIIFF)V

    .line 17
    return-void
.end method

.method public final onPointerUp(I)V
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo p1, "onPointerUp"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public final onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->onPointerUp(I)V

    .line 6
    return-void
.end method

.method public final onUiReady()V
    .locals 1

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo v0, "onUiReady"

    .line 7
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public final removeEnrollments([I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo v1, "removeEnrollments"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    array-length v0, p1

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    aget v2, p1, v1

    .line 16
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 18
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 32
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsRemoved([I)V

    .line 35
    return-void
.end method

.method public final resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 1

    .line 1
    const-string/jumbo p1, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo v0, "resetLockout"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 12
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onLockoutCleared()V

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
    const-string/jumbo v1, "fingerprint.aidl.SemTpaTestHal"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 26
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda5;

    .line 28
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;J)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method

.method public final setIgnoreDisplayTouches(Z)V
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.SemTpaTestHal"

    .line 4
    const-string/jumbo p1, "setIgnoreDisplayTouches"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method
