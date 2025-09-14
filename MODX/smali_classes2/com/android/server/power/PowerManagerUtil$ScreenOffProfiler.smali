.class public final Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCfAnimationDuration:I

.field public mCfAnimationStartTime:J

.field public mCfPrepareDuration:I

.field public mCfPrepareStartTime:J

.field public mDisplayDuration:I

.field public mDisplayStartTime:J

.field public mDone:Z

.field public mGoToSleepDiff:I

.field public mGoToSleepDuration:I

.field public mGoToSleepStartTime:J

.field public mGoToSleepTimeStr:Ljava/lang/String;

.field public mNeedSkip:Z

.field public mOrder:I

.field public mSaved:Z


# virtual methods
.method public final clearAll()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    .line 21
    .line 22
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    .line 25
    .line 26
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    .line 33
    .line 34
    return-void
.end method

.method public final noteDisplayEnd()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    .line 23
    .line 24
    sub-long/2addr v2, v4

    .line 25
    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    .line 26
    .line 27
    int-to-long v4, v0

    .line 28
    add-long/2addr v2, v4

    .line 29
    long-to-int v0, v2

    .line 30
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    .line 31
    .line 32
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    .line 33
    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 37
    .line 38
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    cmp-long v0, v2, v4

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->toString(Z)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "PowerManagerUtil"

    .line 58
    .line 59
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    sget-object v1, Lcom/android/server/power/PowerManagerUtil;->sScreenOffProfilers:Lcom/android/internal/util/RingBuffer;

    .line 63
    .line 64
    new-instance v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-boolean v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    .line 70
    .line 71
    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    .line 72
    .line 73
    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    .line 74
    .line 75
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    .line 76
    .line 77
    iput-boolean v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    .line 78
    .line 79
    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    .line 80
    .line 81
    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    .line 86
    .line 87
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    .line 88
    .line 89
    iput-boolean v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    .line 90
    .line 91
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    .line 92
    .line 93
    iput-wide v3, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    .line 94
    .line 95
    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    .line 96
    .line 97
    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    .line 98
    .line 99
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    .line 100
    .line 101
    iput-wide v3, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    .line 102
    .line 103
    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    .line 104
    .line 105
    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    .line 106
    .line 107
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    .line 108
    .line 109
    iput-wide v3, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    .line 110
    .line 111
    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    .line 112
    .line 113
    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    .line 114
    .line 115
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    .line 116
    .line 117
    iput-wide v3, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    .line 118
    .line 119
    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    .line 120
    .line 121
    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    .line 122
    .line 123
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    .line 124
    .line 125
    iput-boolean p0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    return-void
.end method

.method public final setSkip()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    .line 3
    .line 4
    return-void
.end method

.method public final toString(Z)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    .line 15
    .line 16
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "[OFF][%3d][%s][T:%4d]  [Caller:%2d] [Cfp:%3d] [Cfa:%2d] [Panel:%3d]"

    .line 51
    .line 52
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    .line 91
    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string p1, "[OFF][%3d][T:%4d]  [Caller:%2d] [Cfp:%3d] [Cfa:%2d] [Panel:%3d]"

    .line 101
    .line 102
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method
