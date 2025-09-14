.class public final Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActive:Z

.field public mFrequencyRange:I

.field public mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mSignalStrength:I

.field public final perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method public constructor <init>(ILcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    new-array v1, v1, [I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x5

    .line 21
    aput v3, v1, v2

    .line 22
    .line 23
    aput p1, v1, v0

    .line 24
    .line 25
    const-class v2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 26
    .line 27
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, [[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 34
    .line 35
    move v1, v0

    .line 36
    :goto_0
    if-ge v1, p1, :cond_1

    .line 37
    .line 38
    move v2, v0

    .line 39
    :goto_1
    if-ge v2, v3, :cond_0

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 42
    .line 43
    aget-object v4, v4, v1

    .line 44
    .line 45
    new-instance v11, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 46
    .line 47
    const/4 v8, -0x1

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    move-object v5, v11

    .line 51
    move-object v6, p2

    .line 52
    move-object v10, p3

    .line 53
    invoke-direct/range {v5 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 54
    .line 55
    .line 56
    aput-object v11, v4, v2

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public final getRxDurationCounter(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    array-length p2, v1

    .line 12
    const/4 v0, 0x0

    .line 13
    aget-object v3, v1, v0

    .line 14
    .line 15
    aget-object v3, v3, v0

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 18
    .line 19
    new-array v4, p2, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 20
    .line 21
    iput-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 22
    .line 23
    :goto_0
    if-ge v0, p2, :cond_1

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 26
    .line 27
    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 28
    .line 29
    invoke-direct {v5, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 30
    .line 31
    .line 32
    aput-object v5, v4, v0

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-ltz p1, :cond_3

    .line 38
    .line 39
    array-length p2, v1

    .line 40
    if-lt p1, p2, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 44
    .line 45
    aget-object p0, p0, p1

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    :goto_1
    const-string p0, "Unexpected frequency range ("

    .line 49
    .line 50
    const-string p2, ") requested in getRxDurationCounter"

    .line 51
    .line 52
    const-string v0, "BatteryStatsImpl"

    .line 53
    .line 54
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v2
.end method

.method public final getTxDurationCounter(IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    return-object v2

    .line 12
    :cond_0
    array-length p3, v1

    .line 13
    aget-object v0, v1, v3

    .line 14
    .line 15
    array-length v4, v0

    .line 16
    aget-object v0, v0, v3

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    new-array v5, v5, [I

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    aput v4, v5, v6

    .line 25
    .line 26
    aput p3, v5, v3

    .line 27
    .line 28
    const-class v6, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 29
    .line 30
    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, [[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 35
    .line 36
    iput-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 37
    .line 38
    move v5, v3

    .line 39
    :goto_0
    if-ge v5, p3, :cond_2

    .line 40
    .line 41
    move v6, v3

    .line 42
    :goto_1
    if-ge v6, v4, :cond_1

    .line 43
    .line 44
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 45
    .line 46
    aget-object v7, v7, v5

    .line 47
    .line 48
    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 49
    .line 50
    invoke-direct {v8, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 51
    .line 52
    .line 53
    aput-object v8, v7, v6

    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string p3, ") requested in getTxDurationCounter"

    .line 62
    .line 63
    const-string v0, "BatteryStatsImpl"

    .line 64
    .line 65
    if-ltz p1, :cond_6

    .line 66
    .line 67
    array-length v4, v1

    .line 68
    if-lt p1, v4, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    if-ltz p2, :cond_5

    .line 72
    .line 73
    aget-object v1, v1, v3

    .line 74
    .line 75
    array-length v1, v1

    .line 76
    if-lt p2, v1, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 80
    .line 81
    aget-object p0, p0, p1

    .line 82
    .line 83
    aget-object p0, p0, p2

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_5
    :goto_2
    const-string p0, "Unexpected signal strength ("

    .line 87
    .line 88
    invoke-static {p2, p0, p3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    :cond_6
    :goto_3
    const-string p0, "Unexpected frequency range ("

    .line 93
    .line 94
    invoke-static {p1, p0, p3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v2
.end method

.method public final noteActive(JZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 2
    .line 3
    if-ne v0, p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 13
    .line 14
    aget-object p3, v0, p3

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 17
    .line 18
    aget-object p0, p3, p0

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 25
    .line 26
    aget-object p3, v0, p3

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 29
    .line 30
    aget-object p0, p3, p0

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
