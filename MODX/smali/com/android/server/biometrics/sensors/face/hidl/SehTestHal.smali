.class public final Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;
.super Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mSehTestHal:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;


# instance fields
.field public currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

.field public currentActionList:Ljava/util/List;

.field public currentActionListPos:I

.field public isEnrollSessionOpen:Z

.field public mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

.field public final mContext:Landroid/content/Context;

.field public mFaceId:I

.field public mGlassesOn:Z

.field public final mH:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;

.field public final mSensorId:I

.field public final mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mGlassesOn:Z

    .line 7
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 9
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSensorId:I

    .line 11
    const-string/jumbo p1, "face.hidl.SehTestHal"

    .line 14
    const/4 v0, -0x2

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, p1, v1}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;

    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;Landroid/os/Looper;)V

    .line 29
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;

    .line 31
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;

    .line 33
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)V

    .line 36
    new-instance v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 38
    const/16 v3, 0x8

    .line 40
    invoke-direct {v2, v3, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;-><init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V

    .line 43
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 45
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$$ExternalSyntheticLambda0;

    .line 47
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 55
    if-eqz p0, :cond_0

    .line 57
    const-string p0, "SehTestHal: constructed, "

    .line 59
    invoke-static {p2, p0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public final authenticate(J)I
    .locals 2

    .line 1
    const-string/jumbo v0, "face.hidl.SehTestHal"

    .line 4
    const-string v1, "authenticate"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->sehAuthenticate(IJLjava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    return v1
.end method

.method public final cancel()I
    .locals 8

    .line 1
    const-string/jumbo v0, "face.hidl.SehTestHal"

    .line 4
    const-string/jumbo v1, "cancel"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 12
    if-eqz v2, :cond_0

    .line 14
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    .line 16
    const/4 v4, 0x5

    .line 17
    const/4 v5, 0x0

    .line 18
    const-wide/16 v6, 0x0

    .line 20
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(IIIJ)V

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .locals 4

    .line 1
    const-string/jumbo p1, "face.hidl.SehTestHal"

    .line 4
    const-string/jumbo p2, "enroll"

    .line 7
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-boolean p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->isEnrollSessionOpen:Z

    .line 12
    const/4 p3, 0x0

    .line 13
    if-eqz p2, :cond_3

    .line 15
    iget p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSensorId:I

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p2, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 24
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    .line 26
    invoke-virtual {p2, v0, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 29
    move-result-object p2

    .line 30
    const/4 v0, 0x1

    .line 31
    move v1, p3

    .line 32
    move v2, v0

    .line 33
    :goto_0
    if-nez v1, :cond_2

    .line 35
    move-object v1, p2

    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 42
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/hardware/face/Face;

    .line 54
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 57
    move-result v3

    .line 58
    if-ne v2, v3, :cond_0

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 62
    move v1, p3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move v1, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mFaceId:I

    .line 68
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 70
    iget-object p2, p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 72
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 74
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    .line 76
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mGlassesOn:Z

    .line 78
    check-cast p2, Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 86
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 88
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;

    .line 90
    iget-wide v1, p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 92
    const/16 p2, 0x64

    .line 94
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v0, "start enroll: "

    .line 102
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mFaceId:I

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v0, ", action size = "

    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 117
    check-cast p0, Ljava/util/ArrayList;

    .line 119
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 122
    move-result p0

    .line 123
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    const-string/jumbo p0, "enroll : generateChallenge not done"

    .line 137
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_1
    return p3
.end method

.method public final enumerate()I
    .locals 4

    .line 1
    const-string/jumbo v0, "face.hidl.SehTestHal"

    .line 4
    const-string/jumbo v1, "enumerate"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    .line 21
    const-wide/16 v2, 0x0

    .line 23
    invoke-interface {v0, p0, v2, v3, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnumerate(IJLjava/util/ArrayList;)V

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final declared-synchronized generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo p1, "face.hidl.SehTestHal"

    .line 5
    const-string/jumbo v0, "generateChallenge"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 13
    invoke-direct {p1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 19
    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->isEnrollSessionOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-object p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
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
    const-string/jumbo v0, "face.hidl.SehTestHal"

    .line 4
    const-string/jumbo v1, "remove"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 12
    if-eqz v0, :cond_2

    .line 14
    const-wide/16 v1, 0x0

    .line 16
    if-nez p1, :cond_1

    .line 18
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSensorId:I

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 27
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

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
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 70
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

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
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

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
    const-string/jumbo p0, "face.hidl.SehTestHal"

    .line 4
    const-string/jumbo p1, "resetLockout"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final declared-synchronized revokeChallenge()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "face.hidl.SehTestHal"

    .line 5
    const-string/jumbo v1, "revokeChallenge"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->isEnrollSessionOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public final sehAuthenticate(IJLjava/util/ArrayList;)I
    .locals 2

    .line 1
    const-string/jumbo p1, "face.hidl.SehTestHal"

    .line 4
    const-string/jumbo p2, "sehAuthenticate"

    .line 7
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 12
    iget-object p2, p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 14
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 16
    const/4 p3, 0x0

    .line 17
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    .line 19
    check-cast p2, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 27
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 29
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;

    .line 31
    iget-wide v0, p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 33
    const/16 p2, 0x64

    .line 35
    invoke-virtual {p4, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo p4, "start authenticate: "

    .line 43
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mFaceId:I

    .line 48
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string p4, ", action size = "

    .line 53
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 58
    check-cast p0, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result p0

    .line 64
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return p3
.end method

.method public final sehAuthenticateForIssuance(IJLjava/util/ArrayList;ZZ)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final declared-synchronized sehCloseTaSession()I
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0
.end method

.method public final sehGetEngineVersion()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 3
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
    const-string p0, ""

    .line 3
    return-object p0
.end method

.method public final sehIsTaSessionClosed()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final declared-synchronized sehOpenTaSession()I
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 p0, 0x0

    .line 4
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
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;

    .line 3
    const/16 v0, 0x64

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    const/4 p0, 0x0

    .line 11
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
    .locals 1

    .line 1
    const-string/jumbo p2, "face.hidl.SehTestHal"

    .line 4
    const-string/jumbo v0, "setActiveUser"

    .line 7
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 0

    .line 1
    check-cast p1, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

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
    const-string/jumbo p0, "face.hidl.SehTestHal"

    .line 4
    const-string/jumbo p1, "setFeature"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final userActivity()V
    .locals 1

    .line 1
    const-string/jumbo p0, "face.hidl.SehTestHal"

    .line 4
    const-string/jumbo v0, "userActivity"

    .line 7
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method
