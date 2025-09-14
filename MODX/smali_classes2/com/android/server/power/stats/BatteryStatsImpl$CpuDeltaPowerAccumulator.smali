.class public Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCachedUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

.field public final mCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

.field public mUidClusterCache:[D

.field public final perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

.field public final totalClusterChargesMah:[D


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/CpuPowerCalculator;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

    .line 10
    .line 11
    new-array p1, p2, [D

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    .line 14
    .line 15
    new-instance p1, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final addCpuClusterSpeedDurationsMs(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;IIJ)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->getOrCreateUidCpuClusterCharges(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)[D

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 8
    .line 9
    aget-object v0, v0, p2

    .line 10
    .line 11
    aget-object p3, v0, p3

    .line 12
    .line 13
    iget-wide v0, p3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 14
    .line 15
    long-to-double p3, p4

    .line 16
    mul-double/2addr v0, p3

    .line 17
    aget-wide p3, p1, p2

    .line 18
    .line 19
    add-double/2addr p3, v0

    .line 20
    aput-wide p3, p1, p2

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    .line 23
    .line 24
    aget-wide p3, p0, p2

    .line 25
    .line 26
    add-double/2addr p3, v0

    .line 27
    aput-wide p3, p0, p2

    .line 28
    .line 29
    return-void
.end method

.method public final getOrCreateUidCpuClusterCharges(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)[D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [D

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    .line 19
    .line 20
    array-length v0, v0

    .line 21
    new-array v0, v0, [D

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    .line 31
    .line 32
    return-object v0
.end method
