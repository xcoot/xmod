.class public final Lcom/android/server/job/controllers/PrefetchController$PcHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    if-eqz v2, :cond_8

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v2, v3, :cond_7

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq v2, v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v4, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 25
    .line 26
    invoke-virtual {v4, v1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 27
    .line 28
    .line 29
    move-result-object v10

    .line 30
    if-nez v10, :cond_1

    .line 31
    .line 32
    monitor-exit v2

    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    new-instance v11, Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v12

    .line 53
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v14

    .line 62
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    sub-int/2addr v4, v3

    .line 67
    move v3, v4

    .line 68
    :goto_0
    if-ltz v3, :cond_5

    .line 69
    .line 70
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Ljava/lang/String;

    .line 75
    .line 76
    iget-object v5, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 77
    .line 78
    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    move-object v8, v4

    .line 83
    check-cast v8, Landroid/util/ArraySet;

    .line 84
    .line 85
    if-nez v8, :cond_3

    .line 86
    .line 87
    :cond_2
    move/from16 p0, v1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    const/4 v4, 0x0

    .line 91
    move v9, v4

    .line 92
    :goto_1
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-ge v9, v4, :cond_2

    .line 97
    .line 98
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    move-object v6, v4

    .line 103
    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 104
    .line 105
    move-object v4, v0

    .line 106
    move-object v5, v6

    .line 107
    move/from16 p0, v1

    .line 108
    .line 109
    move-object v1, v6

    .line 110
    move-wide v6, v12

    .line 111
    move-object/from16 v16, v8

    .line 112
    .line 113
    move/from16 v17, v9

    .line 114
    .line 115
    move-wide v8, v14

    .line 116
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_4

    .line 121
    .line 122
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :cond_4
    add-int/lit8 v9, v17, 0x1

    .line 126
    .line 127
    move/from16 v1, p0

    .line 128
    .line 129
    move-object/from16 v8, v16

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 133
    .line 134
    move/from16 v1, p0

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_5
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-lez v1, :cond_6

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 144
    .line 145
    invoke-virtual {v0, v11}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    monitor-exit v2

    .line 149
    goto/16 :goto_5

    .line 150
    .line 151
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    throw v0

    .line 153
    :cond_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 156
    .line 157
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 158
    .line 159
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 160
    .line 161
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v3, Ljava/lang/String;

    .line 164
    .line 165
    iget-wide v4, v1, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 166
    .line 167
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_8
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 175
    .line 176
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v1, Ljava/lang/String;

    .line 179
    .line 180
    iget-object v3, v0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 181
    .line 182
    iget-object v3, v3, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 183
    .line 184
    check-cast v3, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 185
    .line 186
    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 187
    .line 188
    invoke-virtual {v3, v2, v1}, Lcom/android/server/usage/UsageStatsService;->getEstimatedPackageLaunchTime(ILjava/lang/String;)J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    sget-boolean v5, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    .line 193
    .line 194
    if-eqz v5, :cond_9

    .line 195
    .line 196
    const-string v5, "JobScheduler.Prefetch"

    .line 197
    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v7, "Retrieved launch time for "

    .line 201
    .line 202
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v2, v1}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v7, " of "

    .line 213
    .line 214
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v7, " ("

    .line 221
    .line 222
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 226
    .line 227
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v7

    .line 231
    sub-long v7, v3, v7

    .line 232
    .line 233
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v7, " from now)"

    .line 241
    .line 242
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    :cond_9
    iget-object v5, v0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 253
    .line 254
    iget-object v5, v5, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 255
    .line 256
    monitor-enter v5

    .line 257
    :try_start_1
    iget-object v6, v0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 258
    .line 259
    iget-object v6, v6, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 260
    .line 261
    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    check-cast v6, Ljava/lang/Long;

    .line 266
    .line 267
    if-eqz v6, :cond_a

    .line 268
    .line 269
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 270
    .line 271
    .line 272
    move-result-wide v6

    .line 273
    cmp-long v6, v3, v6

    .line 274
    .line 275
    if-eqz v6, :cond_b

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :catchall_1
    move-exception v0

    .line 279
    goto :goto_6

    .line 280
    :cond_a
    :goto_4
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 281
    .line 282
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V

    .line 283
    .line 284
    .line 285
    :cond_b
    monitor-exit v5

    .line 286
    :goto_5
    return-void

    .line 287
    :goto_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    throw v0
.end method
