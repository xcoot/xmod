.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;
.super Landroid/os/BatteryStats$Uid$Pkg;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public final mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mServiceStats:Landroid/util/ArrayMap;

.field public final mWakeupAlarms:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Pkg;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    :goto_1
    if-ltz v0, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method

.method public final getServiceStats()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWakeupAlarmStats()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final noteWakeupAlarmLocked(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->stepAtomic()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final reset(JZ)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
