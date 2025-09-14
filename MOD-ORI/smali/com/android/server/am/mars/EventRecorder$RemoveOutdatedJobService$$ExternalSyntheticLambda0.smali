.class public final synthetic Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    sget v1, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "RemoveOutdatedJobService"

    .line 11
    .line 12
    const-string/jumbo v2, "onStartJob is called"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    new-instance v5, Ljava/io/File;

    .line 26
    .line 27
    const-string v6, "/data/log/mars/tmp_stats.txt"

    .line 28
    .line 29
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v5}, Lcom/android/server/am/mars/EventRecorder;->createNewEmptyFile(Ljava/io/File;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x1

    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    goto/16 :goto_e

    .line 40
    .line 41
    :cond_0
    new-instance v6, Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v8, Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 49
    .line 50
    .line 51
    const-wide/32 v9, 0x2932e00

    .line 52
    .line 53
    .line 54
    sub-long/2addr v3, v9

    .line 55
    sget-object v9, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 58
    .line 59
    .line 60
    :try_start_0
    new-instance v9, Ljava/io/BufferedWriter;

    .line 61
    .line 62
    new-instance v10, Ljava/io/OutputStreamWriter;

    .line 63
    .line 64
    new-instance v11, Ljava/io/FileOutputStream;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    invoke-direct {v11, v12, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 74
    .line 75
    invoke-direct {v10, v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    :try_start_1
    new-instance v10, Ljava/io/BufferedReader;

    .line 82
    .line 83
    new-instance v11, Ljava/io/InputStreamReader;

    .line 84
    .line 85
    new-instance v13, Ljava/io/FileInputStream;

    .line 86
    .line 87
    sget-object v14, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;

    .line 88
    .line 89
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v11, v13, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    const-string/jumbo v12, "onStopJob is called. Abort."

    .line 107
    .line 108
    .line 109
    if-eqz v11, :cond_e

    .line 110
    .line 111
    :try_start_3
    iget-boolean v13, v0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    .line 112
    .line 113
    if-eqz v13, :cond_2

    .line 114
    .line 115
    invoke-static {v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    .line 117
    .line 118
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    .line 120
    .line 121
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    .line 123
    .line 124
    :goto_1
    sget-object v3, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_e

    .line 130
    .line 131
    :catchall_0
    move-exception p0

    .line 132
    goto/16 :goto_f

    .line 133
    .line 134
    :catch_0
    move-exception v2

    .line 135
    goto/16 :goto_c

    .line 136
    .line 137
    :catchall_1
    move-exception v2

    .line 138
    goto/16 :goto_a

    .line 139
    .line 140
    :catchall_2
    move-exception v2

    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :cond_2
    :try_start_6
    new-instance v12, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 144
    .line 145
    invoke-direct {v12, v11}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sget-object v11, Lcom/android/server/am/mars/EventRecorder$EventType;->FREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 149
    .line 150
    iget-object v13, v12, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 151
    .line 152
    if-ne v13, v11, :cond_3

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    sget-object v14, Lcom/android/server/am/mars/EventRecorder$EventType;->UNFREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 156
    .line 157
    if-ne v13, v14, :cond_8

    .line 158
    .line 159
    :goto_2
    if-ne v13, v11, :cond_5

    .line 160
    .line 161
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    if-eqz v11, :cond_4

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_4
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {v6, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_5
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    if-nez v11, :cond_6

    .line 183
    .line 184
    new-instance v11, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string/jumbo v13, "unfreeze event without freeze event. uid : "

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-object v12, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 196
    .line 197
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-static {v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_6
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 209
    .line 210
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    check-cast v11, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 215
    .line 216
    iget-wide v13, v12, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 217
    .line 218
    cmp-long v13, v3, v13

    .line 219
    .line 220
    if-lez v13, :cond_7

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_7
    invoke-virtual {v11}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_8
    sget-object v11, Lcom/android/server/am/mars/EventRecorder$EventType;->UID_RUN:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 240
    .line 241
    if-ne v13, v11, :cond_9

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_9
    sget-object v14, Lcom/android/server/am/mars/EventRecorder$EventType;->UID_STOP:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 245
    .line 246
    if-ne v13, v14, :cond_1

    .line 247
    .line 248
    :goto_3
    if-ne v13, v11, :cond_b

    .line 249
    .line 250
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 251
    .line 252
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    if-eqz v11, :cond_a

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_a
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 261
    .line 262
    invoke-virtual {v8, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_b
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 268
    .line 269
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    if-nez v11, :cond_c

    .line 274
    .line 275
    new-instance v11, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string/jumbo v13, "stop event without run event. uid : "

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget-object v12, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 287
    .line 288
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    invoke-static {v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_c
    iget-object v11, v12, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 301
    .line 302
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    check-cast v11, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 307
    .line 308
    iget-wide v13, v12, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 309
    .line 310
    cmp-long v13, v3, v13

    .line 311
    .line 312
    if-lez v13, :cond_d

    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_d
    invoke-virtual {v11}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v12}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v11

    .line 327
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_e
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    if-eqz v4, :cond_f

    .line 345
    .line 346
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    check-cast v4, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 351
    .line 352
    invoke-virtual {v4}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-virtual {v9, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_f
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-eqz v4, :cond_10

    .line 373
    .line 374
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 379
    .line 380
    invoke-virtual {v4}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-virtual {v9, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_10
    iget-boolean v3, v0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    .line 389
    .line 390
    if-eqz v3, :cond_11

    .line 391
    .line 392
    invoke-static {v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 393
    .line 394
    .line 395
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 396
    .line 397
    .line 398
    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 399
    .line 400
    .line 401
    goto/16 :goto_1

    .line 402
    .line 403
    :cond_11
    :try_start_9
    sget-object v3, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;

    .line 404
    .line 405
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    if-nez v4, :cond_12

    .line 410
    .line 411
    move v3, v2

    .line 412
    goto :goto_6

    .line 413
    :cond_12
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    :goto_6
    if-nez v3, :cond_13

    .line 418
    .line 419
    sput-boolean v2, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 420
    .line 421
    :try_start_a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 422
    .line 423
    .line 424
    :try_start_b
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 425
    .line 426
    .line 427
    goto/16 :goto_1

    .line 428
    .line 429
    :cond_13
    :try_start_c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 430
    .line 431
    .line 432
    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 433
    .line 434
    .line 435
    :goto_7
    sget-object v2, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 436
    .line 437
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 438
    .line 439
    .line 440
    goto :goto_d

    .line 441
    :goto_8
    :try_start_e
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 442
    .line 443
    .line 444
    goto :goto_9

    .line 445
    :catchall_3
    move-exception v3

    .line 446
    :try_start_f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 447
    .line 448
    .line 449
    :goto_9
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 450
    :goto_a
    :try_start_10
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :catchall_4
    move-exception v3

    .line 455
    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 456
    .line 457
    .line 458
    :goto_b
    throw v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 459
    :goto_c
    :try_start_12
    const-string v3, "Error at removeOutdated"

    .line 460
    .line 461
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 462
    .line 463
    .line 464
    goto :goto_7

    .line 465
    :goto_d
    move v2, v7

    .line 466
    :goto_e
    if-nez v2, :cond_14

    .line 467
    .line 468
    const-string v3, "Failed to remove outdated events."

    .line 469
    .line 470
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    :cond_14
    xor-int/lit8 v1, v2, 0x1

    .line 474
    .line 475
    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :goto_f
    sget-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 480
    .line 481
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 482
    .line 483
    .line 484
    throw p0
.end method
