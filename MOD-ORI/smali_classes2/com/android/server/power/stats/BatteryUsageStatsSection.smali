.class public final Lcom/android/server/power/stats/BatteryUsageStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBatteryUsageStats:Landroid/os/BatteryUsageStats;


# direct methods
.method public constructor <init>(Landroid/os/BatteryUsageStats;)V
    .locals 1

    .line 1
    const-string v0, "battery-usage-stats"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
