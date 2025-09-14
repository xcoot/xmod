.class public final Lcom/android/server/power/stats/PowerStatsScheduler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final HOUR_IN_MILLIS:J

.field public static final MINUTE_IN_MILLIS:J


# instance fields
.field public final mAggregatedPowerStatsSpanDuration:J

.field public final mAlarmScheduler:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mEarliestAvailableBatteryHistoryTimeMs:Ljava/util/function/Supplier;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSavedSpanEndMonotonicTime:J

.field public final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field public final mPowerStatsAggregationPeriod:J

.field public final mPowerStatsAggregator:Lcom/android/server/power/stats/PowerStatsAggregator;

.field public final mPowerStatsCollector:Ljava/lang/Runnable;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    sput-wide v3, Lcom/android/server/power/stats/PowerStatsScheduler;->MINUTE_IN_MILLIS:J

    .line 10
    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/power/stats/PowerStatsScheduler;->HOUR_IN_MILLIS:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;Lcom/android/server/power/stats/PowerStatsAggregator;JJLcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregator:Lcom/android/server/power/stats/PowerStatsAggregator;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregationPeriod:J

    .line 9
    .line 10
    iput-object p7, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAlarmScheduler:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;

    .line 13
    .line 14
    iput-object p9, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mClock:Lcom/android/internal/os/Clock;

    .line 15
    .line 16
    iput-object p10, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 17
    .line 18
    iput-object p12, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsCollector:Ljava/lang/Runnable;

    .line 21
    .line 22
    iput-object p11, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mEarliestAvailableBatteryHistoryTimeMs:Ljava/util/function/Supplier;

    .line 23
    .line 24
    return-void
.end method

.method public static alignToWallClock(JJJJ)J
    .locals 15

    .line 1
    sub-long v0, p0, p4

    .line 2
    .line 3
    add-long v0, v0, p6

    .line 4
    .line 5
    sget-wide v2, Lcom/android/server/power/stats/PowerStatsScheduler;->MINUTE_IN_MILLIS:J

    .line 6
    .line 7
    cmp-long v4, p2, v2

    .line 8
    .line 9
    const/16 v5, 0xe

    .line 10
    .line 11
    const/16 v6, 0xd

    .line 12
    .line 13
    const-wide/16 v7, 0x0

    .line 14
    .line 15
    const/16 v9, 0xc

    .line 16
    .line 17
    const-wide/16 v10, 0x1

    .line 18
    .line 19
    const/4 v12, 0x0

    .line 20
    if-ltz v4, :cond_0

    .line 21
    .line 22
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v13

    .line 28
    rem-long v13, v13, p2

    .line 29
    .line 30
    cmp-long v4, v13, v7

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    add-long v7, v0, v2

    .line 39
    .line 40
    sub-long/2addr v7, v10

    .line 41
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v5, v12}, Ljava/util/Calendar;->set(II)V

    .line 48
    .line 49
    .line 50
    div-long v2, p2, v2

    .line 51
    .line 52
    long-to-int v2, v2

    .line 53
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    add-int/2addr v3, v2

    .line 58
    add-int/lit8 v3, v3, -0x1

    .line 59
    .line 60
    div-int/2addr v3, v2

    .line 61
    mul-int/2addr v3, v2

    .line 62
    invoke-virtual {v4, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    :goto_0
    sub-long/2addr v2, v0

    .line 70
    add-long/2addr v2, p0

    .line 71
    return-wide v2

    .line 72
    :cond_0
    sget-wide v2, Lcom/android/server/power/stats/PowerStatsScheduler;->HOUR_IN_MILLIS:J

    .line 73
    .line 74
    cmp-long v4, p2, v2

    .line 75
    .line 76
    if-ltz v4, :cond_1

    .line 77
    .line 78
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 79
    .line 80
    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v13

    .line 84
    rem-long v13, v13, p2

    .line 85
    .line 86
    cmp-long v4, v13, v7

    .line 87
    .line 88
    if-nez v4, :cond_1

    .line 89
    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    add-long v7, v0, v2

    .line 95
    .line 96
    sub-long/2addr v7, v10

    .line 97
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v9, v12}, Ljava/util/Calendar;->set(II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v5, v12}, Ljava/util/Calendar;->set(II)V

    .line 107
    .line 108
    .line 109
    div-long v2, p2, v2

    .line 110
    .line 111
    long-to-int v2, v2

    .line 112
    const/16 v3, 0xb

    .line 113
    .line 114
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    add-int/2addr v5, v2

    .line 119
    add-int/lit8 v5, v5, -0x1

    .line 120
    .line 121
    div-int/2addr v5, v2

    .line 122
    mul-int/2addr v5, v2

    .line 123
    invoke-virtual {v4, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    goto :goto_0

    .line 131
    :cond_1
    return-wide p0
.end method


# virtual methods
.method public final getLastSavedSpanEndMonotonicTime()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 35
    .line 36
    iget-object v2, v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 37
    .line 38
    const-string v3, "aggregated-power-stats"

    .line 39
    .line 40
    check-cast v2, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 49
    .line 50
    check-cast v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 67
    .line 68
    iget-wide v3, v2, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    .line 69
    .line 70
    iget-wide v5, v2, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    .line 71
    .line 72
    add-long/2addr v3, v5

    .line 73
    iget-wide v5, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    .line 74
    .line 75
    cmp-long v2, v3, v5

    .line 76
    .line 77
    if-lez v2, :cond_2

    .line 78
    .line 79
    iput-wide v3, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    .line 83
    .line 84
    return-wide v0
.end method

.method public final scheduleNextPowerStatsAggregation()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mClock:Lcom/android/internal/os/Clock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregationPeriod:J

    .line 8
    .line 9
    add-long v6, v0, v2

    .line 10
    .line 11
    new-instance v9, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda4;

    .line 12
    .line 13
    invoke-direct {v9, p0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAlarmScheduler:Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-class v1, Landroid/app/AlarmManager;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v4, v0

    .line 29
    check-cast v4, Landroid/app/AlarmManager;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    const-string v8, "PowerStats"

    .line 33
    .line 34
    iget-object v10, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public schedulePowerStatsAggregation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsCollector:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
