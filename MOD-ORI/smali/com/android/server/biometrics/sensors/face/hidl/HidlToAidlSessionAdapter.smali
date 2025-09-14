.class public final Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/biometrics/face/ISession;


# static fields
.field static final CHALLENGE_TIMEOUT_SEC:I = 0x258

.field static final ENROLL_TIMEOUT_SEC:I = 0x4b


# instance fields
.field public final mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public mFeature:I

.field public mGenerateChallengeCreatedAt:J

.field public mGenerateChallengeResult:J

.field public final mGeneratedChallengeCount:Ljava/util/List;

.field public final mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

.field public mSecurityLevel:I

.field public final mSession:Ljava/util/function/Supplier;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeCreatedAt:J

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeResult:J

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    .line 23
    .line 24
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSecurityLevel:I

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 27
    .line 28
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mClock:Ljava/time/Clock;

    .line 33
    .line 34
    const-string p1, "HidlToAidlSessionAdapter"

    .line 35
    .line 36
    const-string p3, "Face HAL ready, HAL ID: "

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 39
    .line 40
    invoke-direct {v0, p4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 44
    .line 45
    :try_start_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->semSetSehCallback()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const-wide/16 p2, 0x0

    .line 71
    .line 72
    cmp-long p0, v0, p2

    .line 73
    .line 74
    if-nez p0, :cond_1

    .line 75
    .line 76
    const-string p0, "Unable to set HIDL callback."

    .line 77
    .line 78
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const-string p0, "Unable to set HIDL callback. HIDL daemon is null."

    .line 83
    .line 84
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    const-string p0, "Failed to set callback"

    .line 89
    .line 90
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public final authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 1
    const-string p3, "HidlToAidlSessionAdapter"

    .line 2
    .line 3
    const-string v0, "authenticateWithContext unsupported in HIDL"

    .line 4
    .line 5
    invoke-static {p3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 2
    .line 3
    const-string/jumbo v0, "close unsupported in HIDL"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 1
    const-string p1, "HidlToAidlSessionAdapter"

    .line 2
    .line 3
    const-string/jumbo v0, "detectInteractionWithContext unsupported in HIDL"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 2

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p4, 0x0

    .line 11
    move v0, p4

    .line 12
    :goto_0
    const/16 v1, 0x45

    .line 13
    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    aget-byte v1, p1, v0

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    array-length v0, p3

    .line 34
    :goto_1
    if-ge p4, v0, :cond_1

    .line 35
    .line 36
    aget-byte v1, p3, p4

    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertAidlToFrameworkFeature(B)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 p4, p4, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 53
    .line 54
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 59
    .line 60
    const/16 p4, 0x4b

    .line 61
    .line 62
    invoke-interface {p3, p2, p4, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V

    .line 68
    .line 69
    .line 70
    return-object p1
.end method

.method public final enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    .line 1
    const-string p5, "HidlToAidlSessionAdapter"

    .line 2
    .line 3
    const-string/jumbo v0, "enrollWithContext unsupported in HIDL"

    .line 4
    .line 5
    .line 6
    invoke-static {p5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final enrollWithOptions(Landroid/hardware/biometrics/face/FaceEnrollOptions;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 2
    .line 3
    const-string/jumbo p1, "enrollWithOptions unsupported in HIDL"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public final enumerateEnrollments()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 8
    .line 9
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final generateChallenge()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mClock:Ljava/time/Clock;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeCreatedAt:J

    .line 20
    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeResult:J

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mClock:Ljava/time/Clock;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeCreatedAt:J

    .line 40
    .line 41
    sub-long/2addr v0, v2

    .line 42
    const-wide/32 v2, 0xea60

    .line 43
    .line 44
    .line 45
    cmp-long v0, v0, v2

    .line 46
    .line 47
    if-gez v0, :cond_0

    .line 48
    .line 49
    const-string v0, "HidlToAidlSessionAdapter"

    .line 50
    .line 51
    const-string v1, "Current challenge is cached and will be reused"

    .line 52
    .line 53
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 57
    .line 58
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeResult:J

    .line 59
    .line 60
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 61
    .line 62
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onChallengeGenerated(J)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mClock:Ljava/time/Clock;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeCreatedAt:J

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 81
    .line 82
    const/16 v1, 0x258

    .line 83
    .line 84
    invoke-interface {v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-wide v0, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 89
    .line 90
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeResult:J

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 95
    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onChallengeGenerated(J)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final getAuthenticatorId()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-wide v0, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticatorIdRetrieved(J)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .locals 0

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 2
    .line 3
    const-string/jumbo p1, "getEnrollmentConfig unsupported in HIDL"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public final getFaceId()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/hardware/face/FaceManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/face/FaceManager;

    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v0, "HidlToAidlSessionAdapter"

    .line 24
    .line 25
    const-string v1, "No faces to get feature from."

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 31
    .line 32
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 33
    .line 34
    const/16 v4, 0xb

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const-wide/16 v6, 0x0

    .line 38
    .line 39
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onError(IIIJ)V

    .line 40
    .line 41
    .line 42
    const/4 p0, -0x1

    .line 43
    return p0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroid/hardware/face/Face;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0
.end method

.method public final getFeatures()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->getFaceId()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eq v1, v2, :cond_3

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    .line 10
    .line 11
    if-ne v3, v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 15
    .line 16
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 21
    .line 22
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    .line 23
    .line 24
    invoke-interface {v3, v4, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v3, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-boolean v1, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 37
    .line 38
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    .line 39
    .line 40
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertFrameworkToAidlFeature(I)B

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x1

    .line 45
    new-array v4, v4, [B

    .line 46
    .line 47
    aput-byte v3, v4, v0

    .line 48
    .line 49
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onFeaturesRetrieved([B)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-nez v3, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 58
    .line 59
    new-array v0, v0, [B

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onFeaturesRetrieved([B)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 68
    .line 69
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    const-wide/16 v7, 0x0

    .line 73
    .line 74
    const/16 v5, 0x11

    .line 75
    .line 76
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onError(IIIJ)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mFeature:I

    .line 80
    .line 81
    :cond_3
    :goto_1
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 2
    .line 3
    const-string/jumbo v0, "getInterfaceHash unsupported in HIDL"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 2
    .line 3
    const-string/jumbo v0, "getInterfaceVersion unsupported in HIDL"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final invalidateAuthenticatorId()V
    .locals 3

    .line 1
    const-string v0, "HidlToAidlSessionAdapter"

    .line 2
    .line 3
    const-string/jumbo v1, "invalidateAuthenticatorId unsupported in HIDL"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v0, "AidlResponseHandler"

    .line 17
    .line 18
    const-string v1, "FaceInvalidationClient is not supported in the HAL."

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    .line 1
    const-string p0, "HidlToAidlSessionAdapter"

    .line 2
    .line 3
    const-string/jumbo p1, "onContextChanged unsupported in HIDL"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final removeEnrollments([I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    aget p1, p1, v0

    .line 11
    .line 12
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    const/16 v2, 0x45

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    aget-byte v2, p1, v1

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 34
    .line 35
    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->resetLockout(Ljava/util/ArrayList;)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final revokeChallenge(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mClock:Ljava/time/Clock;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$$ExternalSyntheticLambda0;-><init>(J)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    .line 20
    .line 21
    check-cast p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    check-cast p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    .line 38
    .line 39
    check-cast p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const-wide/16 v0, -0x1

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeCreatedAt:J

    .line 50
    .line 51
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGenerateChallengeResult:J

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 60
    .line 61
    invoke-interface {p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 67
    .line 68
    const-wide/16 p1, 0x0

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onChallengeRevoked(J)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo p2, "scheduleRevokeChallenge skipped - challenge still in use: "

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mGeneratedChallengeCount:Ljava/util/List;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string p2, "HidlToAidlSessionAdapter"

    .line 92
    .line 93
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 99
    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onChallengeRevoked(J)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final semResumeEnroll()I
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 8
    .line 9
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehResumeEnrollment()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "HidlToAidlSessionAdapter"

    .line 16
    .line 17
    const-string/jumbo v1, "semResumeEnroll HIDL : "

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    const/4 p0, -0x1

    .line 24
    :goto_0
    return p0
.end method

.method public final semSetFaceTag([B)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-byte v3, p1, v2

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    invoke-interface {p0, v0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetFaceTag(Ljava/util/ArrayList;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    const-string p1, "HidlToAidlSessionAdapter"

    .line 41
    .line 42
    const-string/jumbo v0, "semSetFaceTag HIDL : "

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :goto_2
    return-void
.end method

.method public final semSetSehCallback()J
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 18
    .line 19
    invoke-interface {v2, v3}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-wide v2, v2, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 35
    .line 36
    invoke-interface {v2, v3}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;->sehSetCallbackEx(Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-wide v2, v2, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 41
    .line 42
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v5, "SetCallback FINISH ("

    .line 45
    .line 46
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    sub-long/2addr v5, v0

    .line 54
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string/jumbo v0, "ms) RESULT(HAL id): "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "HidlToAidlSessionAdapter"

    .line 71
    .line 72
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 86
    .line 87
    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$$ExternalSyntheticLambda1;

    .line 88
    .line 89
    invoke-direct {v6, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v6}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V

    .line 93
    .line 94
    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v0, "SecurityLevel FINISH ("

    .line 98
    .line 99
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    sub-long/2addr v6, v4

    .line 107
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v0, "ms) "

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return-wide v2
.end method

.method public final setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->getFaceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    const/16 v3, 0x45

    .line 20
    .line 21
    if-ge v2, v3, :cond_1

    .line 22
    .line 23
    aget-byte v3, p1, v2

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 42
    .line 43
    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertAidlToFrameworkFeature(B)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-interface {p1, v2, p3, v1, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 56
    .line 57
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onFeatureSet(B)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mHidlToAidlCallbackConverter:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    .line 62
    .line 63
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mUserId:I

    .line 64
    .line 65
    const/16 v2, 0x11

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    const-wide/16 v4, 0x0

    .line 69
    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onError(IIIJ)V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void
.end method
