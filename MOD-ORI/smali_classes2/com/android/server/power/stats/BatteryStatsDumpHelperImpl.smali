.class public final Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/BatteryStats$BatteryStatsDumpHelper;


# instance fields
.field public final mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 26
    .line 27
    check-cast p1, Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
