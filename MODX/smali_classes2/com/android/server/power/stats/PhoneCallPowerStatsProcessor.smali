.class public final Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;
.super Lcom/android/server/power/stats/PowerStatsProcessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mMobileRadioStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mMobileRadioStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

.field public final mStatsLayout:Lcom/android/server/power/stats/PowerStatsLayout;

.field public final mTmpDeviceStats:[J

.field public mTmpMobileRadioDeviceStats:[J


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/PowerStatsLayout;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/PowerStatsLayout;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 12
    .line 13
    .line 14
    new-instance v7, Landroid/os/PersistableBundle;

    .line 15
    .line 16
    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 20
    .line 21
    .line 22
    new-instance v8, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 23
    .line 24
    iget v3, v0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 25
    .line 26
    const/16 v2, 0xe

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v1, v8

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 33
    .line 34
    .line 35
    iput-object v8, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 36
    .line 37
    iget v0, v8, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mTmpDeviceStats:[J

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 2
    .line 3
    iput-object p2, p1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 4
    .line 5
    iget-object p2, p1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 8
    .line 9
    const/16 p3, 0x8

    .line 10
    .line 11
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p3, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mMobileRadioStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 21
    .line 22
    if-nez p3, :cond_2

    .line 23
    .line 24
    iget-object p3, p2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 25
    .line 26
    iput-object p3, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mMobileRadioStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 27
    .line 28
    if-nez p3, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 32
    .line 33
    invoke-direct {v0, p3}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mMobileRadioStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 37
    .line 38
    iget-object p3, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mMobileRadioStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 39
    .line 40
    iget p3, p3, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 41
    .line 42
    new-array p3, p3, [J

    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;->mTmpMobileRadioDeviceStats:[J

    .line 45
    .line 46
    :cond_2
    iget-object p3, p2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    new-instance v0, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PhoneCallPowerStatsProcessor;Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x2

    .line 58
    new-array p0, p0, [I

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-static {v0, p3, p0, p1}, Lcom/android/server/power/stats/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
