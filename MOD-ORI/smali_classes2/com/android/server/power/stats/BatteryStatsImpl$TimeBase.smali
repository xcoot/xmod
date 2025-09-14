.class public final Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mObservers:Ljava/util/Collection;

.field public mPastRealtimeUs:J

.field public mPastUptimeUs:J

.field public mRealtimeStartUs:J

.field public mRealtimeUs:J

.field public mRunning:Z

.field public mUptimeStartUs:J

.field public mUptimeUs:J


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final computeRealtime(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    add-long/2addr p0, v0

    .line 8
    return-wide p0
.end method

.method public final getRealtime(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 2
    .line 3
    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 8
    .line 9
    sub-long/2addr p1, v2

    .line 10
    add-long/2addr v0, p1

    .line 11
    :cond_0
    return-wide v0
.end method

.method public final getUptime(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2
    .line 3
    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 8
    .line 9
    sub-long/2addr p1, v2

    .line 10
    add-long/2addr v0, p1

    .line 11
    :cond_0
    return-wide v0
.end method

.method public final init(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 12
    .line 13
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 14
    .line 15
    return-void
.end method

.method public final remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setRunning(JJZ)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-wide v1, p1

    .line 3
    move-wide/from16 v7, p3

    .line 4
    .line 5
    move/from16 v3, p5

    .line 6
    .line 7
    iget-boolean v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 8
    .line 9
    if-eq v4, v3, :cond_2

    .line 10
    .line 11
    iput-boolean v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 16
    .line 17
    iput-wide v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 18
    .line 19
    invoke-virtual {p0, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;

    .line 40
    .line 41
    invoke-interface {v3, v7, v8, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJ)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 46
    .line 47
    iget-wide v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 48
    .line 49
    sub-long v5, v1, v5

    .line 50
    .line 51
    add-long/2addr v5, v3

    .line 52
    iput-wide v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 53
    .line 54
    iget-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 55
    .line 56
    iget-wide v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 57
    .line 58
    sub-long v5, v7, v5

    .line 59
    .line 60
    add-long/2addr v5, v3

    .line 61
    iput-wide v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v9

    .line 67
    invoke-virtual {p0, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v11

    .line 71
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;

    .line 88
    .line 89
    move-wide/from16 v1, p3

    .line 90
    .line 91
    move-wide v3, v9

    .line 92
    move-wide v5, v11

    .line 93
    invoke-interface/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    const/4 v0, 0x1

    .line 98
    return v0

    .line 99
    :cond_2
    const/4 v0, 0x0

    .line 100
    return v0
.end method

.method public final writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p2

    .line 7
    add-long/2addr p2, v0

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
