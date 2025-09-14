.class public final Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSensor:I

.field public final mType:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    .line 20
    .line 21
    iget v3, p1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    .line 26
    .line 27
    iget p1, p1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    .line 28
    .line 29
    if-ne p0, p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v2

    .line 33
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    .line 11
    .line 12
    add-int/2addr v0, p0

    .line 13
    return v0
.end method
