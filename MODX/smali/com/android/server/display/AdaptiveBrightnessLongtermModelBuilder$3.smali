.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/PowerManagerInternal$UserActivityStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_2

    .line 4
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 6
    iget-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    .line 8
    if-eqz p1, :cond_4

    .line 10
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 15
    iget-boolean v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 17
    if-nez v1, :cond_0

    .line 19
    if-nez v1, :cond_1

    .line 21
    iget-object v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    .line 23
    invoke-interface {v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 26
    move-result-wide v1

    .line 27
    iput-wide v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 29
    iput-boolean v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    .line 34
    if-eqz v0, :cond_1

    .line 36
    if-eqz v1, :cond_1

    .line 38
    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    .line 42
    invoke-interface {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    :goto_0
    monitor-exit p0

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0

    .line 55
    throw p1

    .line 56
    :cond_2
    if-nez p1, :cond_4

    .line 58
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 60
    iget-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    .line 62
    if-eqz p1, :cond_4

    .line 64
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 66
    monitor-enter p0

    .line 67
    :try_start_1
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 69
    iget-boolean v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 71
    if-eqz v1, :cond_3

    .line 73
    iget-boolean v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    .line 75
    if-nez v1, :cond_3

    .line 77
    iget v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    .line 79
    iget-object v2, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    .line 81
    invoke-interface {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 84
    move-result-wide v2

    .line 85
    iget-wide v4, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 87
    sub-long/2addr v2, v4

    .line 88
    long-to-double v2, v2

    .line 89
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 94
    div-double/2addr v2, v4

    .line 95
    double-to-float v2, v2

    .line 96
    add-float/2addr v1, v2

    .line 97
    iput v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    .line 99
    iput-boolean v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :cond_3
    monitor-exit p0

    .line 102
    goto :goto_1

    .line 103
    :catchall_1
    move-exception p1

    .line 104
    monitor-exit p0

    .line 105
    throw p1

    .line 106
    :cond_4
    :goto_1
    return-void
.end method
