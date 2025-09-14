.class public final synthetic Lcom/android/server/am/BatteryStatsService$LocalService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p1

    .line 9
    check-cast p2, Ljava/lang/Long;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v1

    .line 15
    move-object v3, p3

    .line 16
    check-cast v3, Ljava/util/Collection;

    .line 18
    check-cast p4, Ljava/lang/Long;

    .line 20
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 23
    move-result-wide p2

    .line 24
    check-cast p5, Ljava/lang/Long;

    .line 26
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 29
    move-result-wide p4

    .line 30
    monitor-enter v0

    .line 31
    move-object p0, v0

    .line 32
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteBinderCallStatsLocked(JLjava/util/Collection;)V

    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method
