.class public final Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final mBucketBoundaries:[F

.field public final mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

.field public final mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

.field public final mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;


# direct methods
.method public static -$$Nest$smgetDistributionRatio(FFFF)F
    .locals 3

    .line 1
    invoke-static {p0, p2}, Ljava/lang/Float;->compare(FF)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/high16 p0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    cmpg-float v0, p1, p2

    .line 11
    .line 12
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 13
    .line 14
    if-gez v0, :cond_3

    .line 15
    .line 16
    cmpg-float v0, p2, p3

    .line 17
    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    cmpg-float v0, p0, p2

    .line 22
    .line 23
    if-gez v0, :cond_2

    .line 24
    .line 25
    sub-float/2addr p0, p1

    .line 26
    sub-float/2addr p2, p1

    .line 27
    div-float/2addr p0, p2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    cmpl-float p1, p0, p2

    .line 30
    .line 31
    if-lez p1, :cond_4

    .line 32
    .line 33
    sub-float p0, p3, p0

    .line 34
    .line 35
    sub-float/2addr p3, p2

    .line 36
    div-float/2addr p0, p3

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v2, "getDistributionRatio: wrong boundary "

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, ": "

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, " < "

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string p1, "AdaptiveBrightnessWeightStats"

    .line 76
    .line 77
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_4
    move p0, v1

    .line 81
    :goto_1
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 38
    new-array v0, v0, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 40
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->readFromParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    const-string p1, "AdaptiveBrightnessWeightStats (parcel): mBrightnessMapper: null"

    const-string v0, "AdaptiveBrightnessWeightStats"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 43
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    return-void
.end method

.method public constructor <init>([FLcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V

    return-void
.end method

.method public constructor <init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 12

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string/jumbo v0, "bucketBoundaries"

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 5
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    .line 6
    array-length v0, p1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    aget v0, p1, v2

    move v3, v1

    .line 8
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 9
    aget v4, p1, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 10
    aget v0, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 11
    const-string p2, "AdaptiveBrightnessWeightStats"

    const-string v3, "AdaptiveBrightnessWeightStats: stats is null. default!"

    invoke-static {p2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    array-length p2, p1

    new-array p2, p2, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move v3, v2

    .line 13
    :goto_3
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 14
    aget v4, p1, v3

    .line 15
    invoke-virtual {p3, v1, v4, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    move-result v4

    .line 16
    new-instance v11, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget v6, p1, v3

    .line 17
    invoke-virtual {p3, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v7

    const/high16 v8, 0x42700000    # 60.0f

    const-wide/16 v9, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;-><init>(FFFJ)V

    aput-object v11, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 18
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-ne v3, v4, :cond_6

    .line 19
    const-string v3, "AdaptiveBrightnessWeightStats - orig stats"

    invoke-static {v3, p2, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    move v3, v2

    .line 20
    :goto_4
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 21
    aget v4, p1, v3

    .line 22
    invoke-virtual {p3, v1, v4, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    move-result v4

    .line 23
    aget-object v5, p2, v3

    invoke-virtual {p3, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 24
    :cond_4
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 25
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 26
    const-string v0, "AdaptiveBrightnessWeightStats - mStats"

    invoke-static {v0, p2, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 27
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-direct {v0, p1, p3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 28
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    invoke-direct {v1, p1, p3, v0, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)V

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 29
    iget-object p0, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 30
    :goto_5
    iget-object p0, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length p0, p0

    if-ge v2, p0, :cond_5

    .line 31
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object p1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void

    .line 33
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bucket boundaries and stats must be of same size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bucket boundaries must contain at least 1 value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBucketIndex(F[F)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    cmpg-float v1, p0, v1

    .line 5
    .line 6
    if-ltz v1, :cond_7

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    aget v1, p1, v1

    .line 12
    .line 13
    cmpl-float v1, p0, v1

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    array-length v1, p1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_4

    .line 22
    .line 23
    add-int v2, v0, v1

    .line 24
    .line 25
    div-int/lit8 v2, v2, 0x2

    .line 26
    .line 27
    aget v3, p1, v2

    .line 28
    .line 29
    cmpg-float v4, v3, p0

    .line 30
    .line 31
    if-gtz v4, :cond_2

    .line 32
    .line 33
    add-int/lit8 v4, v2, 0x1

    .line 34
    .line 35
    aget v5, p1, v4

    .line 36
    .line 37
    cmpg-float v5, p0, v5

    .line 38
    .line 39
    if-gez v5, :cond_2

    .line 40
    .line 41
    move v0, v2

    .line 42
    move v1, v4

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    cmpg-float v4, v3, p0

    .line 45
    .line 46
    if-gez v4, :cond_3

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    move v0, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    cmpl-float v3, v3, p0

    .line 53
    .line 54
    if-lez v3, :cond_1

    .line 55
    .line 56
    move v1, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    :goto_1
    const/high16 v2, 0x41200000    # 10.0f

    .line 59
    .line 60
    cmpg-float v2, p0, v2

    .line 61
    .line 62
    if-gez v2, :cond_5

    .line 63
    .line 64
    aget v2, p1, v0

    .line 65
    .line 66
    sub-float v2, p0, v2

    .line 67
    .line 68
    aget p1, p1, v1

    .line 69
    .line 70
    sub-float/2addr p1, p0

    .line 71
    cmpg-float p0, v2, p1

    .line 72
    .line 73
    if-gtz p0, :cond_6

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    aget v2, p1, v0

    .line 77
    .line 78
    div-float v2, p0, v2

    .line 79
    .line 80
    aget p1, p1, v1

    .line 81
    .line 82
    div-float/2addr p1, p0

    .line 83
    cmpg-float p0, v2, p1

    .line 84
    .line 85
    if-gtz p0, :cond_6

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    move v0, v1

    .line 89
    :goto_2
    return v0

    .line 90
    :cond_7
    :goto_3
    const/4 p0, -0x1

    .line 91
    return p0
.end method

.method public static printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    move v3, p0

    .line 21
    :goto_0
    array-length v4, p2

    .line 22
    if-ge v3, v4, :cond_0

    .line 23
    .line 24
    aget v4, p2, v3

    .line 25
    .line 26
    float-to-int v4, v4

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "%9d"

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    invoke-static {v5, v4, v1, v3, v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    array-length p2, p1

    .line 44
    :goto_1
    if-ge p0, p2, :cond_1

    .line 45
    .line 46
    aget-object v3, p1, p0

    .line 47
    .line 48
    const-string v4, "%9s"

    .line 49
    .line 50
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const/4 v5, 0x1

    .line 55
    invoke-static {v4, v3, v2, p0, v5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string p1, "AdaptiveBrightnessWeightStats"

    .line 85
    .line 86
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    const-class v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 33
    .line 34
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    move v0, v1

    .line 42
    :goto_0
    return v0
.end method

.method public getBucketBoundaries()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public getContinuityCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "AdaptiveBrightnessWeightStats"

    .line 9
    .line 10
    const-string/jumbo v0, "mContinuityStatsCollector is null"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTimeCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "AdaptiveBrightnessWeightStats"

    .line 9
    .line 10
    const-string/jumbo v0, "mTimeStatsCollector is null"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 12
    .line 13
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0
.end method

.method public log(FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move/from16 v6, p7

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    if-eqz v6, :cond_1

    .line 21
    .line 22
    new-instance v8, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v9, "("

    .line 25
    .line 26
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    new-instance v9, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget v10, v5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 37
    .line 38
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v10, "->"

    .line 42
    .line 43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v10, v5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 47
    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string/jumbo v9, "null"

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v9, ")"

    .line 63
    .line 64
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo v9, "log: l:"

    .line 77
    .line 78
    .line 79
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v9, " b:"

    .line 86
    .line 87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v9, " t:"

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v10, " u:"

    .line 102
    .line 103
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v10, " "

    .line 110
    .line 111
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    if-eqz v6, :cond_2

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    const-string v7, ""

    .line 118
    .line 119
    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    const-string v8, "AdaptiveBrightnessWeightStats"

    .line 127
    .line 128
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    iget-object v7, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 132
    .line 133
    invoke-static {v2, v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-ltz v10, :cond_b

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    cmpl-float v7, v1, v7

    .line 141
    .line 142
    if-ltz v7, :cond_b

    .line 143
    .line 144
    if-eqz v4, :cond_b

    .line 145
    .line 146
    iget-object v7, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 147
    .line 148
    iget-object v11, v7, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    .line 149
    .line 150
    invoke-static {v2, v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    aget v13, v11, v12

    .line 155
    .line 156
    const/high16 v14, 0x40200000    # 2.5f

    .line 157
    .line 158
    div-float v15, v13, v14

    .line 159
    .line 160
    const/high16 v16, 0x41200000    # 10.0f

    .line 161
    .line 162
    sub-float v14, v13, v16

    .line 163
    .line 164
    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    const/high16 v15, 0x40200000    # 2.5f

    .line 169
    .line 170
    mul-float/2addr v15, v13

    .line 171
    move/from16 v17, v10

    .line 172
    .line 173
    add-float v10, v13, v16

    .line 174
    .line 175
    invoke-static {v15, v10}, Ljava/lang/Math;->max(FF)F

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    invoke-static {v14, v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    array-length v0, v11

    .line 184
    add-int/lit8 v0, v0, -0x1

    .line 185
    .line 186
    const/4 v5, 0x0

    .line 187
    invoke-static {v15, v5, v0}, Landroid/util/MathUtils;->constrain(III)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-static {v10, v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    .line 192
    .line 193
    .line 194
    move-result v15

    .line 195
    array-length v6, v11

    .line 196
    add-int/lit8 v6, v6, -0x1

    .line 197
    .line 198
    invoke-static {v15, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    aget v15, v11, v0

    .line 203
    .line 204
    cmpg-float v15, v15, v14

    .line 205
    .line 206
    if-gez v15, :cond_3

    .line 207
    .line 208
    array-length v15, v11

    .line 209
    add-int/lit8 v15, v15, -0x2

    .line 210
    .line 211
    if-gt v0, v15, :cond_3

    .line 212
    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 214
    .line 215
    :cond_3
    aget v15, v11, v6

    .line 216
    .line 217
    cmpl-float v15, v15, v10

    .line 218
    .line 219
    if-lez v15, :cond_4

    .line 220
    .line 221
    if-lez v6, :cond_4

    .line 222
    .line 223
    add-int/lit8 v6, v6, -0x1

    .line 224
    .line 225
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string/jumbo v5, "updateTransientStats: "

    .line 228
    .line 229
    .line 230
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v5, " < "

    .line 237
    .line 238
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v5, "  b:"

    .line 251
    .line 252
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string/jumbo v5, "s"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :goto_2
    if-gt v0, v6, :cond_a

    .line 278
    .line 279
    iget-object v5, v7, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    check-cast v5, Ljava/util/ArrayList;

    .line 286
    .line 287
    iget-object v9, v7, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 288
    .line 289
    if-eqz v9, :cond_9

    .line 290
    .line 291
    aget v15, v11, v0

    .line 292
    .line 293
    move/from16 v18, v6

    .line 294
    .line 295
    invoke-virtual {v9, v15, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessForSpline(FLandroid/util/Spline;)F

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    invoke-virtual {v9, v6}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-ne v12, v0, :cond_5

    .line 304
    .line 305
    new-instance v9, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string/jumbo v4, "updateTransientStats: b: "

    .line 308
    .line 309
    .line 310
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v4, " ambientLux:"

    .line 317
    .line 318
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v4, " currentBucketLux:"

    .line 325
    .line 326
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v4, " mBrightnessMapper: "

    .line 333
    .line 334
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    :cond_5
    invoke-static {v15, v14, v13, v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetDistributionRatio(FFFF)F

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    const/4 v15, 0x0

    .line 356
    :goto_3
    if-ge v15, v9, :cond_7

    .line 357
    .line 358
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v19

    .line 362
    check-cast v19, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 363
    .line 364
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    invoke-static {v6, v1}, Ljava/lang/Float;->compare(FF)I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-nez v1, :cond_6

    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 376
    .line 377
    move/from16 v1, p2

    .line 378
    .line 379
    goto :goto_3

    .line 380
    :cond_7
    const/4 v15, -0x1

    .line 381
    :goto_4
    if-ltz v15, :cond_8

    .line 382
    .line 383
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 388
    .line 389
    mul-float/2addr v4, v3

    .line 390
    invoke-virtual {v1, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->updateWeight(F)V

    .line 391
    .line 392
    .line 393
    goto :goto_5

    .line 394
    :cond_8
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 395
    .line 396
    mul-float/2addr v4, v3

    .line 397
    invoke-direct {v1, v6, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_9
    move/from16 v18, v6

    .line 405
    .line 406
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 407
    .line 408
    move/from16 v1, p2

    .line 409
    .line 410
    move-object/from16 v4, p4

    .line 411
    .line 412
    move/from16 v6, v18

    .line 413
    .line 414
    goto/16 :goto_2

    .line 415
    .line 416
    :cond_a
    if-eqz p7, :cond_b

    .line 417
    .line 418
    move-object/from16 v0, p5

    .line 419
    .line 420
    if-eqz v0, :cond_b

    .line 421
    .line 422
    iget v3, v0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 423
    .line 424
    iget v0, v0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 425
    .line 426
    sub-float v4, v3, v0

    .line 427
    .line 428
    move-object/from16 v0, p0

    .line 429
    .line 430
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 431
    .line 432
    iget-object v6, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    .line 433
    .line 434
    const/4 v7, 0x1

    .line 435
    move/from16 v2, p1

    .line 436
    .line 437
    move-object/from16 v5, p6

    .line 438
    .line 439
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V

    .line 440
    .line 441
    .line 442
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 443
    .line 444
    aget-object v0, v0, v17

    .line 445
    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 447
    .line 448
    .line 449
    move-result-wide v1

    .line 450
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setLastUserBrightnessTime(J)V

    .line 451
    .line 452
    .line 453
    :cond_b
    return-void
.end method

.method public setMaxWeight()V
    .locals 6

    .line 1
    const-string v0, "AdaptiveBrightnessWeightStats"

    .line 2
    .line 3
    const-string/jumbo v1, "setMaxWeight"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    aget-object v2, p0, v1

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/high16 v5, 0x46e10000    # 28800.0f

    .line 26
    .line 27
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->set(FFF)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public summarizeStats()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->summarize()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 11
    .line 12
    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    iget-object v3, v9, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 16
    .line 17
    array-length v4, v3

    .line 18
    const/4 v11, 0x0

    .line 19
    if-ge v2, v4, :cond_0

    .line 20
    .line 21
    aget-object v3, v3, v2

    .line 22
    .line 23
    invoke-virtual {v3, v11, v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, v9, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    .line 30
    .line 31
    array-length v4, v2

    .line 32
    new-array v4, v4, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 33
    .line 34
    iget-object v5, v9, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const-string v12, "AdaptiveBrightnessWeightStats"

    .line 45
    .line 46
    if-eqz v6, :cond_17

    .line 47
    .line 48
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 53
    .line 54
    iget-object v7, v9, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    .line 55
    .line 56
    iget v8, v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const v14, 0x7f7fffff    # Float.MAX_VALUE

    .line 63
    .line 64
    .line 65
    const/4 v15, 0x0

    .line 66
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v16

    .line 70
    const/high16 v17, 0x41200000    # 10.0f

    .line 71
    .line 72
    if-eqz v16, :cond_3

    .line 73
    .line 74
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v16

    .line 78
    move-object/from16 v13, v16

    .line 79
    .line 80
    check-cast v13, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 81
    .line 82
    iget v10, v13, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 83
    .line 84
    iget v11, v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLowerBoundary:F

    .line 85
    .line 86
    cmpg-float v11, v11, v10

    .line 87
    .line 88
    if-gtz v11, :cond_2

    .line 89
    .line 90
    iget v11, v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mUpperBoundary:F

    .line 91
    .line 92
    cmpg-float v11, v10, v11

    .line 93
    .line 94
    if-gtz v11, :cond_2

    .line 95
    .line 96
    cmpg-float v11, v8, v17

    .line 97
    .line 98
    if-gez v11, :cond_1

    .line 99
    .line 100
    move-object v15, v13

    .line 101
    goto :goto_3

    .line 102
    :cond_1
    div-float v10, v8, v10

    .line 103
    .line 104
    float-to-double v10, v10

    .line 105
    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D

    .line 106
    .line 107
    .line 108
    move-result-wide v10

    .line 109
    double-to-float v10, v10

    .line 110
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    cmpg-float v11, v10, v14

    .line 115
    .line 116
    if-gez v11, :cond_2

    .line 117
    .line 118
    move v14, v10

    .line 119
    move-object v15, v13

    .line 120
    :cond_2
    const/4 v11, 0x0

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    :goto_3
    iget v8, v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 123
    .line 124
    if-eqz v15, :cond_e

    .line 125
    .line 126
    new-instance v10, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    iget v11, v15, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    .line 132
    .line 133
    iget v13, v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPreTimeDuration:F

    .line 134
    .line 135
    add-float v14, v11, v13

    .line 136
    .line 137
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    move-object/from16 v21, v5

    .line 142
    .line 143
    iget v5, v15, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 144
    .line 145
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    float-to-int v11, v11

    .line 150
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    float-to-int v13, v13

    .line 155
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    filled-new-array {v7, v5, v11, v13}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    const-string v7, " cl:%.1f pl:%.1f t(%d + %d)"

    .line 164
    .line 165
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget v5, v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    .line 173
    .line 174
    iget v7, v15, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    .line 175
    .line 176
    sub-float v11, v5, v7

    .line 177
    .line 178
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    const/4 v13, 0x0

    .line 183
    cmpl-float v19, v5, v13

    .line 184
    .line 185
    const/high16 v22, 0x7fc00000    # Float.NaN

    .line 186
    .line 187
    if-lez v19, :cond_5

    .line 188
    .line 189
    cmpl-float v23, v7, v13

    .line 190
    .line 191
    if-lez v23, :cond_5

    .line 192
    .line 193
    cmpl-float v13, v5, v7

    .line 194
    .line 195
    if-lez v13, :cond_4

    .line 196
    .line 197
    div-float v13, v7, v5

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_4
    div-float v13, v5, v7

    .line 201
    .line 202
    :goto_4
    move-object/from16 v23, v1

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_5
    move-object/from16 v23, v1

    .line 206
    .line 207
    move/from16 v13, v22

    .line 208
    .line 209
    :goto_5
    iget v1, v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    .line 210
    .line 211
    const/16 v19, 0x0

    .line 212
    .line 213
    cmpl-float v24, v1, v19

    .line 214
    .line 215
    iget v15, v15, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    .line 216
    .line 217
    if-lez v24, :cond_7

    .line 218
    .line 219
    cmpl-float v24, v15, v19

    .line 220
    .line 221
    if-lez v24, :cond_7

    .line 222
    .line 223
    cmpl-float v24, v1, v15

    .line 224
    .line 225
    if-lez v24, :cond_6

    .line 226
    .line 227
    div-float v24, v15, v1

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_6
    div-float v24, v1, v15

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_7
    move/from16 v24, v22

    .line 234
    .line 235
    :goto_6
    mul-float/2addr v1, v15

    .line 236
    const/4 v15, 0x0

    .line 237
    cmpl-float v1, v1, v15

    .line 238
    .line 239
    if-lez v1, :cond_8

    .line 240
    .line 241
    const/4 v1, 0x1

    .line 242
    goto :goto_7

    .line 243
    :cond_8
    const/4 v1, 0x0

    .line 244
    :goto_7
    const/high16 v15, 0x3f800000    # 1.0f

    .line 245
    .line 246
    if-eqz v1, :cond_a

    .line 247
    .line 248
    const/high16 v25, 0x42480000    # 50.0f

    .line 249
    .line 250
    cmpg-float v25, v11, v25

    .line 251
    .line 252
    if-ltz v25, :cond_9

    .line 253
    .line 254
    const v25, 0x3f19999a    # 0.6f

    .line 255
    .line 256
    .line 257
    cmpl-float v26, v13, v25

    .line 258
    .line 259
    if-gtz v26, :cond_9

    .line 260
    .line 261
    cmpl-float v25, v24, v25

    .line 262
    .line 263
    if-lez v25, :cond_a

    .line 264
    .line 265
    :cond_9
    move/from16 v25, v15

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_a
    const/16 v25, 0x0

    .line 269
    .line 270
    :goto_8
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 271
    .line 272
    .line 273
    move-result-object v26

    .line 274
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 275
    .line 276
    .line 277
    move-result-object v27

    .line 278
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 279
    .line 280
    .line 281
    move-result-object v28

    .line 282
    float-to-int v1, v11

    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v29

    .line 287
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 288
    .line 289
    .line 290
    move-result-object v30

    .line 291
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 292
    .line 293
    .line 294
    move-result-object v31

    .line 295
    filled-new-array/range {v26 .. v31}, [Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const-string v7, " cb:%.1f pb:%.1f (%s,%d,%.2f,%.2f)"

    .line 300
    .line 301
    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-nez v1, :cond_d

    .line 313
    .line 314
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isNaN(F)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_d

    .line 319
    .line 320
    move/from16 v7, v25

    .line 321
    .line 322
    const/4 v1, 0x0

    .line 323
    invoke-static {v7, v1}, Ljava/lang/Float;->compare(FF)I

    .line 324
    .line 325
    .line 326
    move-result v11

    .line 327
    if-eqz v11, :cond_d

    .line 328
    .line 329
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 330
    .line 331
    .line 332
    move-result v11

    .line 333
    if-nez v11, :cond_d

    .line 334
    .line 335
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 336
    .line 337
    .line 338
    move-result v11

    .line 339
    if-eqz v11, :cond_b

    .line 340
    .line 341
    goto :goto_a

    .line 342
    :cond_b
    cmpg-float v11, v1, v14

    .line 343
    .line 344
    if-gez v11, :cond_c

    .line 345
    .line 346
    const/high16 v1, 0x45610000    # 3600.0f

    .line 347
    .line 348
    cmpg-float v1, v14, v1

    .line 349
    .line 350
    if-gez v1, :cond_c

    .line 351
    .line 352
    const v1, -0x46ee5d4c

    .line 353
    .line 354
    .line 355
    mul-float/2addr v14, v1

    .line 356
    add-float v1, v14, v15

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_c
    const/4 v1, 0x0

    .line 360
    :goto_9
    invoke-static {v8, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    .line 361
    .line 362
    .line 363
    move-result v11

    .line 364
    iget-object v13, v9, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 365
    .line 366
    aget-object v11, v13, v11

    .line 367
    .line 368
    invoke-virtual {v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    const/high16 v13, 0x40400000    # 3.0f

    .line 373
    .line 374
    mul-float/2addr v11, v13

    .line 375
    mul-float v13, v1, v7

    .line 376
    .line 377
    float-to-double v13, v13

    .line 378
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 379
    .line 380
    .line 381
    move-result-wide v13

    .line 382
    double-to-float v13, v13

    .line 383
    const/high16 v14, 0x46610000    # 14400.0f

    .line 384
    .line 385
    mul-float/2addr v13, v14

    .line 386
    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    .line 387
    .line 388
    .line 389
    move-result v11

    .line 390
    new-instance v13, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    const-string v14, "ContinuityCalculator.calculate(): mContinuity: "

    .line 393
    .line 394
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v14, " mLux: "

    .line 401
    .line 402
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string v14, " mBrightness: "

    .line 409
    .line 410
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v14, " mSimilarity: "

    .line 417
    .line 418
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v7, " timeFactor: "

    .line 425
    .line 426
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    goto :goto_b

    .line 447
    :cond_d
    :goto_a
    move/from16 v11, v22

    .line 448
    .line 449
    :goto_b
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-nez v1, :cond_f

    .line 454
    .line 455
    new-instance v13, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 456
    .line 457
    invoke-direct {v13, v5, v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    .line 458
    .line 459
    .line 460
    goto :goto_c

    .line 461
    :cond_e
    move-object/from16 v23, v1

    .line 462
    .line 463
    move-object/from16 v21, v5

    .line 464
    .line 465
    :cond_f
    const/4 v13, 0x0

    .line 466
    :goto_c
    if-eqz v13, :cond_16

    .line 467
    .line 468
    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->valid()Z

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    if-eqz v1, :cond_16

    .line 473
    .line 474
    invoke-static {v8, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    aget v5, v2, v1

    .line 479
    .line 480
    const/high16 v7, 0x40200000    # 2.5f

    .line 481
    .line 482
    div-float v10, v5, v7

    .line 483
    .line 484
    sub-float v11, v5, v17

    .line 485
    .line 486
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    .line 487
    .line 488
    .line 489
    move-result v10

    .line 490
    mul-float/2addr v7, v5

    .line 491
    add-float v11, v5, v17

    .line 492
    .line 493
    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    invoke-static {v10, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    .line 498
    .line 499
    .line 500
    move-result v11

    .line 501
    array-length v14, v2

    .line 502
    const/4 v15, 0x1

    .line 503
    sub-int/2addr v14, v15

    .line 504
    const/4 v15, 0x0

    .line 505
    invoke-static {v11, v15, v14}, Landroid/util/MathUtils;->constrain(III)I

    .line 506
    .line 507
    .line 508
    move-result v11

    .line 509
    invoke-static {v7, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    .line 510
    .line 511
    .line 512
    move-result v14

    .line 513
    array-length v0, v2

    .line 514
    const/16 v16, 0x1

    .line 515
    .line 516
    add-int/lit8 v0, v0, -0x1

    .line 517
    .line 518
    invoke-static {v14, v15, v0}, Landroid/util/MathUtils;->constrain(III)I

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    aget v14, v2, v11

    .line 523
    .line 524
    cmpg-float v14, v14, v10

    .line 525
    .line 526
    if-gez v14, :cond_10

    .line 527
    .line 528
    array-length v14, v2

    .line 529
    add-int/lit8 v14, v14, -0x2

    .line 530
    .line 531
    if-gt v11, v14, :cond_10

    .line 532
    .line 533
    add-int/lit8 v11, v11, 0x1

    .line 534
    .line 535
    :cond_10
    aget v14, v2, v0

    .line 536
    .line 537
    cmpl-float v14, v14, v7

    .line 538
    .line 539
    if-lez v14, :cond_11

    .line 540
    .line 541
    if-lez v0, :cond_11

    .line 542
    .line 543
    add-int/lit8 v0, v0, -0x1

    .line 544
    .line 545
    :cond_11
    :goto_d
    if-gt v11, v0, :cond_15

    .line 546
    .line 547
    iget-object v14, v9, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 548
    .line 549
    if-eqz v14, :cond_14

    .line 550
    .line 551
    aget v15, v2, v11

    .line 552
    .line 553
    move/from16 v17, v0

    .line 554
    .line 555
    iget-object v0, v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mSpline:Landroid/util/Spline;

    .line 556
    .line 557
    invoke-virtual {v14, v15, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessForSpline(FLandroid/util/Spline;)F

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    invoke-virtual {v14, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    move/from16 v18, v1

    .line 566
    .line 567
    if-ne v1, v11, :cond_12

    .line 568
    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    move-object/from16 v20, v9

    .line 572
    .line 573
    const-string/jumbo v9, "distributeToBucketBoundaries: continuityStat: b: "

    .line 574
    .line 575
    .line 576
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    iget-object v9, v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mSpline:Landroid/util/Spline;

    .line 580
    .line 581
    invoke-virtual {v14, v15, v9}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessForSpline(FLandroid/util/Spline;)F

    .line 582
    .line 583
    .line 584
    move-result v9

    .line 585
    invoke-virtual {v14, v9}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    .line 586
    .line 587
    .line 588
    move-result v9

    .line 589
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    const-string v9, " ambientLux:"

    .line 596
    .line 597
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v9, " currentBucketLux:"

    .line 604
    .line 605
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    const-string v9, " mBrightnessMapper: "

    .line 612
    .line 613
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    goto :goto_e

    .line 627
    :cond_12
    move-object/from16 v20, v9

    .line 628
    .line 629
    :goto_e
    invoke-static {v15, v10, v5, v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetDistributionRatio(FFFF)F

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    aget-object v9, v4, v11

    .line 634
    .line 635
    if-eqz v9, :cond_13

    .line 636
    .line 637
    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 638
    .line 639
    .line 640
    move-result v9

    .line 641
    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 642
    .line 643
    .line 644
    move-result v14

    .line 645
    mul-float/2addr v14, v1

    .line 646
    add-float/2addr v14, v9

    .line 647
    aget-object v9, v4, v11

    .line 648
    .line 649
    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    .line 650
    .line 651
    .line 652
    move-result v9

    .line 653
    aget-object v15, v4, v11

    .line 654
    .line 655
    invoke-virtual {v15}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 656
    .line 657
    .line 658
    move-result v15

    .line 659
    mul-float/2addr v15, v9

    .line 660
    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 661
    .line 662
    .line 663
    move-result v9

    .line 664
    mul-float/2addr v9, v0

    .line 665
    mul-float/2addr v9, v1

    .line 666
    add-float/2addr v9, v15

    .line 667
    aget-object v0, v4, v11

    .line 668
    .line 669
    div-float/2addr v9, v14

    .line 670
    invoke-virtual {v0, v9, v14}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    .line 671
    .line 672
    .line 673
    goto :goto_f

    .line 674
    :cond_13
    new-instance v9, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 675
    .line 676
    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 677
    .line 678
    .line 679
    move-result v14

    .line 680
    mul-float/2addr v14, v1

    .line 681
    invoke-direct {v9, v0, v14}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    .line 682
    .line 683
    .line 684
    aput-object v9, v4, v11

    .line 685
    .line 686
    goto :goto_f

    .line 687
    :cond_14
    move/from16 v17, v0

    .line 688
    .line 689
    move/from16 v18, v1

    .line 690
    .line 691
    move-object/from16 v20, v9

    .line 692
    .line 693
    :goto_f
    add-int/lit8 v11, v11, 0x1

    .line 694
    .line 695
    move/from16 v0, v17

    .line 696
    .line 697
    move/from16 v1, v18

    .line 698
    .line 699
    move-object/from16 v9, v20

    .line 700
    .line 701
    const/4 v15, 0x0

    .line 702
    goto/16 :goto_d

    .line 703
    .line 704
    :cond_15
    move-object/from16 v20, v9

    .line 705
    .line 706
    const-string/jumbo v0, "distributeToBucketBoundaries() rawContinuityStats: "

    .line 707
    .line 708
    .line 709
    invoke-static {v0, v4, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 710
    .line 711
    .line 712
    goto :goto_10

    .line 713
    :cond_16
    move-object/from16 v20, v9

    .line 714
    .line 715
    :goto_10
    const/4 v11, 0x0

    .line 716
    move-object/from16 v0, p0

    .line 717
    .line 718
    move-object/from16 v9, v20

    .line 719
    .line 720
    move-object/from16 v5, v21

    .line 721
    .line 722
    move-object/from16 v1, v23

    .line 723
    .line 724
    goto/16 :goto_1

    .line 725
    .line 726
    :cond_17
    move-object/from16 v23, v1

    .line 727
    .line 728
    move-object/from16 v20, v9

    .line 729
    .line 730
    const/4 v0, 0x0

    .line 731
    :goto_11
    array-length v1, v3

    .line 732
    if-ge v0, v1, :cond_19

    .line 733
    .line 734
    aget-object v1, v4, v0

    .line 735
    .line 736
    if-eqz v1, :cond_18

    .line 737
    .line 738
    aget-object v5, v3, v0

    .line 739
    .line 740
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    .line 741
    .line 742
    .line 743
    move-result v1

    .line 744
    aget-object v6, v4, v0

    .line 745
    .line 746
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 747
    .line 748
    .line 749
    move-result v6

    .line 750
    invoke-virtual {v5, v1, v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    .line 751
    .line 752
    .line 753
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 754
    .line 755
    goto :goto_11

    .line 756
    :cond_19
    move-object/from16 v0, v20

    .line 757
    .line 758
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    .line 759
    .line 760
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 765
    .line 766
    .line 767
    move-result v3

    .line 768
    if-eqz v3, :cond_1a

    .line 769
    .line 770
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    check-cast v3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 775
    .line 776
    iget v4, v3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 777
    .line 778
    invoke-static {v4, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    .line 779
    .line 780
    .line 781
    move-result v5

    .line 782
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 783
    .line 784
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->summarize()V

    .line 785
    .line 786
    .line 787
    iget-object v6, v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 788
    .line 789
    aget-object v5, v6, v5

    .line 790
    .line 791
    invoke-virtual {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 792
    .line 793
    .line 794
    move-result v5

    .line 795
    iget v6, v3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    .line 796
    .line 797
    add-float/2addr v6, v5

    .line 798
    iput v6, v3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    .line 799
    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    const-string/jumbo v6, "updateTimeDurationPrevUserBrightnessStats: lux: "

    .line 803
    .line 804
    .line 805
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    const-string v4, " timeDuration: "

    .line 812
    .line 813
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .line 825
    .line 826
    goto :goto_12

    .line 827
    :cond_1a
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    .line 828
    .line 829
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    if-eqz v2, :cond_1b

    .line 838
    .line 839
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    check-cast v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 844
    .line 845
    iget v3, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 846
    .line 847
    iget-object v6, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mSpline:Landroid/util/Spline;

    .line 848
    .line 849
    iget-object v7, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    .line 850
    .line 851
    const/4 v8, 0x0

    .line 852
    iget v4, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    .line 853
    .line 854
    iget v5, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    .line 855
    .line 856
    move-object v2, v0

    .line 857
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V

    .line 858
    .line 859
    .line 860
    goto :goto_13

    .line 861
    :cond_1b
    const/4 v1, 0x0

    .line 862
    :goto_14
    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    .line 863
    .line 864
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 865
    .line 866
    .line 867
    move-result v2

    .line 868
    if-ge v1, v2, :cond_1c

    .line 869
    .line 870
    const-string v2, "addCurrentUserBrightnessStatsToPrevious: ["

    .line 871
    .line 872
    const-string v3, "] "

    .line 873
    .line 874
    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    .line 879
    .line 880
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .line 893
    .line 894
    add-int/lit8 v1, v1, 0x1

    .line 895
    .line 896
    goto :goto_14

    .line 897
    :cond_1c
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    .line 898
    .line 899
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 900
    .line 901
    .line 902
    move-object/from16 v0, p0

    .line 903
    .line 904
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 905
    .line 906
    iget-object v1, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 907
    .line 908
    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 909
    .line 910
    const-string/jumbo v3, "summarizeStats(): newTimeStats[]:"

    .line 911
    .line 912
    .line 913
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 914
    .line 915
    move-object/from16 v5, v23

    .line 916
    .line 917
    invoke-static {v3, v5, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 918
    .line 919
    .line 920
    const-string/jumbo v3, "summarizeStats(): newContinuityStats[]:"

    .line 921
    .line 922
    .line 923
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 924
    .line 925
    invoke-static {v3, v1, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 926
    .line 927
    .line 928
    const-string/jumbo v3, "summarizeStats(): lastStats[]:"

    .line 929
    .line 930
    .line 931
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 932
    .line 933
    invoke-static {v3, v2, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 934
    .line 935
    .line 936
    const/4 v3, 0x0

    .line 937
    :goto_15
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 938
    .line 939
    array-length v4, v4

    .line 940
    if-ge v3, v4, :cond_22

    .line 941
    .line 942
    aget-object v4, v1, v3

    .line 943
    .line 944
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 945
    .line 946
    .line 947
    move-result v4

    .line 948
    aget-object v6, v5, v3

    .line 949
    .line 950
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 951
    .line 952
    .line 953
    move-result v6

    .line 954
    add-float/2addr v6, v4

    .line 955
    const/4 v4, 0x0

    .line 956
    invoke-static {v6, v4}, Ljava/lang/Float;->compare(FF)I

    .line 957
    .line 958
    .line 959
    move-result v7

    .line 960
    if-nez v7, :cond_1d

    .line 961
    .line 962
    const/4 v13, 0x0

    .line 963
    goto :goto_16

    .line 964
    :cond_1d
    aget-object v4, v1, v3

    .line 965
    .line 966
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    .line 967
    .line 968
    .line 969
    move-result v4

    .line 970
    aget-object v7, v1, v3

    .line 971
    .line 972
    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 973
    .line 974
    .line 975
    move-result v7

    .line 976
    mul-float/2addr v7, v4

    .line 977
    aget-object v4, v5, v3

    .line 978
    .line 979
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    .line 980
    .line 981
    .line 982
    move-result v4

    .line 983
    aget-object v8, v5, v3

    .line 984
    .line 985
    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 986
    .line 987
    .line 988
    move-result v8

    .line 989
    mul-float/2addr v8, v4

    .line 990
    add-float/2addr v8, v7

    .line 991
    div-float v13, v8, v6

    .line 992
    .line 993
    :goto_16
    aget-object v4, v2, v3

    .line 994
    .line 995
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    .line 996
    .line 997
    .line 998
    move-result v4

    .line 999
    aget-object v7, v2, v3

    .line 1000
    .line 1001
    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    .line 1002
    .line 1003
    .line 1004
    move-result v7

    .line 1005
    const/high16 v8, 0x41f00000    # 30.0f

    .line 1006
    .line 1007
    sub-float v9, v7, v8

    .line 1008
    .line 1009
    add-float/2addr v8, v7

    .line 1010
    invoke-static {v13, v9, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 1011
    .line 1012
    .line 1013
    move-result v13

    .line 1014
    const/high16 v8, 0x46e10000    # 28800.0f

    .line 1015
    .line 1016
    cmpl-float v9, v6, v8

    .line 1017
    .line 1018
    if-lez v9, :cond_1e

    .line 1019
    .line 1020
    const/4 v9, 0x0

    .line 1021
    goto :goto_19

    .line 1022
    :cond_1e
    add-float v9, v4, v6

    .line 1023
    .line 1024
    cmpl-float v10, v9, v8

    .line 1025
    .line 1026
    if-lez v10, :cond_1f

    .line 1027
    .line 1028
    sub-float v4, v8, v6

    .line 1029
    .line 1030
    :goto_17
    const/4 v9, 0x0

    .line 1031
    goto :goto_18

    .line 1032
    :cond_1f
    move v8, v9

    .line 1033
    goto :goto_17

    .line 1034
    :goto_18
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1035
    .line 1036
    .line 1037
    move-result v10

    .line 1038
    if-nez v10, :cond_20

    .line 1039
    .line 1040
    move v13, v9

    .line 1041
    goto :goto_19

    .line 1042
    :cond_20
    mul-float/2addr v7, v4

    .line 1043
    mul-float/2addr v13, v6

    .line 1044
    add-float/2addr v13, v7

    .line 1045
    div-float/2addr v13, v8

    .line 1046
    :goto_19
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    .line 1047
    .line 1048
    .line 1049
    move-result v4

    .line 1050
    if-eqz v4, :cond_21

    .line 1051
    .line 1052
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 1053
    .line 1054
    aget-object v4, v4, v3

    .line 1055
    .line 1056
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 1057
    .line 1058
    aget v6, v6, v3

    .line 1059
    .line 1060
    invoke-virtual {v4, v6, v13, v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->set(FFF)V

    .line 1061
    .line 1062
    .line 1063
    :cond_21
    add-int/lit8 v3, v3, 0x1

    .line 1064
    .line 1065
    goto/16 :goto_15

    .line 1066
    .line 1067
    :cond_22
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 1068
    .line 1069
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 1070
    .line 1071
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1072
    .line 1073
    .line 1074
    const/4 v10, 0x0

    .line 1075
    :goto_1a
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    .line 1076
    .line 1077
    array-length v2, v2

    .line 1078
    if-ge v10, v2, :cond_23

    .line 1079
    .line 1080
    new-instance v2, Ljava/util/ArrayList;

    .line 1081
    .line 1082
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .line 1084
    .line 1085
    iget-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 1086
    .line 1087
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    .line 1089
    .line 1090
    add-int/lit8 v10, v10, 0x1

    .line 1091
    .line 1092
    goto :goto_1a

    .line 1093
    :cond_23
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 1094
    .line 1095
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 1096
    .line 1097
    const-string/jumbo v2, "summarizeStats(): mStats:"

    .line 1098
    .line 1099
    .line 1100
    invoke-static {v2, v1, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 1101
    .line 1102
    .line 1103
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 7
    .line 8
    array-length p2, p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    if-ge p2, v1, :cond_0

    .line 17
    .line 18
    aget-object v0, v0, p2

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->writeToParcel(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
