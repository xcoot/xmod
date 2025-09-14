.class public final Lcom/android/server/display/utils/RollingBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCount:I

.field public mEnd:I

.field public mSize:I

.field public mStart:I

.field public mTimes:[J

.field public mValues:[F


# virtual methods
.method public final offsetOf(I)I
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 5
    if-ge p1, v0, :cond_0

    .line 7
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 9
    add-int/2addr v0, p1

    .line 10
    iget p0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    .line 12
    rem-int/2addr v0, p0

    .line 13
    return v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 16
    const-string/jumbo v1, "invalid index: "

    .line 19
    const-string v2, ", mCount= "

    .line 21
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object p1

    .line 25
    iget p0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "["

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 11
    if-ge v1, v2, :cond_1

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    .line 16
    move-result v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 24
    aget v4, v4, v2

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    const-string v4, " @ "

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 36
    aget-wide v4, v4, v2

    .line 38
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 50
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 52
    if-eq v1, v2, :cond_0

    .line 54
    const-string v2, ", "

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string p0, "]"

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method
