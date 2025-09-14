.class public final Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPowerComponentId:I

.field public mProcessorSupplier:Ljava/util/function/Supplier;

.field public mTrackedDeviceStates:[I

.field public mTrackedUidStates:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    .line 5
    .line 6
    return-void
.end method

.method public static isTracked(I[I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    move v2, v0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_2

    .line 8
    .line 9
    aget v3, p1, v2

    .line 10
    .line 11
    if-ne v3, p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    return v0
.end method


# virtual methods
.method public final getDeviceStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/power/stats/MultiStateStats$States;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->isTracked(I[I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sget-object v2, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo v3, "pwr"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/power/stats/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/android/server/power/stats/MultiStateStats$States;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-static {v2, p0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->isTracked(I[I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    sget-object v2, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    .line 28
    .line 29
    const-string/jumbo v3, "scr"

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v3, p0, v2}, Lcom/android/server/power/stats/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    filled-new-array {v0, v1}, [Lcom/android/server/power/stats/MultiStateStats$States;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final getUidStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/power/stats/MultiStateStats$States;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->isTracked(I[I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sget-object v2, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo v3, "pwr"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/power/stats/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/android/server/power/stats/MultiStateStats$States;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-static {v3, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->isTracked(I[I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sget-object v3, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    .line 28
    .line 29
    const-string/jumbo v4, "scr"

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/power/stats/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/android/server/power/stats/MultiStateStats$States;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-static {v3, p0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->isTracked(I[I)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    sget-object v3, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

    .line 45
    .line 46
    const-string/jumbo v4, "ps"

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v4, p0, v3}, Lcom/android/server/power/stats/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    filled-new-array {v0, v1, v2}, [Lcom/android/server/power/stats/MultiStateStats$States;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public final varargs trackDeviceStates([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string p1, "Component is already configured"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public final varargs trackUidStates([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string p1, "Component is already configured"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method
