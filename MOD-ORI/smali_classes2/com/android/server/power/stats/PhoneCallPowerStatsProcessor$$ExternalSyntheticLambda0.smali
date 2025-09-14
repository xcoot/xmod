.class public final synthetic Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;

.field public final synthetic f$1:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

.field public final synthetic f$2:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 6
    .line 7
    check-cast p1, [I

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mTmpMobileRadioDeviceStats:[J

    .line 10
    .line 11
    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mMobileRadioStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mTmpMobileRadioDeviceStats:[J

    .line 17
    .line 18
    iget v1, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    .line 19
    .line 20
    aget-wide v1, v2, v1

    .line 21
    .line 22
    long-to-double v1, v1

    .line 23
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    div-double/2addr v1, v3

    .line 29
    iget-object v3, v0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/PowerStatsLayout;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mTmpDeviceStats:[J

    .line 32
    .line 33
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
