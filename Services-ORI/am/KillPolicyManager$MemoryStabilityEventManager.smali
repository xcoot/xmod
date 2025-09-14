.class public final Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;-><init>(Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final report()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/32 v4, 0xea60

    .line 13
    .line 14
    .line 15
    div-long/2addr v2, v4

    .line 16
    long-to-int v2, v2

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    div-long/2addr v6, v4

    .line 22
    long-to-int v3, v6

    .line 23
    iget-boolean v0, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastUptimeMinutes:I

    .line 28
    .line 29
    sub-int v0, v2, v0

    .line 30
    .line 31
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastRealtimeMinutes:I

    .line 32
    .line 33
    sub-int v4, v3, v4

    .line 34
    .line 35
    move v5, v4

    .line 36
    move v4, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v4, v2

    .line 39
    move v5, v3

    .line 40
    :goto_0
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 41
    .line 42
    const-string v6, "ActivityManager_kpm"

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    const/16 v0, 0x578

    .line 47
    .line 48
    if-ge v5, v0, :cond_1

    .line 49
    .line 50
    const-string/jumbo v0, "reportDiff() Skipped. diffRealtimeMinutes="

    .line 51
    .line 52
    .line 53
    invoke-static {v5, v0, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_16

    .line 57
    .line 58
    :cond_1
    const-string v7, "Failed to close file: "

    .line 59
    .line 60
    const-string v8, "Failed to read file (IOException): "

    .line 61
    .line 62
    const-string v9, "Failed to read file (NumberFormatException):"

    .line 63
    .line 64
    const-string/jumbo v0, "read zram error count type1="

    .line 65
    .line 66
    .line 67
    iget-object v10, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mTempCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 68
    .line 69
    iget-object v11, v10, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 70
    .line 71
    const/4 v12, 0x0

    .line 72
    const-wide/16 v13, -0x1

    .line 73
    .line 74
    aput-wide v13, v11, v12

    .line 75
    .line 76
    const/4 v15, 0x1

    .line 77
    aput-wide v13, v11, v15

    .line 78
    .line 79
    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    .line 80
    .line 81
    const-string v13, "/sys/block/zram0/mm_stat"

    .line 82
    .line 83
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 84
    .line 85
    invoke-direct {v14, v13, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 86
    .line 87
    .line 88
    :try_start_1
    new-instance v13, Ljava/io/BufferedReader;

    .line 89
    .line 90
    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 91
    .line 92
    .line 93
    :try_start_2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    if-eqz v15, :cond_3

    .line 98
    .line 99
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v15

    .line 103
    if-nez v15, :cond_3

    .line 104
    .line 105
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    if-eqz v15, :cond_3

    .line 110
    .line 111
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v16

    .line 115
    if-nez v16, :cond_3

    .line 116
    .line 117
    invoke-virtual {v15}, Ljava/lang/String;->strip()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    :try_start_3
    const-string v12, "\\s+"

    .line 122
    .line 123
    invoke-virtual {v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    array-length v15, v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 128
    move/from16 v17, v5

    .line 129
    .line 130
    const/4 v5, 0x2

    .line 131
    if-lt v15, v5, :cond_2

    .line 132
    .line 133
    const/4 v5, 0x0

    .line 134
    :try_start_4
    aget-object v15, v12, v5
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    .line 136
    move-object/from16 v16, v6

    .line 137
    .line 138
    :try_start_5
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v5

    .line 142
    const/4 v15, 0x1

    .line 143
    aget-object v12, v12, v15
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 144
    .line 145
    move/from16 v18, v3

    .line 146
    .line 147
    move/from16 v19, v4

    .line 148
    .line 149
    :try_start_6
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v3
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 153
    const/4 v12, 0x0

    .line 154
    :try_start_7
    aput-wide v5, v11, v12

    .line 155
    .line 156
    aput-wide v3, v11, v15

    .line 157
    .line 158
    new-instance v11, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v0, " type2="

    .line 167
    .line 168
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 178
    move-object/from16 v3, v16

    .line 179
    .line 180
    :try_start_8
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 181
    .line 182
    .line 183
    const/4 v12, 0x1

    .line 184
    goto/16 :goto_a

    .line 185
    .line 186
    :catchall_0
    move-exception v0

    .line 187
    :goto_1
    move-object v1, v0

    .line 188
    move-object v4, v13

    .line 189
    move-object v13, v14

    .line 190
    goto/16 :goto_17

    .line 191
    .line 192
    :catch_0
    move-exception v0

    .line 193
    :goto_2
    move-object v4, v13

    .line 194
    move-object v13, v14

    .line 195
    const/4 v12, 0x1

    .line 196
    goto/16 :goto_c

    .line 197
    .line 198
    :catch_1
    move-exception v0

    .line 199
    :goto_3
    const/4 v12, 0x1

    .line 200
    goto :goto_9

    .line 201
    :catchall_1
    move-exception v0

    .line 202
    move-object/from16 v3, v16

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catch_2
    move-exception v0

    .line 206
    move-object/from16 v3, v16

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :catch_3
    move-exception v0

    .line 210
    move-object/from16 v3, v16

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :catch_4
    move-exception v0

    .line 214
    :goto_4
    move-object/from16 v3, v16

    .line 215
    .line 216
    :goto_5
    const/4 v12, 0x0

    .line 217
    :goto_6
    move-object v4, v13

    .line 218
    move-object v13, v14

    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :catch_5
    move-exception v0

    .line 222
    :goto_7
    move-object/from16 v3, v16

    .line 223
    .line 224
    const/4 v12, 0x0

    .line 225
    goto :goto_9

    .line 226
    :catch_6
    move-exception v0

    .line 227
    move/from16 v18, v3

    .line 228
    .line 229
    move/from16 v19, v4

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :catch_7
    move-exception v0

    .line 233
    move/from16 v18, v3

    .line 234
    .line 235
    move/from16 v19, v4

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :catchall_2
    move-exception v0

    .line 239
    move-object v3, v6

    .line 240
    goto :goto_1

    .line 241
    :catch_8
    move-exception v0

    .line 242
    move/from16 v18, v3

    .line 243
    .line 244
    move/from16 v19, v4

    .line 245
    .line 246
    move v12, v5

    .line 247
    :goto_8
    move-object v3, v6

    .line 248
    goto :goto_6

    .line 249
    :catch_9
    move-exception v0

    .line 250
    move/from16 v18, v3

    .line 251
    .line 252
    move/from16 v19, v4

    .line 253
    .line 254
    move v12, v5

    .line 255
    move-object v3, v6

    .line 256
    :goto_9
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 273
    .line 274
    .line 275
    goto :goto_a

    .line 276
    :catch_a
    move-exception v0

    .line 277
    goto :goto_6

    .line 278
    :cond_2
    move/from16 v18, v3

    .line 279
    .line 280
    move/from16 v19, v4

    .line 281
    .line 282
    move-object v3, v6

    .line 283
    const/4 v12, 0x0

    .line 284
    goto :goto_a

    .line 285
    :catch_b
    move-exception v0

    .line 286
    move/from16 v18, v3

    .line 287
    .line 288
    move/from16 v19, v4

    .line 289
    .line 290
    move/from16 v17, v5

    .line 291
    .line 292
    move-object v3, v6

    .line 293
    goto :goto_5

    .line 294
    :catch_c
    move-exception v0

    .line 295
    move/from16 v18, v3

    .line 296
    .line 297
    move/from16 v19, v4

    .line 298
    .line 299
    move/from16 v17, v5

    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_3
    move/from16 v18, v3

    .line 303
    .line 304
    move/from16 v19, v4

    .line 305
    .line 306
    move/from16 v17, v5

    .line 307
    .line 308
    move-object v3, v6

    .line 309
    :goto_a
    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    .line 313
    .line 314
    .line 315
    goto/16 :goto_f

    .line 316
    .line 317
    :catch_d
    move-exception v0

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :goto_b
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    goto :goto_f

    .line 338
    :catchall_3
    move-exception v0

    .line 339
    move-object v3, v6

    .line 340
    move-object v1, v0

    .line 341
    move-object v13, v14

    .line 342
    const/4 v4, 0x0

    .line 343
    goto/16 :goto_17

    .line 344
    .line 345
    :catch_e
    move-exception v0

    .line 346
    move/from16 v18, v3

    .line 347
    .line 348
    move/from16 v19, v4

    .line 349
    .line 350
    move/from16 v17, v5

    .line 351
    .line 352
    move-object v3, v6

    .line 353
    move-object v13, v14

    .line 354
    const/4 v4, 0x0

    .line 355
    goto :goto_c

    .line 356
    :catchall_4
    move-exception v0

    .line 357
    move-object v3, v6

    .line 358
    move-object v1, v0

    .line 359
    const/4 v4, 0x0

    .line 360
    const/4 v13, 0x0

    .line 361
    goto/16 :goto_17

    .line 362
    .line 363
    :catch_f
    move-exception v0

    .line 364
    move/from16 v18, v3

    .line 365
    .line 366
    move/from16 v19, v4

    .line 367
    .line 368
    move/from16 v17, v5

    .line 369
    .line 370
    move-object v3, v6

    .line 371
    const/4 v4, 0x0

    .line 372
    const/4 v13, 0x0

    .line 373
    :goto_c
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 390
    .line 391
    .line 392
    if-eqz v13, :cond_4

    .line 393
    .line 394
    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    .line 395
    .line 396
    .line 397
    goto :goto_d

    .line 398
    :catch_10
    move-exception v0

    .line 399
    goto :goto_e

    .line 400
    :cond_4
    :goto_d
    if-eqz v4, :cond_5

    .line 401
    .line 402
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    .line 403
    .line 404
    .line 405
    goto :goto_f

    .line 406
    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    goto :goto_b

    .line 412
    :cond_5
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string/jumbo v4, "readProcFile(mmstat) success="

    .line 415
    .line 416
    .line 417
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mDiffCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 431
    .line 432
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    const/4 v4, 0x1

    .line 436
    :goto_10
    if-ltz v4, :cond_6

    .line 437
    .line 438
    iget-object v5, v10, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 439
    .line 440
    aget-wide v5, v5, v4

    .line 441
    .line 442
    iget-object v7, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 443
    .line 444
    aput-wide v5, v7, v4

    .line 445
    .line 446
    add-int/lit8 v4, v4, -0x1

    .line 447
    .line 448
    goto :goto_10

    .line 449
    :cond_6
    iget-boolean v4, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    .line 450
    .line 451
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 452
    .line 453
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 454
    .line 455
    const-wide/16 v6, 0x0

    .line 456
    .line 457
    if-eqz v4, :cond_8

    .line 458
    .line 459
    const/4 v4, 0x1

    .line 460
    :goto_11
    if-ltz v4, :cond_8

    .line 461
    .line 462
    aget-wide v8, v0, v4

    .line 463
    .line 464
    iget-object v11, v5, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 465
    .line 466
    aget-wide v11, v11, v4

    .line 467
    .line 468
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 469
    .line 470
    .line 471
    move-result-wide v8

    .line 472
    cmp-long v11, v8, v6

    .line 473
    .line 474
    if-gez v11, :cond_7

    .line 475
    .line 476
    goto :goto_12

    .line 477
    :cond_7
    aget-wide v8, v0, v4

    .line 478
    .line 479
    iget-object v11, v5, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 480
    .line 481
    aget-wide v11, v11, v4

    .line 482
    .line 483
    sub-long/2addr v8, v11

    .line 484
    :goto_12
    aput-wide v8, v0, v4

    .line 485
    .line 486
    add-int/lit8 v4, v4, -0x1

    .line 487
    .line 488
    goto :goto_11

    .line 489
    :cond_8
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastUptimeMinutes:I

    .line 490
    .line 491
    move/from16 v2, v18

    .line 492
    .line 493
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastRealtimeMinutes:I

    .line 494
    .line 495
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    const/4 v2, 0x1

    .line 499
    :goto_13
    if-ltz v2, :cond_9

    .line 500
    .line 501
    iget-object v4, v10, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 502
    .line 503
    aget-wide v8, v4, v2

    .line 504
    .line 505
    iget-object v4, v5, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 506
    .line 507
    aput-wide v8, v4, v2

    .line 508
    .line 509
    add-int/lit8 v2, v2, -0x1

    .line 510
    .line 511
    goto :goto_13

    .line 512
    :cond_9
    iget-boolean v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    .line 513
    .line 514
    if-nez v2, :cond_a

    .line 515
    .line 516
    const/4 v2, 0x1

    .line 517
    iput-boolean v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    .line 518
    .line 519
    :cond_a
    const/4 v15, 0x1

    .line 520
    :goto_14
    if-ltz v15, :cond_c

    .line 521
    .line 522
    aget-wide v4, v0, v15

    .line 523
    .line 524
    cmp-long v2, v4, v6

    .line 525
    .line 526
    if-gez v2, :cond_b

    .line 527
    .line 528
    goto/16 :goto_16

    .line 529
    .line 530
    :cond_b
    add-int/lit8 v15, v15, -0x1

    .line 531
    .line 532
    goto :goto_14

    .line 533
    :cond_c
    const/4 v15, 0x1

    .line 534
    :goto_15
    if-ltz v15, :cond_10

    .line 535
    .line 536
    aget-wide v4, v0, v15

    .line 537
    .line 538
    cmp-long v2, v4, v6

    .line 539
    .line 540
    if-lez v2, :cond_f

    .line 541
    .line 542
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    .line 543
    .line 544
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 545
    .line 546
    .line 547
    const-string v4, "UTDIFF"

    .line 548
    .line 549
    move/from16 v5, v19

    .line 550
    .line 551
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 552
    .line 553
    .line 554
    const-string v4, "RTDIFF"

    .line 555
    .line 556
    move/from16 v8, v17

    .line 557
    .line 558
    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 559
    .line 560
    .line 561
    const-string v4, "ZRERR"

    .line 562
    .line 563
    new-instance v5, Lorg/json/JSONArray;

    .line 564
    .line 565
    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    const/4 v4, 0x1

    .line 580
    sub-int/2addr v2, v4

    .line 581
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_11

    .line 585
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->this$1:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    .line 586
    .line 587
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 588
    .line 589
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 590
    .line 591
    if-nez v2, :cond_d

    .line 592
    .line 593
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 594
    .line 595
    const-string v4, "HqmManagerService"

    .line 596
    .line 597
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    check-cast v2, Landroid/os/SemHqmManager;

    .line 602
    .line 603
    iput-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 604
    .line 605
    if-nez v2, :cond_d

    .line 606
    .line 607
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 608
    .line 609
    if-eqz v0, :cond_10

    .line 610
    .line 611
    const-string v0, "HQM services is not working"

    .line 612
    .line 613
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .line 615
    .line 616
    goto :goto_16

    .line 617
    :cond_d
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 618
    .line 619
    sget-boolean v6, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 620
    .line 621
    const-string v10, "1.1"

    .line 622
    .line 623
    const-string/jumbo v11, "sec"

    .line 624
    .line 625
    .line 626
    const-string v7, "Sluggish"

    .line 627
    .line 628
    const-string v8, "MSEC"

    .line 629
    .line 630
    const-string/jumbo v9, "ph"

    .line 631
    .line 632
    .line 633
    const-string v12, ""

    .line 634
    .line 635
    const-string v14, ""

    .line 636
    .line 637
    move-object v13, v0

    .line 638
    invoke-virtual/range {v5 .. v14}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    if-eqz v1, :cond_e

    .line 643
    .line 644
    const-string v1, "Success to report \'MSEC\' : "

    .line 645
    .line 646
    invoke-static {v1, v0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    goto :goto_16

    .line 650
    :cond_e
    const-string v0, "Failed to send to server"

    .line 651
    .line 652
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .line 654
    .line 655
    goto :goto_16

    .line 656
    :catch_11
    move-exception v0

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    .line 658
    .line 659
    const-string v2, "JSON Exception: "

    .line 660
    .line 661
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .line 677
    .line 678
    goto :goto_16

    .line 679
    :cond_f
    move/from16 v8, v17

    .line 680
    .line 681
    move/from16 v5, v19

    .line 682
    .line 683
    const/4 v4, 0x1

    .line 684
    add-int/lit8 v15, v15, -0x1

    .line 685
    .line 686
    goto/16 :goto_15

    .line 687
    .line 688
    :cond_10
    :goto_16
    return-void

    .line 689
    :catchall_5
    move-exception v0

    .line 690
    move-object v1, v0

    .line 691
    :goto_17
    if-eqz v13, :cond_11

    .line 692
    .line 693
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    .line 694
    .line 695
    .line 696
    goto :goto_18

    .line 697
    :catch_12
    move-exception v0

    .line 698
    goto :goto_19

    .line 699
    :cond_11
    :goto_18
    if-eqz v4, :cond_12

    .line 700
    .line 701
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_12

    .line 702
    .line 703
    .line 704
    goto :goto_1a

    .line 705
    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 706
    .line 707
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .line 723
    .line 724
    :cond_12
    :goto_1a
    throw v1
.end method
