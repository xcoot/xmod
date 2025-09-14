.class public final synthetic Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    .line 9
    .line 10
    check-cast v2, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    .line 19
    .line 20
    check-cast v3, Ljava/util/ArrayDeque;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    xor-int/2addr v3, v4

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    iput-wide v5, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLastVibrationReportedLogUptime:J

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const-string v1, "VibratorFrameworkStatsLogger"

    .line 44
    .line 45
    const-string v2, "Unexpected vibration metric flush with empty queue. Ignoring."

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_1
    iget-boolean v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v5, "Writing same vibration stats multiple times for uid="

    .line 59
    .line 60
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget v5, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    .line 64
    .line 65
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v5, "VibrationStats"

    .line 73
    .line 74
    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_2
    iput-boolean v4, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    .line 78
    .line 79
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->totalDurationMillis:I

    .line 80
    .line 81
    int-to-long v14, v1

    .line 82
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibratorOnMillis:I

    .line 83
    .line 84
    int-to-long v4, v1

    .line 85
    move-wide/from16 v16, v4

    .line 86
    .line 87
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    .line 88
    .line 89
    int-to-long v4, v1

    .line 90
    move-wide/from16 v18, v4

    .line 91
    .line 92
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    .line 93
    .line 94
    int-to-long v4, v1

    .line 95
    move-wide/from16 v20, v4

    .line 96
    .line 97
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPwleSize:I

    .line 98
    .line 99
    move/from16 v34, v1

    .line 100
    .line 101
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->adaptiveScale:F

    .line 102
    .line 103
    move/from16 v35, v1

    .line 104
    .line 105
    iget v5, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    .line 106
    .line 107
    iget v7, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibrationType:I

    .line 108
    .line 109
    iget v8, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->usage:I

    .line 110
    .line 111
    iget v9, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->status:I

    .line 112
    .line 113
    iget-boolean v10, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedBySameUid:Z

    .line 114
    .line 115
    iget v11, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedByUsage:I

    .line 116
    .line 117
    iget v12, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->interruptedUsage:I

    .line 118
    .line 119
    iget v13, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->repeatCount:I

    .line 120
    .line 121
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposeCount:I

    .line 122
    .line 123
    move/from16 v22, v1

    .line 124
    .line 125
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposePwleCount:I

    .line 126
    .line 127
    move/from16 v23, v1

    .line 128
    .line 129
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOnCount:I

    .line 130
    .line 131
    move/from16 v24, v1

    .line 132
    .line 133
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOffCount:I

    .line 134
    .line 135
    move/from16 v25, v1

    .line 136
    .line 137
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformCount:I

    .line 138
    .line 139
    move/from16 v26, v1

    .line 140
    .line 141
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetAmplitudeCount:I

    .line 142
    .line 143
    move/from16 v27, v1

    .line 144
    .line 145
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetExternalControlCount:I

    .line 146
    .line 147
    move/from16 v28, v1

    .line 148
    .line 149
    iget-object v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedCompositionPrimitivesUsed:[I

    .line 150
    .line 151
    move-object/from16 v29, v1

    .line 152
    .line 153
    iget-object v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedEffectsUsed:[I

    .line 154
    .line 155
    move-object/from16 v30, v1

    .line 156
    .line 157
    iget-object v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedCompositionPrimitivesUsed:[I

    .line 158
    .line 159
    move-object/from16 v31, v1

    .line 160
    .line 161
    iget-object v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedEffectsUsed:[I

    .line 162
    .line 163
    move-object/from16 v32, v1

    .line 164
    .line 165
    iget v1, v2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halCompositionSize:I

    .line 166
    .line 167
    move/from16 v33, v1

    .line 168
    .line 169
    const/16 v4, 0x1e7

    .line 170
    .line 171
    const/4 v6, 0x0

    .line 172
    invoke-static/range {v4 .. v35}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IIIZIIIJJJJIIIIIII[I[I[I[IIIF)V

    .line 173
    .line 174
    .line 175
    :goto_1
    if-eqz v3, :cond_3

    .line 176
    .line 177
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    .line 178
    .line 179
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    iget-wide v3, v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    .line 182
    .line 183
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    .line 185
    .line 186
    :cond_3
    return-void

    .line 187
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    throw v0
.end method
