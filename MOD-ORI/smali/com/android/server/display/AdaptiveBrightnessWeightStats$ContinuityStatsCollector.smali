.class public final Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mBucketBoundaries:[F

.field public final mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

.field public final mCurrentUserBrightnessStats:Ljava/util/ArrayList;

.field public final mPrevUserBrightnessStats:Ljava/util/ArrayList;

.field public final mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

.field public final mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;


# direct methods
.method public constructor <init>([FLcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    .line 5
    .line 6
    array-length p1, p1

    .line 7
    new-array p1, p1, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    if-ge p1, v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, v2, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    .line 21
    .line 22
    .line 23
    aput-object v1, v0, p1

    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

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
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 45
    .line 46
    iput-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V
    .locals 6

    .line 1
    if-eqz p6, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->summarize()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 15
    .line 16
    aget-object p0, p0, v0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    :goto_0
    move v5, p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    new-instance p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 28
    .line 29
    move-object v0, p0

    .line 30
    move v1, p1

    .line 31
    move v2, p2

    .line 32
    move v3, p3

    .line 33
    move-object v4, p4

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;-><init>(FFFLandroid/util/Spline;F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 52
    .line 53
    iget p2, p2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 54
    .line 55
    iget p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLowerBoundary:F

    .line 56
    .line 57
    cmpg-float p3, p3, p2

    .line 58
    .line 59
    if-gtz p3, :cond_1

    .line 60
    .line 61
    iget p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mUpperBoundary:F

    .line 62
    .line 63
    cmpg-float p2, p2, p3

    .line 64
    .line 65
    if-gtz p2, :cond_1

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    :goto_3
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-ge p0, p1, :cond_4

    .line 80
    .line 81
    const-string p1, "addUserBrightnessStat: ["

    .line 82
    .line 83
    const-string p2, "] "

    .line 84
    .line 85
    invoke-static {p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p6, :cond_3

    .line 90
    .line 91
    const-string/jumbo p2, "userInitiated "

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_3
    const-string p2, ""

    .line 96
    .line 97
    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "AdaptiveBrightnessWeightStats"

    .line 112
    .line 113
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    add-int/lit8 p0, p0, 0x1

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    return-void
.end method
