.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJZLcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$1:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$2:J

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$3:Z

    .line 11
    .line 12
    iput-object p7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$4:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$1:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$2:J

    .line 6
    .line 7
    iget-boolean v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$3:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;->f$4:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    .line 10
    .line 11
    check-cast p2, [J

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Landroid/os/Process;->isIsolated(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object p1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    .line 25
    .line 26
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-virtual {p1, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->exists(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 42
    .line 43
    invoke-virtual {v0, p2, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    .line 44
    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->getOrCreateUidCpuClusterCharges(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)[D

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    array-length v1, p2

    .line 54
    if-ge v0, v1, :cond_2

    .line 55
    .line 56
    aget-wide v1, p2, v0

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 61
    .line 62
    aget-object v3, v3, v0

    .line 63
    .line 64
    iget-wide v3, v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 65
    .line 66
    long-to-double v1, v1

    .line 67
    mul-double/2addr v3, v1

    .line 68
    aget-wide v1, p1, v0

    .line 69
    .line 70
    add-double/2addr v1, v3

    .line 71
    aput-wide v1, p1, v0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    .line 74
    .line 75
    aget-wide v5, v1, v0

    .line 76
    .line 77
    add-double/2addr v5, v3

    .line 78
    aput-wide v5, v1, v0

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    :goto_1
    return-void
.end method
