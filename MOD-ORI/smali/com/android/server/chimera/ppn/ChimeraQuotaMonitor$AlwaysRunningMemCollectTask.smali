.class public final Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    const-string v0, "AlwaysRunningMemCollectTask"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 4
    .line 5
    iget-wide v1, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mQuota:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-lez v1, :cond_d

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-boolean v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-string/jumbo v2, "power"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/os/PowerManager;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    xor-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-class v5, Landroid/os/BatteryManager;

    .line 54
    .line 55
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/os/BatteryManager;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    move v1, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :goto_0
    if-nez v1, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 72
    .line 73
    const-string v1, "Skipped by screen off and not charging"

    .line 74
    .line 75
    invoke-static {p0, v1}, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->-$$Nest$maddTaskHistory(Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catch_0
    move-exception p0

    .line 80
    goto/16 :goto_7

    .line 81
    .line 82
    :cond_2
    const/16 v1, 0xa

    .line 83
    .line 84
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-boolean v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 95
    .line 96
    iget v1, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskExecuteCount:I

    .line 97
    .line 98
    rem-int/lit8 v1, v1, 0x3

    .line 99
    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    iget-object v1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    new-instance v8, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Ljava/util/Set;

    .line 136
    .line 137
    iget-object v8, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 138
    .line 139
    iget-object v8, v8, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 140
    .line 141
    invoke-virtual {v8, v7}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    move-wide v8, v3

    .line 152
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-eqz v10, :cond_3

    .line 157
    .line 158
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    check-cast v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 163
    .line 164
    iget v10, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 165
    .line 166
    invoke-static {v10, v3, v4}, Lcom/android/server/chimera/ChimeraCommonUtil;->getDRAMUsed(IJ)J

    .line 167
    .line 168
    .line 169
    move-result-wide v10

    .line 170
    add-long/2addr v8, v10

    .line 171
    goto :goto_1

    .line 172
    :cond_3
    iget-object v7, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 173
    .line 174
    iput-wide v8, v7, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mLastNativeDRAMUsed:J

    .line 175
    .line 176
    iget-object v7, v7, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 177
    .line 178
    new-instance v10, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v11, "Native task finish and cost "

    .line 184
    .line 185
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 189
    .line 190
    .line 191
    move-result-wide v11

    .line 192
    sub-long/2addr v11, v5

    .line 193
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string/jumbo v5, "ms and native quota is "

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-static {v0, v5}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_4
    const/4 v1, 0x0

    .line 217
    :goto_2
    iget-object v5, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 218
    .line 219
    iget v6, v5, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskExecuteCount:I

    .line 220
    .line 221
    add-int/lit8 v6, v6, 0x1

    .line 222
    .line 223
    iput v6, v5, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskExecuteCount:I

    .line 224
    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 226
    .line 227
    .line 228
    move-result-wide v5

    .line 229
    if-nez v1, :cond_5

    .line 230
    .line 231
    iget-object v1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 232
    .line 233
    iget-object v1, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    new-instance v8, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask$$ExternalSyntheticLambda1;

    .line 249
    .line 250
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    iget-object v8, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 262
    .line 263
    iget-object v8, v8, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 264
    .line 265
    invoke-virtual {v8, v7}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    if-eqz v8, :cond_d

    .line 270
    .line 271
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 272
    .line 273
    if-nez v8, :cond_6

    .line 274
    .line 275
    goto/16 :goto_6

    .line 276
    .line 277
    :cond_6
    check-cast v8, [I

    .line 278
    .line 279
    move-wide v9, v3

    .line 280
    :goto_3
    array-length v11, v7

    .line 281
    if-ge v2, v11, :cond_a

    .line 282
    .line 283
    aget v11, v8, v2

    .line 284
    .line 285
    const/16 v12, 0x12c

    .line 286
    .line 287
    if-ge v11, v12, :cond_9

    .line 288
    .line 289
    const/16 v12, -0x2710

    .line 290
    .line 291
    if-eq v11, v12, :cond_9

    .line 292
    .line 293
    if-nez v11, :cond_7

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    check-cast v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 301
    .line 302
    iget-wide v12, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 303
    .line 304
    cmp-long v14, v12, v3

    .line 305
    .line 306
    if-gtz v14, :cond_8

    .line 307
    .line 308
    iget-wide v12, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    .line 309
    .line 310
    :cond_8
    iget v11, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 311
    .line 312
    invoke-static {v11, v12, v13}, Lcom/android/server/chimera/ChimeraCommonUtil;->getDRAMUsed(IJ)J

    .line 313
    .line 314
    .line 315
    move-result-wide v11

    .line 316
    add-long/2addr v9, v11

    .line 317
    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_a
    iget-object v1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 321
    .line 322
    iget-wide v7, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mLastNativeDRAMUsed:J

    .line 323
    .line 324
    add-long/2addr v7, v9

    .line 325
    iget-wide v1, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mQuota:J

    .line 326
    .line 327
    sub-long/2addr v7, v1

    .line 328
    cmp-long v1, v7, v3

    .line 329
    .line 330
    if-lez v1, :cond_c

    .line 331
    .line 332
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    const-wide/32 v2, 0x19000

    .line 337
    .line 338
    .line 339
    add-long/2addr v7, v2

    .line 340
    iget-boolean v2, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 341
    .line 342
    if-eqz v2, :cond_c

    .line 343
    .line 344
    iget-object v2, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 345
    .line 346
    if-nez v2, :cond_b

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_b
    const/4 v3, 0x4

    .line 350
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    .line 360
    iget-object v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 361
    .line 362
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    .line 364
    .line 365
    :cond_c
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    const-string v2, "Task finish and cost "

    .line 371
    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 376
    .line 377
    .line 378
    move-result-wide v2

    .line 379
    sub-long/2addr v2, v5

    .line 380
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string/jumbo v2, "ms and quota is "

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    iget-object v2, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 390
    .line 391
    iget-wide v2, v2, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mLastNativeDRAMUsed:J

    .line 392
    .line 393
    add-long/2addr v9, v2

    .line 394
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    iget-object v2, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 402
    .line 403
    invoke-static {v2, v1}, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->-$$Nest$maddTaskHistory(Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iget-object p0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 407
    .line 408
    iget-object p0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 409
    .line 410
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-static {v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_d
    :goto_6
    return-void

    .line 418
    :goto_7
    invoke-static {v0}, Lcom/android/server/chimera/SystemRepository;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    const-string v2, "Task execute with exception "

    .line 425
    .line 426
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    :goto_8
    return-void
.end method
