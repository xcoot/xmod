.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;->f$1:Ljava/lang/String;

    .line 8
    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;->f$2:J

    .line 10
    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;->f$3:J

    .line 12
    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;->f$4:J

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;->f$1:Ljava/lang/String;

    .line 5
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;->f$2:J

    .line 7
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;->f$3:J

    .line 9
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;->f$4:J

    .line 11
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 18
    const/16 v6, 0xb

    .line 20
    long-to-int v8, v10

    .line 21
    move-object v7, v9

    .line 22
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 25
    new-instance v1, Landroid/os/BatteryStats$PackageChange;

    .line 27
    invoke-direct {v1}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 30
    iput-object v9, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 32
    const/4 v2, 0x1

    .line 33
    iput-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 35
    iput-wide v10, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    .line 37
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 39
    if-nez v2, :cond_0

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iput-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 48
    :cond_0
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw v0
.end method
