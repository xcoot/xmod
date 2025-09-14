.class public final Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mBucketBoundaries:[F

.field public final mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

.field public final mTransientStats:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>([FLcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    .line 13
    array-length p1, p1

    .line 14
    new-array p1, p1, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 16
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 18
    const/4 p1, 0x0

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 21
    array-length v1, v0

    .line 22
    if-ge p1, v1, :cond_0

    .line 24
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, v2, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    .line 30
    aput-object v1, v0, p1

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 37
    return-void
.end method


# virtual methods
.method public final summarize()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 36
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 39
    move-result v5

    .line 40
    add-float/2addr v3, v5

    .line 41
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    .line 44
    move-result v5

    .line 45
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 48
    move-result v4

    .line 49
    mul-float/2addr v4, v5

    .line 50
    add-float/2addr v2, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    div-float/2addr v2, v3

    .line 53
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 55
    aget-object v1, v1, v0

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    .line 15
    array-length v5, v4

    .line 16
    if-ge v3, v5, :cond_0

    .line 18
    aget v4, v4, v3

    .line 20
    float-to-int v4, v4

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 25
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    const-string v5, "%9d"

    .line 31
    const/4 v6, 0x1

    .line 32
    invoke-static {v5, v4, v0, v3, v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 35
    move-result v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v3, v2

    .line 38
    move v4, v3

    .line 39
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v5

    .line 45
    if-ge v3, v5, :cond_2

    .line 47
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v5

    .line 59
    if-le v5, v4, :cond_1

    .line 61
    move v4, v5

    .line 62
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v3, v2

    .line 66
    :goto_2
    if-ge v3, v4, :cond_5

    .line 68
    move v5, v2

    .line 69
    :goto_3
    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v6

    .line 75
    if-ge v5, v6, :cond_4

    .line 77
    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v7

    .line 89
    const-string v8, "%9s"

    .line 91
    if-ge v3, v7, :cond_3

    .line 93
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v6

    .line 97
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 100
    move-result-object v6

    .line 101
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    goto :goto_4

    .line 109
    :cond_3
    const-string v6, "-"

    .line 111
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 114
    move-result-object v6

    .line 115
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 164
    return-object p0
.end method
