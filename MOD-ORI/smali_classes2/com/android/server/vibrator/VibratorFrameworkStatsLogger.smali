.class public final Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

.field public static final sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

.field public static final sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public final mConsumeVibrationStatsQueueRunnable:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public mLastVibrationReportedLogUptime:J

.field public final mLock:Ljava/lang/Object;

.field public final mVibrationReportedLogIntervalMillis:J

.field public final mVibrationReportedQueueMaxSize:J

.field public final mVibrationStatsQueue:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 2
    .line 3
    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    .line 4
    .line 5
    const/high16 v2, 0x42c80000    # 100.0f

    .line 6
    .line 7
    const/16 v3, 0x14

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "vibrator.value_vibration_param_request_latency"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 20
    .line 21
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 22
    .line 23
    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    .line 24
    .line 25
    const/high16 v2, 0x40000000    # 2.0f

    .line 26
    .line 27
    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v5, "vibrator.value_vibration_param_scale"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v5, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 37
    .line 38
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 39
    .line 40
    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    .line 41
    .line 42
    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v2, "vibrator.value_vibration_adaptive_haptic_scale"

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 52
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    int-to-long p1, p2

    .line 28
    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    .line 29
    .line 30
    int-to-long p1, p3

    .line 31
    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedQueueMaxSize:J

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final writeVibrationReportedAsync(Lcom/android/server/vibrator/VibrationStats$StatsInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    :goto_0
    int-to-long v4, v1

    .line 19
    iget-wide v6, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedQueueMaxSize:J

    .line 20
    .line 21
    cmp-long v4, v4, v6

    .line 22
    .line 23
    if-gez v4, :cond_1

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    .line 26
    .line 27
    check-cast v4, Ljava/util/ArrayDeque;

    .line 28
    .line 29
    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    :goto_1
    iget-wide v4, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLastVibrationReportedLogUptime:J

    .line 36
    .line 37
    iget-wide v6, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    .line 38
    .line 39
    add-long/2addr v4, v6

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    sub-long/2addr v4, v6

    .line 45
    const-wide/16 v6, 0x0

    .line 46
    .line 47
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    add-int/2addr v1, v2

    .line 53
    const/16 p1, 0xc8

    .line 54
    .line 55
    if-ne v1, p1, :cond_2

    .line 56
    .line 57
    const-string p1, "VibratorFrameworkStatsLogger"

    .line 58
    .line 59
    const-string v0, " Approaching vibration metrics queue limit, events might be dropped."

    .line 60
    .line 61
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_2
    if-eqz v3, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    invoke-virtual {p1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void

    .line 74
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0
.end method
