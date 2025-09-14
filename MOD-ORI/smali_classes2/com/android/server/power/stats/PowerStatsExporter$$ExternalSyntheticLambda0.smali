.class public final synthetic Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsExporter;

.field public final synthetic f$1:Landroid/os/BatteryUsageStats$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsExporter;Landroid/os/BatteryUsageStats$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsExporter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda0;->f$1:Landroid/os/BatteryUsageStats$Builder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsExporter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda0;->f$1:Landroid/os/BatteryUsageStats$Builder;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/android/server/power/stats/PowerStatsExporter;->populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/AggregatedPowerStats;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
