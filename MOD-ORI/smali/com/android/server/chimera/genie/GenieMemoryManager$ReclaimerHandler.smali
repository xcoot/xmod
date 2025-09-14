.class public final Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    if-eqz v2, :cond_e

    .line 8
    .line 9
    const/16 v3, 0xf

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    if-eq v2, v6, :cond_b

    .line 15
    .line 16
    const/4 v7, 0x3

    .line 17
    if-eq v2, v5, :cond_6

    .line 18
    .line 19
    if-eq v2, v7, :cond_2

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :cond_0
    const-string v2, "GenieMemoryManager"

    .line 27
    .line 28
    const-string v4, "UNLOAD_S_LLM_MODEL message handler"

    .line 29
    .line 30
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->getInstance()Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->isLLMRunning()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 50
    .line 51
    sget v2, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_OOMADJ_THRESHOLD:I

    .line 52
    .line 53
    invoke-virtual {v1, v2, v0}, Lcom/android/server/chimera/SystemRepository;->killGenieProcess(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "GenieMemoryManager"

    .line 57
    .line 58
    const-string/jumbo v2, "process killed, remove from LRU list"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/android/server/chimera/genie/GenieLRUList;->getInstance()Lcom/android/server/chimera/genie/GenieLRUList;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto/16 :goto_8

    .line 72
    .line 73
    :cond_1
    const-string v2, "GenieMemoryManager"

    .line 74
    .line 75
    const-string/jumbo v4, "resetting timer to unload S.LLM"

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object v2, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 84
    .line 85
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget v2, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MODEL_TIMEOUT:I

    .line 90
    .line 91
    int-to-long v2, v2

    .line 92
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    .line 94
    .line 95
    goto/16 :goto_8

    .line 96
    .line 97
    :cond_2
    iget-object v0, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

    .line 100
    .line 101
    iget-boolean v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mFeatureEnabled:Z

    .line 102
    .line 103
    if-nez v1, :cond_3

    .line 104
    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :cond_3
    iget-object v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mLock:Ljava/lang/Object;

    .line 108
    .line 109
    monitor-enter v1

    .line 110
    :try_start_0
    iget v2, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 111
    .line 112
    if-nez v2, :cond_4

    .line 113
    .line 114
    monitor-exit v1

    .line 115
    goto/16 :goto_8

    .line 116
    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    sub-int/2addr v2, v6

    .line 120
    iput v2, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 121
    .line 122
    if-lez v2, :cond_5

    .line 123
    .line 124
    monitor-exit v1

    .line 125
    goto/16 :goto_8

    .line 126
    .line 127
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    .line 129
    .line 130
    new-instance v0, Ljava/io/FileWriter;

    .line 131
    .line 132
    const-string v2, "/sys/kernel/rbin/refill_mode"

    .line 133
    .line 134
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 135
    .line 136
    invoke-direct {v0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .line 141
    .line 142
    const/16 v0, 0x30

    .line 143
    .line 144
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    .line 149
    .line 150
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 151
    .line 152
    .line 153
    goto/16 :goto_8

    .line 154
    .line 155
    :catch_0
    move-exception v0

    .line 156
    goto :goto_1

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    move-object v2, v0

    .line 159
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catchall_2
    move-exception v0

    .line 164
    move-object v1, v0

    .line 165
    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 169
    :goto_1
    const-string v1, "RbinManager"

    .line 170
    .line 171
    const-string v2, "Error writing to the file "

    .line 172
    .line 173
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .line 175
    .line 176
    goto/16 :goto_8

    .line 177
    .line 178
    :goto_2
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 179
    throw v0

    .line 180
    :cond_6
    invoke-static {v4, v3, v4, v4}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 185
    .line 186
    sub-int/2addr v1, v2

    .line 187
    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 192
    .line 193
    sub-int/2addr v2, v3

    .line 194
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Ljava/util/ArrayList;

    .line 197
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    sget-object v5, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v4, " lmkdKill : "

    .line 221
    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v4, " lmkdCriticalKill : "

    .line 229
    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    sget-object v8, Lcom/android/server/chimera/genie/GenieLogger;->sLock:Ljava/lang/Object;

    .line 244
    .line 245
    monitor-enter v8

    .line 246
    :try_start_7
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 247
    .line 248
    if-nez v3, :cond_7

    .line 249
    .line 250
    new-instance v3, Ljava/util/LinkedList;

    .line 251
    .line 252
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 253
    .line 254
    .line 255
    sput-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :catchall_3
    move-exception v0

    .line 259
    goto :goto_5

    .line 260
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-gtz v3, :cond_8

    .line 265
    .line 266
    monitor-exit v8

    .line 267
    goto :goto_4

    .line 268
    :cond_8
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 269
    .line 270
    check-cast v3, Ljava/util/LinkedList;

    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    const/16 v4, 0x3e8

    .line 277
    .line 278
    if-lt v3, v4, :cond_9

    .line 279
    .line 280
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 281
    .line 282
    check-cast v3, Ljava/util/LinkedList;

    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    :cond_9
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 288
    .line 289
    check-cast v3, Ljava/util/LinkedList;

    .line 290
    .line 291
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    sget v3, Lcom/android/server/chimera/genie/GenieLogger;->sRequestCount:I

    .line 295
    .line 296
    add-int/2addr v3, v6

    .line 297
    sput v3, Lcom/android/server/chimera/genie/GenieLogger;->sRequestCount:I

    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-le v0, v7, :cond_a

    .line 304
    .line 305
    sget v0, Lcom/android/server/chimera/genie/GenieLogger;->sReclaimedRequests:I

    .line 306
    .line 307
    add-int/2addr v0, v6

    .line 308
    sput v0, Lcom/android/server/chimera/genie/GenieLogger;->sReclaimedRequests:I

    .line 309
    .line 310
    :cond_a
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 311
    :goto_4
    const-string v0, "GenieMemoryManager"

    .line 312
    .line 313
    const-string v3, "Aft GenAI LMKD Kill "

    .line 314
    .line 315
    const-string v4, " LMKD Critical "

    .line 316
    .line 317
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_8

    .line 321
    .line 322
    :goto_5
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 323
    throw v0

    .line 324
    :cond_b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;

    .line 327
    .line 328
    iget-object v2, v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;->mDump:Ljava/util/ArrayList;

    .line 329
    .line 330
    iget-object v7, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 331
    .line 332
    iget-wide v8, v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;->mMemToBeReclaimed:J

    .line 333
    .line 334
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 338
    .line 339
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    aget-wide v10, v0, v6

    .line 350
    .line 351
    const/16 v7, 0x1d

    .line 352
    .line 353
    aget-wide v12, v0, v7

    .line 354
    .line 355
    const/4 v7, 0x6

    .line 356
    aget-wide v14, v0, v7

    .line 357
    .line 358
    sub-long v16, v10, v12

    .line 359
    .line 360
    sub-long v6, v16, v14

    .line 361
    .line 362
    const/16 v16, 0x1a

    .line 363
    .line 364
    aget-wide v3, v0, v16

    .line 365
    .line 366
    const/16 v16, 0x1b

    .line 367
    .line 368
    move-wide/from16 v18, v6

    .line 369
    .line 370
    aget-wide v5, v0, v16

    .line 371
    .line 372
    add-long v0, v3, v5

    .line 373
    .line 374
    const-wide/16 v20, 0x2

    .line 375
    .line 376
    div-long v20, v0, v20

    .line 377
    .line 378
    move-wide/from16 v22, v5

    .line 379
    .line 380
    add-long v5, v20, v18

    .line 381
    .line 382
    cmp-long v7, v8, v5

    .line 383
    .line 384
    const-wide/16 v20, 0x0

    .line 385
    .line 386
    if-lez v7, :cond_c

    .line 387
    .line 388
    sub-long v24, v8, v5

    .line 389
    .line 390
    move-wide/from16 v28, v3

    .line 391
    .line 392
    move-wide/from16 v3, v24

    .line 393
    .line 394
    move-wide/from16 v24, v28

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_c
    move-wide/from16 v24, v3

    .line 398
    .line 399
    move-wide/from16 v3, v20

    .line 400
    .line 401
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 407
    .line 408
    .line 409
    move-result-object v16

    .line 410
    move-wide/from16 v26, v0

    .line 411
    .line 412
    sget-object v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 413
    .line 414
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v0, " curAvailable : "

    .line 426
    .line 427
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v0, " toReclaim : "

    .line 434
    .line 435
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    const-string/jumbo v0, "reclaimTarget: "

    .line 449
    .line 450
    .line 451
    const-string v1, " = targetSize "

    .line 452
    .line 453
    invoke-static {v0, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v1, " - "

    .line 461
    .line 462
    const-string v5, " ("

    .line 463
    .line 464
    move-wide/from16 v6, v18

    .line 465
    .line 466
    invoke-static {v0, v1, v6, v7, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v1, ", "

    .line 473
    .line 474
    invoke-static {v0, v1, v12, v13, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v6, ")  - "

    .line 481
    .line 482
    move-wide/from16 v7, v26

    .line 483
    .line 484
    invoke-static {v0, v6, v7, v8, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 485
    .line 486
    .line 487
    move-wide/from16 v5, v24

    .line 488
    .line 489
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    move-wide/from16 v5, v22

    .line 496
    .line 497
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v1, ")"

    .line 501
    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    const-string v1, "GenieMemoryManager"

    .line 510
    .line 511
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    const/16 v0, 0xf

    .line 515
    .line 516
    const/4 v1, 0x0

    .line 517
    invoke-static {v1, v0, v1, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    const/4 v6, 0x2

    .line 526
    move-object/from16 v5, p0

    .line 527
    .line 528
    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    const-wide/16 v6, 0x1388

    .line 533
    .line 534
    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 535
    .line 536
    .line 537
    cmp-long v0, v3, v20

    .line 538
    .line 539
    if-lez v0, :cond_d

    .line 540
    .line 541
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 542
    .line 543
    iget-object v0, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    .line 547
    .line 548
    const-string v0, "Genie Memory Reclaimer Called"

    .line 549
    .line 550
    const-string v1, "MemoryReclaimer"

    .line 551
    .line 552
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    :try_start_9
    invoke-static {v3, v4, v2}, Lcom/android/server/chimera/genie/MemoryReclaimer;->executeQuickSwap(JLjava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 556
    .line 557
    .line 558
    goto :goto_7

    .line 559
    :catch_1
    move-exception v0

    .line 560
    move-object v2, v0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string/jumbo v3, "error excuting command "

    .line 564
    .line 565
    .line 566
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .line 582
    .line 583
    :goto_7
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 584
    .line 585
    iget-object v1, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 586
    .line 587
    monitor-enter v1

    .line 588
    :try_start_a
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 589
    .line 590
    const/4 v2, 0x1

    .line 591
    iput-boolean v2, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mHasReclaimed:Z

    .line 592
    .line 593
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 594
    const/4 v1, 0x0

    .line 595
    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 600
    .line 601
    .line 602
    goto :goto_8

    .line 603
    :catchall_4
    move-exception v0

    .line 604
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 605
    throw v0

    .line 606
    :cond_d
    const-string v0, "GenieMemoryManager"

    .line 607
    .line 608
    const-string v1, "Memory to Reclaim is less, so skipping GenIE: "

    .line 609
    .line 610
    invoke-static {v1, v3, v4, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 611
    .line 612
    .line 613
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 614
    .line 615
    invoke-virtual {v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    .line 616
    .line 617
    .line 618
    goto :goto_8

    .line 619
    :cond_e
    move-object v5, v1

    .line 620
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 621
    .line 622
    invoke-virtual {v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    .line 623
    .line 624
    .line 625
    :goto_8
    return-void
.end method
