.class public final Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCapacity:I

.field public mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

.field public mCount:I

.field public mEnd:I

.field public mLastLux:F

.field public mLastTime:J

.field public mRingLux:[F

.field public mRingTime:[J

.field public mStart:I


# virtual methods
.method public final getLux(I)F
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 4
    .line 5
    if-ge p1, v1, :cond_1

    .line 6
    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 10
    .line 11
    add-int/2addr p1, v1

    .line 12
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 13
    .line 14
    if-lt p1, v1, :cond_0

    .line 15
    .line 16
    sub-int/2addr p1, v1

    .line 17
    :cond_0
    aget p0, v0, p1

    .line 18
    .line 19
    return p0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    .line 23
    .line 24
    .line 25
    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    const-string p1, "AutomaticBrightnessController"

    .line 27
    .line 28
    const-string v0, "Catch nullpointer exception: getLux"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 34
    .line 35
    new-array v0, p1, [F

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 38
    .line 39
    new-array p1, p1, [J

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mLastLux:F

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    aput v1, v0, v2

    .line 47
    .line 48
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mLastTime:J

    .line 49
    .line 50
    aput-wide v3, p1, v2

    .line 51
    .line 52
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 56
    .line 57
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 58
    .line 59
    return v1
.end method

.method public final getTime(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 4
    .line 5
    if-ge p1, v1, :cond_1

    .line 6
    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 10
    .line 11
    add-int/2addr p1, v1

    .line 12
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 13
    .line 14
    if-lt p1, p0, :cond_0

    .line 15
    .line 16
    sub-int/2addr p1, p0

    .line 17
    :cond_0
    aget-wide p0, v0, p1

    .line 18
    .line 19
    return-wide p0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final prune(J)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-le v0, v1, :cond_3

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 12
    .line 13
    add-int/2addr v2, v1

    .line 14
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 15
    .line 16
    if-lt v2, v1, :cond_1

    .line 17
    .line 18
    sub-int/2addr v2, v1

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 20
    .line 21
    aget-wide v3, v1, v2

    .line 22
    .line 23
    cmp-long v1, v3, p1

    .line 24
    .line 25
    if-lez v1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 38
    .line 39
    aget-wide v1, v0, p0

    .line 40
    .line 41
    cmp-long v1, v1, p1

    .line 42
    .line 43
    if-gez v1, :cond_4

    .line 44
    .line 45
    aput-wide p1, v0, p0

    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    add-int/lit8 v3, v1, 0x1

    .line 14
    .line 15
    if-ge v3, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessController$Clock;->getSensorEventScaleTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    :goto_1
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-string v2, ", "

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " / "

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    sub-long/2addr v4, v1

    .line 52
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string/jumbo v1, "ms"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move v1, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/16 p0, 0x5d

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
