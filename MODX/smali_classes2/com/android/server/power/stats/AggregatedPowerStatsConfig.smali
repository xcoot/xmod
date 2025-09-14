.class public final Lcom/android/server/power/stats/AggregatedPowerStatsConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NO_OP_PROCESSOR:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$1;

.field public static final STATE_LABELS_POWER:[Ljava/lang/String;

.field public static final STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

.field public static final STATE_LABELS_SCREEN:[Ljava/lang/String;


# instance fields
.field public mCustomPowerComponent:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

.field public mCustomPowerStatsProcessorFactory:Ljava/util/function/Supplier;

.field public final mPowerComponents:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "pwr-battery"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "pwr-other"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v0, "scr-on"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "scr-other"

    .line 17
    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    new-array v1, v0, [Ljava/lang/String;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v0, :cond_0

    .line 30
    .line 31
    invoke-static {v2}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    aput-object v3, v1, v2

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sput-object v1, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

    .line 41
    .line 42
    new-instance v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$1;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$1;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final createPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v1, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->mCustomPowerStatsProcessorFactory:Ljava/util/function/Supplier;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iput-object p0, v1, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 29
    .line 30
    :cond_1
    return-object v1
.end method

.method public final trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    .line 7
    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
