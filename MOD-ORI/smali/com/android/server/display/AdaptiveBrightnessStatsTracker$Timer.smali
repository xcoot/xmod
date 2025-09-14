.class Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

.field public paused:Z

.field public startTimeMillis:J

.field public started:Z

.field public totalDurationSec:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final totalDurationSec()F
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-wide v4, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 18
    .line 19
    sub-long/2addr v2, v4

    .line 20
    long-to-double v2, v2

    .line 21
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    div-double/2addr v2, v4

    .line 27
    double-to-float v2, v2

    .line 28
    add-float/2addr v0, v2

    .line 29
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 36
    .line 37
    :cond_0
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    .line 38
    .line 39
    return p0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return p0
.end method
