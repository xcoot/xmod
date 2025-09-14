.class public abstract Lcom/android/server/power/stats/PowerStatsProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static -$$Nest$smconcatLabels([Lcom/android/server/power/stats/MultiStateStats$States;[I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    aget-object v2, p0, v1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-boolean v2, v2, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    aget-object v3, p0, v1

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/power/stats/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, "="

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    aget-object v3, p0, v1

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 38
    .line 39
    aget v4, p1, v1

    .line 40
    .line 41
    aget-object v3, v3, v4

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public static -$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/MultiStateStats$States;)[[I
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/power/stats/PowerStatsProcessor$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/android/server/power/stats/PowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    array-length v2, p0

    .line 12
    new-array v2, v2, [I

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v1, p0, v2, v3}, Lcom/android/server/power/stats/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    aput v3, v1, v2

    .line 27
    .line 28
    aput p0, v1, v3

    .line 29
    .line 30
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, [[I

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, [[I

    .line 43
    .line 44
    return-object p0
.end method


# virtual methods
.method public addPowerStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract finish(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
.end method

.method public noteStateChange(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 0

    .line 1
    return-void
.end method

.method public start(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
    .locals 0

    .line 1
    return-void
.end method
