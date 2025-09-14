.class public final Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBuffer:Lcom/android/server/display/utils/RollingBuffer;

.field public final mHorizon:I

.field public final mIntercept:F

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-lez p3, :cond_1

    .line 6
    iput-object p1, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mTag:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mHorizon:I

    .line 10
    new-instance p1, Lcom/android/server/display/utils/RollingBuffer;

    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 p3, 0x32

    .line 17
    iput p3, p1, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    .line 19
    new-array v0, p3, [J

    .line 21
    iput-object v0, p1, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 23
    new-array p3, p3, [F

    .line 25
    iput-object p3, p1, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 27
    const/4 p3, 0x0

    .line 28
    iput p3, p1, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 30
    iput p3, p1, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 32
    iput p3, p1, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 34
    iput-object p1, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    .line 36
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 42
    const/4 p1, 0x0

    .line 43
    cmpg-float p1, p2, p1

    .line 45
    if-ltz p1, :cond_0

    .line 47
    iput p2, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    .line 49
    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    const-string/jumbo p1, "intercept must be a non-negative number"

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    const-string/jumbo p1, "horizon must be positive"

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0
.end method


# virtual methods
.method public final addValue(JF)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p3, v0

    .line 4
    if-gez v0, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->truncateOldValues(J)V

    .line 10
    iget-object p0, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    .line 12
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 14
    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    .line 16
    if-lt v0, v1, :cond_1

    .line 18
    mul-int/lit8 v1, v1, 0x2

    .line 20
    new-array v2, v1, [J

    .line 22
    new-array v3, v1, [F

    .line 24
    iget-object v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 26
    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 28
    sub-int/2addr v0, v5

    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-static {v4, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 35
    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 37
    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 39
    sub-int/2addr v4, v5

    .line 40
    invoke-static {v0, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 45
    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 47
    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 49
    sub-int/2addr v5, v4

    .line 50
    invoke-static {v0, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 55
    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 57
    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 59
    sub-int/2addr v4, v5

    .line 60
    invoke-static {v0, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    .line 65
    iput v6, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 67
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 69
    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 71
    iput-object v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 73
    iput-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 77
    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 79
    aput-wide p1, v0, v1

    .line 81
    iget-object p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 83
    aput p3, p1, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 87
    iget p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    .line 89
    rem-int/2addr v1, p1

    .line 90
    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 92
    iget p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 94
    add-int/lit8 p1, p1, 0x1

    .line 96
    iput p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 98
    return-void
.end method

.method public final getEstimate(J)F
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->truncateOldValues(J)V

    .line 6
    iget-object v1, v0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    .line 8
    iget v2, v1, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 10
    if-nez v2, :cond_0

    .line 12
    const/high16 v0, -0x40800000    # -1.0f

    .line 14
    goto/16 :goto_2

    .line 16
    :cond_0
    new-array v3, v2, [F

    .line 18
    iget-object v4, v1, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-virtual {v1, v5}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    .line 24
    move-result v6

    .line 25
    aget-wide v6, v4, v6

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v8, 0x0

    .line 29
    move v9, v4

    .line 30
    move v10, v8

    .line 31
    :goto_0
    iget v11, v0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    .line 33
    const/high16 v12, 0x3f000000    # 0.5f

    .line 35
    const/high16 v13, 0x447a0000    # 1000.0f

    .line 37
    if-ge v9, v2, :cond_1

    .line 39
    iget-object v14, v1, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 41
    invoke-virtual {v1, v9}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    .line 44
    move-result v15

    .line 45
    aget-wide v14, v14, v15

    .line 47
    sub-long/2addr v14, v6

    .line 48
    long-to-float v14, v14

    .line 49
    div-float/2addr v14, v13

    .line 50
    mul-float v13, v14, v12

    .line 52
    mul-float/2addr v13, v14

    .line 53
    mul-float v15, v11, v14

    .line 55
    add-float/2addr v15, v13

    .line 56
    mul-float/2addr v12, v10

    .line 57
    mul-float/2addr v12, v10

    .line 58
    mul-float/2addr v11, v10

    .line 59
    add-float/2addr v11, v12

    .line 60
    sub-float/2addr v15, v11

    .line 61
    add-int/lit8 v10, v9, -0x1

    .line 63
    aput v15, v3, v10

    .line 65
    add-int/lit8 v9, v9, 0x1

    .line 67
    move v10, v14

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-wide/16 v14, 0x64

    .line 71
    add-long v14, p1, v14

    .line 73
    sub-long/2addr v14, v6

    .line 74
    long-to-float v0, v14

    .line 75
    div-float/2addr v0, v13

    .line 76
    mul-float v6, v0, v12

    .line 78
    mul-float/2addr v6, v0

    .line 79
    mul-float/2addr v0, v11

    .line 80
    add-float/2addr v0, v6

    .line 81
    mul-float/2addr v12, v10

    .line 82
    mul-float/2addr v12, v10

    .line 83
    mul-float/2addr v11, v10

    .line 84
    add-float/2addr v11, v12

    .line 85
    sub-float/2addr v0, v11

    .line 86
    add-int/lit8 v6, v2, -0x1

    .line 88
    aput v0, v3, v6

    .line 90
    move v0, v8

    .line 91
    move v6, v0

    .line 92
    :goto_1
    if-ge v5, v2, :cond_2

    .line 94
    iget-object v7, v1, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 96
    invoke-virtual {v1, v5}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    .line 99
    move-result v9

    .line 100
    aget v7, v7, v9

    .line 102
    aget v9, v3, v5

    .line 104
    mul-float/2addr v7, v9

    .line 105
    add-float/2addr v6, v7

    .line 106
    add-float/2addr v0, v9

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    cmpl-float v2, v0, v8

    .line 112
    if-nez v2, :cond_3

    .line 114
    iget v0, v1, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 116
    sub-int/2addr v0, v4

    .line 117
    iget-object v2, v1, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 119
    invoke-virtual {v1, v0}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    .line 122
    move-result v0

    .line 123
    aget v0, v2, v0

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    div-float v0, v6, v0

    .line 128
    :goto_2
    return v0
.end method

.method public final truncateOldValues(J)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mHorizon:I

    .line 3
    int-to-long v0, v0

    .line 4
    sub-long/2addr p1, v0

    .line 5
    iget-object p0, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    .line 7
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    .line 18
    move-result v1

    .line 19
    aget-wide v0, v0, v1

    .line 21
    cmp-long v0, v0, p1

    .line 23
    if-ltz v0, :cond_1

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    move v1, v0

    .line 28
    :goto_0
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 30
    if-ge v1, v2, :cond_3

    .line 32
    iget-object v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    .line 37
    move-result v3

    .line 38
    aget-wide v2, v2, v3

    .line 40
    cmp-long v2, v2, p1

    .line 42
    if-lez v2, :cond_2

    .line 44
    sub-int/2addr v1, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    add-int/lit8 v1, v2, -0x1

    .line 51
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 57
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 59
    sub-int/2addr v2, v1

    .line 60
    iput v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 62
    iget-object p0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 64
    aput-wide p1, p0, v0

    .line 66
    :goto_2
    return-void
.end method
