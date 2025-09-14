.class public final synthetic Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;

.field public final synthetic f$1:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$2:[I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$2:[I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;

    .line 16
    .line 17
    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    array-length v5, v2

    .line 23
    iget-object v6, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 24
    .line 25
    array-length v7, v6

    .line 26
    if-ne v5, v7, :cond_2

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/android/server/power/stats/MultiStateStats;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object v1, p1, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Lcom/android/server/power/stats/MultiStateStats$Factory;->getSerialState([I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {v1, v4, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    .line 52
    .line 53
    iget p1, p1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    .line 54
    .line 55
    aget-wide v1, v1, p1

    .line 56
    .line 57
    iget-wide v4, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 58
    .line 59
    iget-object p1, v3, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 60
    .line 61
    iget-wide v6, p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 62
    .line 63
    long-to-double v1, v1

    .line 64
    mul-double/2addr v6, v1

    .line 65
    add-double/2addr v6, v4

    .line 66
    iput-wide v6, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    :goto_0
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-ge p1, v1, :cond_1

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    .line 78
    .line 79
    iget v1, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    .line 80
    .line 81
    add-int/2addr v1, p1

    .line 82
    aget-wide v1, v2, v1

    .line 83
    .line 84
    iget-wide v4, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 85
    .line 86
    iget-object v6, v3, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 87
    .line 88
    aget-object v6, v6, p1

    .line 89
    .line 90
    iget-wide v6, v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 91
    .line 92
    long-to-double v1, v1

    .line 93
    mul-double/2addr v6, v1

    .line 94
    add-double/2addr v6, v4

    .line 95
    iput-wide v6, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 96
    .line 97
    add-int/lit8 p1, p1, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    return-void

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v0, "Invalid number of tracked states: "

    .line 106
    .line 107
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    array-length v0, v2

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, " expected: "

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    array-length v0, v6

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0
.end method
