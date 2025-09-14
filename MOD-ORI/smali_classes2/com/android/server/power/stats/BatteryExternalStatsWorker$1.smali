.class public final Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final run$com$android$server$power$stats$BatteryExternalStatsWorker$1()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 5
    .line 6
    iget v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 7
    .line 8
    iget-object v3, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 11
    .line 12
    iget-boolean v6, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    .line 13
    .line 14
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 15
    .line 16
    iget-boolean v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    iput v10, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    iput-boolean v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 28
    .line 29
    and-int/lit8 v11, v9, 0x7f

    .line 30
    .line 31
    const/16 v12, 0x7f

    .line 32
    .line 33
    if-ne v11, v12, :cond_0

    .line 34
    .line 35
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-interface {v4, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 40
    .line 41
    .line 42
    iput-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 43
    .line 44
    :cond_0
    and-int/lit8 v1, v9, 0x1

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 49
    .line 50
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    iget-object v13, v4, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 52
    .line 53
    if-eqz v13, :cond_1

    .line 54
    .line 55
    invoke-interface {v13, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 56
    .line 57
    .line 58
    iput-object v2, v4, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    monitor-exit v4

    .line 64
    goto :goto_2

    .line 65
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    throw p0

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    goto/16 :goto_c

    .line 69
    .line 70
    :cond_2
    :goto_2
    and-int/lit8 v2, v9, 0xe

    .line 71
    .line 72
    const/16 v4, 0xe

    .line 73
    .line 74
    if-ne v2, v4, :cond_3

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelSyncDueToProcessStateChange()V

    .line 79
    .line 80
    .line 81
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    :try_start_3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 87
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 88
    .line 89
    move v4, v9

    .line 90
    invoke-static/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$mupdateExternalStatsLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;IZZ[IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 91
    .line 92
    .line 93
    if-ne v11, v12, :cond_4

    .line 94
    .line 95
    :try_start_5
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 98
    .line 99
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 100
    :try_start_6
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 101
    .line 102
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 103
    .line 104
    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 105
    :try_start_7
    iput-boolean v10, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIgnoreNextExternalStats:Z

    .line 106
    .line 107
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 108
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 109
    goto :goto_4

    .line 110
    :catchall_2
    move-exception v1

    .line 111
    goto :goto_3

    .line 112
    :catchall_3
    move-exception v1

    .line 113
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 114
    :try_start_a
    throw v1

    .line 115
    :goto_3
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 116
    :try_start_b
    throw v1

    .line 117
    :catchall_4
    move-exception v1

    .line 118
    goto :goto_8

    .line 119
    :cond_4
    :goto_4
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    :try_start_c
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimesForAllUids()V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :catch_0
    move-exception v0

    .line 131
    goto :goto_9

    .line 132
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 135
    .line 136
    monitor-enter v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 137
    :try_start_d
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 138
    .line 139
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    .line 142
    .line 143
    .line 144
    monitor-exit v0

    .line 145
    goto :goto_a

    .line 146
    :catchall_5
    move-exception v1

    .line 147
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 148
    :try_start_e
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 149
    :catchall_6
    move-exception v1

    .line 150
    if-ne v11, v12, :cond_6

    .line 151
    .line 152
    :try_start_f
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 153
    .line 154
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 155
    .line 156
    monitor-enter v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 157
    :try_start_10
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 158
    .line 159
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 160
    .line 161
    monitor-enter v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 162
    :try_start_11
    iput-boolean v10, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mIgnoreNextExternalStats:Z

    .line 163
    .line 164
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 165
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 166
    goto :goto_7

    .line 167
    :catchall_7
    move-exception v1

    .line 168
    goto :goto_6

    .line 169
    :catchall_8
    move-exception v1

    .line 170
    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 171
    :try_start_14
    throw v1

    .line 172
    :goto_6
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 173
    :try_start_15
    throw v1

    .line 174
    :cond_6
    :goto_7
    throw v1

    .line 175
    :goto_8
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 176
    :try_start_16
    throw v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    .line 177
    :goto_9
    const-string v1, "BatteryExternalStatsWorker"

    .line 178
    .line 179
    const-string v2, "Error updating external stats: "

    .line 180
    .line 181
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .line 183
    .line 184
    :goto_a
    and-int/lit16 v0, v9, 0x80

    .line 185
    .line 186
    if-eqz v0, :cond_7

    .line 187
    .line 188
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 189
    .line 190
    monitor-enter v0

    .line 191
    :try_start_17
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 192
    .line 193
    const-wide/16 v1, 0x0

    .line 194
    .line 195
    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    .line 196
    .line 197
    monitor-exit v0

    .line 198
    goto :goto_b

    .line 199
    :catchall_9
    move-exception p0

    .line 200
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 201
    throw p0

    .line 202
    :cond_7
    if-ne v11, v12, :cond_8

    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 205
    .line 206
    monitor-enter v0

    .line 207
    :try_start_18
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 208
    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 210
    .line 211
    .line 212
    move-result-wide v1

    .line 213
    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    .line 214
    .line 215
    monitor-exit v0

    .line 216
    goto :goto_b

    .line 217
    :catchall_a
    move-exception p0

    .line 218
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 219
    throw p0

    .line 220
    :cond_8
    :goto_b
    return-void

    .line 221
    :goto_c
    :try_start_19
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 222
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0

    .line 23
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->run$com$android$server$power$stats$BatteryExternalStatsWorker$1()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
