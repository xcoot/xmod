.class public final Lcom/android/server/power/stats/IdlePowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAveragePowerCpuIdleMahPerUs:D

.field public final mAveragePowerCpuSuspendMahPerUs:D

.field public mDurationMs:J

.field public mPowerMah:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "cpu.suspend"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x41ead27480000000L    # 3.6E9

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    div-double/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuSuspendMahPerUs:D

    .line 17
    .line 18
    const-string v0, "cpu.idle"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    div-double/2addr v0, v2

    .line 25
    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuIdleMahPerUs:D

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 4

    .line 1
    const/4 p7, 0x0

    .line 2
    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    .line 3
    .line 4
    .line 5
    move-result-wide p3

    .line 6
    invoke-virtual {p2, p5, p6, p7}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    .line 7
    .line 8
    .line 9
    move-result-wide p5

    .line 10
    long-to-double v0, p3

    .line 11
    iget-wide v2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuSuspendMahPerUs:D

    .line 12
    .line 13
    mul-double/2addr v0, v2

    .line 14
    long-to-double p5, p5

    .line 15
    iget-wide v2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuIdleMahPerUs:D

    .line 16
    .line 17
    mul-double/2addr p5, v2

    .line 18
    add-double/2addr p5, v0

    .line 19
    iput-wide p5, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    .line 20
    .line 21
    const-wide/16 v0, 0x3e8

    .line 22
    .line 23
    div-long/2addr p3, v0

    .line 24
    iput-wide p3, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mDurationMs:J

    .line 25
    .line 26
    const-wide/16 p2, 0x0

    .line 27
    .line 28
    cmpl-double p2, p5, p2

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, p7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-wide p2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    .line 37
    .line 38
    const/16 p4, 0x10

    .line 39
    .line 40
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 45
    .line 46
    iget-wide p2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mDurationMs:J

    .line 47
    .line 48
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x10

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method
