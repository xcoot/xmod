.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

.field public final mFlags:I

.field public final mPowerStatsThrottlePeriods:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mFlags:I

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

    .line 4
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-boolean v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    .line 7
    iget-boolean v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 8
    :cond_0
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mFlags:I

    .line 9
    iget-wide v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

    .line 10
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    return-void
.end method
