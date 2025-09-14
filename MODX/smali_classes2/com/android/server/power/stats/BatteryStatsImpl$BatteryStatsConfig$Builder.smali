.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

.field public static final DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J


# instance fields
.field public mDefaultPowerStatsThrottlePeriod:J

.field public final mPowerStatsThrottlePeriods:Ljava/util/Map;

.field public mResetOnUnplugAfterSignificantCharge:Z

.field public mResetOnUnplugHighBatteryLevel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    sput-wide v3, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

    .line 10
    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    .line 19
    .line 20
    invoke-static {v1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-wide v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method
