.class public final Lcom/android/server/biometrics/sensors/face/hidl/TestHal;
.super Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

.field public final mContext:Landroid/content/Context;

.field public final mSensorId:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    .line 8
    return-void
.end method


# virtual methods
.method public final authenticate(J)I
    .locals 0

    .line 1
    const-string/jumbo p0, "face.hidl.TestHal"

    .line 4
    const-string p1, "authenticate"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final cancel()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x0

    .line 7
    const-wide/16 v4, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(IIIJ)V

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .locals 0

    .line 1
    const-string/jumbo p0, "face.hidl.TestHal"

    .line 4
    const-string/jumbo p1, "enroll"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final enumerate()I
    .locals 4

    .line 1
    const-string/jumbo v0, "face.hidl.TestHal"

    .line 4
    const-string/jumbo v1, "enumerate"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const-wide/16 v2, 0x0

    .line 22
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnumerate(IJLjava/util/ArrayList;)V

    .line 25
    :cond_0
    return v0
.end method

.method public final generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2

    .line 1
    const-string/jumbo p0, "face.hidl.TestHal"

    .line 4
    const-string/jumbo p1, "generateChallenge"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 12
    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 18
    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 22
    return-object p0
.end method

.method public final getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2

    .line 1
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 13
    return-object p0
.end method

.method public final getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .locals 0

    .line 1
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    .line 12
    return-object p0
.end method

.method public final remove(I)I
    .locals 4

    .line 1
    const-string/jumbo v0, "face.hidl.TestHal"

    .line 4
    const-string/jumbo v1, "remove"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 12
    if-eqz v0, :cond_2

    .line 14
    const-wide/16 v1, 0x0

    .line 16
    if-nez p1, :cond_1

    .line 18
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 27
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 29
    invoke-virtual {p1, v0, v3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    check-cast p1, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/hardware/face/Face;

    .line 56
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 59
    move-result v3

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 70
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 72
    invoke-interface {p1, p0, v1, v2, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(IJLjava/util/ArrayList;)V

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 91
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(IJLjava/util/ArrayList;)V

    .line 94
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 95
    return p0
.end method

.method public final resetLockout(Ljava/util/ArrayList;)I
    .locals 0

    .line 1
    const-string/jumbo p0, "face.hidl.TestHal"

    .line 4
    const-string/jumbo p1, "resetLockout"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final revokeChallenge()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final sehAuthenticate(IJLjava/util/ArrayList;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final sehAuthenticateForIssuance(IJLjava/util/ArrayList;ZZ)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final sehCloseTaSession()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final sehGetEngineVersion()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    const/4 v0, 0x2

    .line 3
    invoke-interface {p1, p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;->onValues(II)V

    .line 6
    return-void
.end method

.method public final sehGetTaInfo()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final sehIsTaSessionClosed()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final sehOpenTaSession()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final sehPauseEnrollment()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final sehResumeEnrollment()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final sehSetFaceTag(Ljava/util/ArrayList;I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final sehSetRotation(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setActiveUser(ILjava/lang/String;)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0
.end method

.method public final setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 0

    .line 1
    check-cast p1, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 5
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 7
    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 10
    return-object p0
.end method

.method public final setFeature(IZLjava/util/ArrayList;I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final userActivity()V
    .locals 0

    .line 1
    return-void
.end method
