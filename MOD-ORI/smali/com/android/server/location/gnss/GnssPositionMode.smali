.class public final Lcom/android/server/location/gnss/GnssPositionMode;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLowPowerMode:Z

.field public final mMinInterval:I

.field public final mMode:I

.field public final mRecurrence:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    .line 10
    .line 11
    iput-boolean p3, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/location/gnss/GnssPositionMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/android/server/location/gnss/GnssPositionMode;

    .line 7
    .line 8
    iget v0, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    .line 11
    .line 12
    if-ne v2, v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    .line 15
    .line 16
    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    .line 21
    .line 22
    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    .line 23
    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    .line 27
    .line 28
    iget-boolean p1, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    .line 29
    .line 30
    if-ne p0, p1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const-class v7, Lcom/android/server/location/gnss/GnssPositionMode;

    .line 31
    .line 32
    move-object v4, v5

    .line 33
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method
