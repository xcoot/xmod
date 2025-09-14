.class public final Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
.super Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final acquireLock(IJ)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 8
    .line 9
    const-string v5, "acquireLock"

    .line 10
    .line 11
    invoke-static {v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v4, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v5, "TunerResourceManagerService"

    .line 20
    .line 21
    const-string v6, ", "

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    const-string v0, "acquireLockInternal()"

    .line 28
    .line 29
    invoke-virtual {v4, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(ILjava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 36
    goto/16 :goto_f

    .line 37
    .line 38
    :cond_1
    const-wide/16 v10, 0x1f4

    .line 39
    .line 40
    :try_start_0
    iget v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 41
    .line 42
    const/4 v12, -0x1

    .line 43
    if-ne v0, v12, :cond_2

    .line 44
    .line 45
    const/4 v14, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v14, 0x0

    .line 48
    :goto_1
    if-ne v1, v0, :cond_3

    .line 49
    .line 50
    move v0, v14

    .line 51
    iget-wide v13, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    cmp-long v13, v2, v13

    .line 54
    .line 55
    if-nez v13, :cond_4

    .line 56
    .line 57
    const/4 v13, 0x1

    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto/16 :goto_10

    .line 61
    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto/16 :goto_e

    .line 64
    .line 65
    :cond_3
    move v0, v14

    .line 66
    :cond_4
    const/4 v13, 0x0

    .line 67
    :goto_2
    move v14, v0

    .line 68
    :goto_3
    const-string v0, "acquireLockInternal("

    .line 69
    .line 70
    if-nez v14, :cond_a

    .line 71
    .line 72
    if-nez v13, :cond_a

    .line 73
    .line 74
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v15
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    cmp-long v17, v15, v7

    .line 79
    .line 80
    const-wide/16 v18, 0x0

    .line 81
    .line 82
    if-ltz v17, :cond_6

    .line 83
    .line 84
    sub-long/2addr v15, v7

    .line 85
    :cond_5
    :goto_4
    move/from16 v20, v13

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const-wide v20, 0x7fffffffffffffffL

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    sub-long v22, v20, v7

    .line 94
    .line 95
    add-long v15, v22, v15

    .line 96
    .line 97
    cmp-long v17, v15, v18

    .line 98
    .line 99
    if-gez v17, :cond_5

    .line 100
    .line 101
    move-wide/from16 v15, v20

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :goto_5
    sub-long v12, v10, v15

    .line 105
    .line 106
    cmp-long v15, v12, v18

    .line 107
    .line 108
    const-string v9, "("

    .line 109
    .line 110
    if-gtz v15, :cond_7

    .line 111
    .line 112
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v8, "FAILED:acquireLockInternal("

    .line 118
    .line 119
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v8, ") - timed out, but will grant the lock to the callee by stealing it from the current holder:"

    .line 138
    .line 139
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v8, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 143
    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-wide v8, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 151
    .line 152
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v8, "), who likely failed to call releaseLock(), to prevent this from becoming an unrecoverable error"

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    const/4 v7, 0x1

    .line 168
    goto :goto_8

    .line 169
    :cond_7
    iget-object v14, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    .line 170
    .line 171
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 172
    .line 173
    invoke-interface {v14, v12, v13, v15}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 174
    .line 175
    .line 176
    iget v12, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 177
    .line 178
    const/4 v13, -0x1

    .line 179
    if-ne v12, v13, :cond_8

    .line 180
    .line 181
    const/4 v14, 0x1

    .line 182
    goto :goto_6

    .line 183
    :cond_8
    const/4 v14, 0x0

    .line 184
    :goto_6
    if-nez v14, :cond_9

    .line 185
    .line 186
    new-instance v12, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v0, ") - woken up from cond wait, but "

    .line 210
    .line 211
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 215
    .line 216
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    move v9, v14

    .line 223
    iget-wide v13, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 224
    .line 225
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v0, ") is already holding the lock. Going to wait again if timeout hasn\'t reached yet"

    .line 229
    .line 230
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_9
    move v9, v14

    .line 242
    :goto_7
    move v14, v9

    .line 243
    move/from16 v13, v20

    .line 244
    .line 245
    const/4 v12, -0x1

    .line 246
    goto/16 :goto_3

    .line 247
    .line 248
    :cond_a
    move/from16 v20, v13

    .line 249
    .line 250
    const/4 v7, 0x0

    .line 251
    :goto_8
    if-nez v14, :cond_e

    .line 252
    .line 253
    if-eqz v7, :cond_b

    .line 254
    .line 255
    goto :goto_a

    .line 256
    :cond_b
    if-eqz v20, :cond_d

    .line 257
    .line 258
    iget v8, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 259
    .line 260
    const/4 v9, 0x1

    .line 261
    add-int/2addr v8, v9

    .line 262
    iput v8, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 263
    .line 264
    sget-boolean v8, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 265
    .line 266
    if-eqz v8, :cond_c

    .line 267
    .line 268
    new-instance v8, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v0, ") - nested count incremented to "

    .line 292
    .line 293
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 297
    .line 298
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    :cond_c
    :goto_9
    const/4 v0, 0x1

    .line 309
    goto :goto_b

    .line 310
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v0, ") - should not reach here"

    .line 334
    .line 335
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    goto :goto_9

    .line 346
    :cond_e
    :goto_a
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 347
    .line 348
    if-eqz v0, :cond_f

    .line 349
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v8, "SUCCESS:acquireLockInternal("

    .line 356
    .line 357
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v8, ")"

    .line 376
    .line 377
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    :cond_f
    iget v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 388
    .line 389
    if-eqz v0, :cond_10

    .line 390
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    const-string v8, "Something is wrong as nestedCount("

    .line 397
    .line 398
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    iget v8, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 402
    .line 403
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v8, ") is not zero. Will overriding it to 1 anyways"

    .line 407
    .line 408
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    :cond_10
    iput v1, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 419
    .line 420
    iput-wide v2, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 421
    .line 422
    const/4 v0, 0x1

    .line 423
    iput v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    .line 425
    :goto_b
    if-nez v14, :cond_12

    .line 426
    .line 427
    if-nez v20, :cond_12

    .line 428
    .line 429
    if-eqz v7, :cond_11

    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_11
    const/4 v9, 0x0

    .line 433
    goto :goto_d

    .line 434
    :cond_12
    :goto_c
    move v9, v0

    .line 435
    :goto_d
    iget-object v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-eqz v0, :cond_13

    .line 442
    .line 443
    iget-object v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 446
    .line 447
    .line 448
    goto :goto_f

    .line 449
    :goto_e
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    const-string v8, "exception thrown in acquireLockInternal("

    .line 455
    .line 456
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v1, "):"

    .line 475
    .line 476
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    .line 488
    .line 489
    iget-object v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_0

    .line 496
    .line 497
    iget-object v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 500
    .line 501
    .line 502
    goto/16 :goto_0

    .line 503
    .line 504
    :cond_13
    :goto_f
    return v9

    .line 505
    :goto_10
    iget-object v1, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 506
    .line 507
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-eqz v1, :cond_14

    .line 512
    .line 513
    iget-object v1, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 514
    .line 515
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 516
    .line 517
    .line 518
    :cond_14
    throw v0
.end method

.method public final clearResourceMap(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string v1, "clearResourceMap"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 28
    .line 29
    invoke-static {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 38
    .line 39
    invoke-static {v1, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    const-string p3, "  "

    .line 4
    .line 5
    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string p3, "android.permission.DUMP"

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    const-string p0, "Permission Denial: can\'t dump!"

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 34
    .line 35
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    .line 36
    .line 37
    const-string v1, "ClientProfiles:"

    .line 38
    .line 39
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 40
    .line 41
    .line 42
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 43
    .line 44
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 45
    .line 46
    const-string v1, "FrontendResources:"

    .line 47
    .line 48
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 52
    .line 53
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 54
    .line 55
    const-string v1, "FrontendExistingNums:"

    .line 56
    .line 57
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 58
    .line 59
    .line 60
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 61
    .line 62
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 63
    .line 64
    const-string v1, "FrontendUsedNums:"

    .line 65
    .line 66
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 67
    .line 68
    .line 69
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 70
    .line 71
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 72
    .line 73
    const-string v1, "FrontendMaxUsableNums:"

    .line 74
    .line 75
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 76
    .line 77
    .line 78
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 79
    .line 80
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    .line 81
    .line 82
    const-string v1, "FrontendResourcesBackUp:"

    .line 83
    .line 84
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 85
    .line 86
    .line 87
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 88
    .line 89
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    .line 90
    .line 91
    const-string v1, "FrontendExistingNumsBackup:"

    .line 92
    .line 93
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 94
    .line 95
    .line 96
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 97
    .line 98
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    .line 99
    .line 100
    const-string v1, "FrontendUsedNumsBackup:"

    .line 101
    .line 102
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 103
    .line 104
    .line 105
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 106
    .line 107
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    .line 108
    .line 109
    const-string v1, "FrontendUsedNumsBackup:"

    .line 110
    .line 111
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 112
    .line 113
    .line 114
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 115
    .line 116
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    .line 117
    .line 118
    const-string v1, "DemuxResource:"

    .line 119
    .line 120
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 121
    .line 122
    .line 123
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 124
    .line 125
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 126
    .line 127
    const-string v1, "LnbResource:"

    .line 128
    .line 129
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 130
    .line 131
    .line 132
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 133
    .line 134
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 135
    .line 136
    const-string v1, "CasResource:"

    .line 137
    .line 138
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 139
    .line 140
    .line 141
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 142
    .line 143
    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 144
    .line 145
    const-string v1, "CiCamResource:"

    .line 146
    .line 147
    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 148
    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 151
    .line 152
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 153
    .line 154
    const-string v0, "Listners:"

    .line 155
    .line 156
    invoke-static {p0, p3, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 157
    .line 158
    .line 159
    monitor-exit p2

    .line 160
    return-void

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    throw p0
.end method

.method public final getClientPriority(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string v1, "getClientPriority"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final getConfigPriority(IZ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string v1, "getConfigPriority"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final getMaxNumberOfFrontends(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string v1, "getMaxNumberOfFrontends"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 9
    .line 10
    const-string v1, "getMaxNumberOfFrontends"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "existingNum is -1 for "

    .line 34
    .line 35
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "TunerResourceManagerService"

    .line 46
    .line 47
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-ne p0, v2, :cond_1

    .line 58
    .line 59
    move v2, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v2, p0

    .line 62
    :goto_0
    monitor-exit v0

    .line 63
    return v2

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final hasUnusedFrontend(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string v1, "hasUnusedFrontend"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 38
    .line 39
    iget v2, v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    .line 40
    .line 41
    if-ne v2, p1, :cond_0

    .line 42
    .line 43
    iget-boolean v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p0, 0x0

    .line 50
    :goto_0
    monitor-exit v0

    .line 51
    return p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string v1, "isHigherPriority"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0

    .line 28
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 29
    .line 30
    const-string p1, "Client profiles can\'t be null."

    .line 31
    .line 32
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final isLowestPriority(II)Z
    .locals 5

    .line 1
    const-string v0, "isLowestPriority called from unregistered client: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    const-string v2, "isLowestPriority"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 63
    .line 64
    iget v4, v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    .line 65
    .line 66
    if-ne v4, p2, :cond_1

    .line 67
    .line 68
    iget-boolean v4, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    iget v3, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 73
    .line 74
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-le p1, v3, :cond_1

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    :cond_2
    :goto_0
    monitor-exit v1

    .line 82
    return v0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    new-instance p0, Landroid/os/RemoteException;

    .line 86
    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
.end method

.method public final registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "registerClientProfile"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 10
    .line 11
    const-string/jumbo v1, "registerClientProfile"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    if-eqz p3, :cond_3

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    .line 26
    .line 27
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v0, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const/16 v0, 0x64

    .line 44
    .line 45
    if-eq v1, v0, :cond_1

    .line 46
    .line 47
    const/16 v0, 0xc8

    .line 48
    .line 49
    if-eq v1, v0, :cond_1

    .line 50
    .line 51
    const/16 v0, 0x12c

    .line 52
    .line 53
    if-eq v1, v0, :cond_1

    .line 54
    .line 55
    const/16 v0, 0x190

    .line 56
    .line 57
    if-eq v1, v0, :cond_1

    .line 58
    .line 59
    const/16 v0, 0x1f4

    .line 60
    .line 61
    if-ne v1, v0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 65
    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p3, "Use undefined client use case:"

    .line 69
    .line 70
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v0

    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 92
    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V

    .line 94
    .line 95
    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p0

    .line 101
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 102
    .line 103
    const-string p1, "IResourcesReclaimListener can\'t be null!"

    .line 104
    .line 105
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_3
    new-instance p0, Landroid/os/RemoteException;

    .line 110
    .line 111
    const-string p1, "clientId can\'t be null!"

    .line 112
    .line 113
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_4
    new-instance p0, Landroid/os/RemoteException;

    .line 118
    .line 119
    const-string p1, "ResourceClientProfile can\'t be null"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final releaseCasSession(II)V
    .locals 3

    .line 1
    const-string v0, "Release cas from unregistered client:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    const-string/jumbo v2, "releaseCasSession"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-static {v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 64
    .line 65
    invoke-virtual {p0, v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V

    .line 66
    .line 67
    .line 68
    monitor-exit p1

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 73
    .line 74
    const-string p2, "Client is not the current owner of the releasing cas."

    .line 75
    .line 76
    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 81
    .line 82
    const-string p2, "Releasing cas does not exist."

    .line 83
    .line 84
    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_3
    new-instance p0, Landroid/os/RemoteException;

    .line 109
    .line 110
    const-string p1, "casSessionHandle can\'t be invalid"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public final releaseCiCam(II)V
    .locals 4

    .line 1
    const-string v0, "The client "

    .line 2
    .line 3
    const-string v1, "Release ciCam from unregistered client:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 6
    .line 7
    const-string/jumbo v3, "releaseCiCam"

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 14
    .line 15
    const/4 v3, 0x5

    .line 16
    invoke-static {v2, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 28
    .line 29
    invoke-virtual {v3, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 36
    .line 37
    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v1, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-ne v1, p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseCiCamInternal(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V

    .line 76
    .line 77
    .line 78
    monitor-exit v2

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 83
    .line 84
    const-string p1, "Client is not the current owner of the releasing ciCam."

    .line 85
    .line 86
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 91
    .line 92
    const-string p1, "Releasing ciCam does not exist."

    .line 93
    .line 94
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p2, " is not the owner of the releasing ciCam."

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_3
    new-instance p0, Landroid/os/RemoteException;

    .line 122
    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p0

    .line 141
    :cond_4
    new-instance p0, Landroid/os/RemoteException;

    .line 142
    .line 143
    const-string p1, "ciCamHandle can\'t be invalid"

    .line 144
    .line 145
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0
.end method

.method public final releaseDemux(II)V
    .locals 4

    .line 1
    const-string v0, "Release demux for unregistered client:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    const-string/jumbo v2, "releaseDemux"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 12
    .line 13
    const-string/jumbo v2, "releaseDemux"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-boolean v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "TunerResourceManagerService"

    .line 24
    .line 25
    const-string/jumbo v2, "releaseDemux(demuxHandle="

    .line 26
    .line 27
    .line 28
    const-string v3, ")"

    .line 29
    .line 30
    invoke-static {p1, v2, v3, v1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    .line 41
    .line 42
    check-cast v2, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 55
    .line 56
    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 71
    .line 72
    if-ne v0, p2, :cond_2

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseDemuxInternal(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V

    .line 77
    .line 78
    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 81
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 82
    .line 83
    const-string p1, "Client is not the current owner of the releasing demux."

    .line 84
    .line 85
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_3
    new-instance p0, Landroid/os/RemoteException;

    .line 90
    .line 91
    const-string p1, "Releasing demux does not exist."

    .line 92
    .line 93
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_4
    new-instance p0, Landroid/os/RemoteException;

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0
.end method

.method public final releaseDescrambler(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v0, "releaseDescrambler"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-boolean p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-string/jumbo p0, "releaseDescrambler(descramblerHandle="

    .line 19
    .line 20
    .line 21
    const-string p2, ")"

    .line 22
    .line 23
    const-string v0, "TunerResourceManagerService"

    .line 24
    .line 25
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final releaseFrontend(II)V
    .locals 3

    .line 1
    const-string v0, "Release frontend from unregistered client:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    const-string/jumbo v2, "releaseFrontend"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 12
    .line 13
    const-string/jumbo v2, "releaseFrontend"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 34
    .line 35
    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eq v0, p2, :cond_1

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    iget-object v0, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 62
    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v0, Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 77
    .line 78
    const-string p1, "Client is not the current owner of the releasing fe."

    .line 79
    .line 80
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseFrontendInternal(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;I)V

    .line 89
    .line 90
    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 93
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 94
    .line 95
    const-string p1, "Releasing frontend does not exist."

    .line 96
    .line 97
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_3
    new-instance p0, Landroid/os/RemoteException;

    .line 102
    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0

    .line 121
    :cond_4
    new-instance p0, Landroid/os/RemoteException;

    .line 122
    .line 123
    const-string p1, "frontendHandle can\'t be invalid"

    .line 124
    .line 125
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public final releaseLnb(II)V
    .locals 3

    .line 1
    const-string v0, "Release lnb from unregistered client:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    const-string/jumbo v2, "releaseLnb"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 12
    .line 13
    const-string/jumbo v2, "releaseLnb"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-static {v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 34
    .line 35
    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 50
    .line 51
    if-ne v0, p2, :cond_0

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 56
    .line 57
    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 63
    .line 64
    const-string p1, "Client is not the current owner of the releasing lnb."

    .line 65
    .line 66
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 71
    .line 72
    const-string p1, "Releasing lnb does not exist."

    .line 73
    .line 74
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 79
    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0

    .line 98
    :cond_3
    new-instance p0, Landroid/os/RemoteException;

    .line 99
    .line 100
    const-string p1, "lnbHandle can\'t be invalid"

    .line 101
    .line 102
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public final releaseLock(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "releaseLock"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IZZ)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z
    .locals 4

    .line 1
    const-string v0, "Request cas from unregistered client:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    const-string/jumbo v2, "requestCasSession"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 19
    .line 20
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    monitor-exit v1

    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 61
    .line 62
    const-string p1, "casSessionHandle can\'t be null"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z
    .locals 4

    .line 1
    const-string v0, "Request ciCam from unregistered client:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    const-string/jumbo v2, "requestCiCam"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 19
    .line 20
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestCiCamInternal(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    monitor-exit v1

    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 61
    .line 62
    const-string p1, "ciCamHandle can\'t be null"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z
    .locals 4

    .line 1
    const-string v0, "Request demux from unregistered client:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    const-string/jumbo v2, "requestDemux"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 12
    .line 13
    const-string/jumbo v2, "requestDemux"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 27
    .line 28
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    monitor-exit v1

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 47
    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 69
    .line 70
    const-string p1, "demuxHandle can\'t be null"

    .line 71
    .line 72
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z
    .locals 4

    .line 1
    const-string v0, "Request descrambler from unregistered client:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "TunerResourceManagerService: requestDescrambler"

    .line 10
    .line 11
    const-string v3, "android.permission.ACCESS_TV_DESCRAMBLER"

    .line 12
    .line 13
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 17
    .line 18
    const-string/jumbo v2, "requestDescrambler"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 32
    .line 33
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->clientId:I

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    monitor-exit v1

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 52
    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->clientId:I

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0

    .line 73
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 74
    .line 75
    const-string p1, "descramblerHandle can\'t be null"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z
    .locals 6

    .line 1
    const-string v0, "Release frontend before requesting another one. Client id: "

    .line 2
    .line 3
    const-string v1, "Request frontend from unregistered client: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 6
    .line 7
    const-string/jumbo v3, "requestFrontend"

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 14
    .line 15
    const-string/jumbo v3, "requestFrontend"

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    const-string p0, "TunerResourceManagerService"

    .line 25
    .line 26
    const-string p1, "frontendHandle can\'t be null"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v3

    .line 37
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 38
    .line 39
    iget v5, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    const-string p0, "TunerResourceManagerService"

    .line 48
    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    monitor-exit v3

    .line 67
    return v2

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 71
    .line 72
    iget v4, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 79
    .line 80
    check-cast v1, Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    const-string p0, "TunerResourceManagerService"

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    monitor-exit v3

    .line 108
    return v2

    .line 109
    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 110
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    monitor-exit v3

    .line 116
    return p0

    .line 117
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw p0
.end method

.method public final requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z
    .locals 4

    .line 1
    const-string v0, "Request lnb from unregistered client:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    const-string/jumbo v2, "requestLnb"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 12
    .line 13
    const-string/jumbo v2, "requestLnb"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 27
    .line 28
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    monitor-exit v1

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 47
    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 69
    .line 70
    const-string p1, "lnbHandle can\'t be null"

    .line 71
    .line 72
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final restoreResourceMap(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "restoreResourceMap"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 39
    .line 40
    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 46
    .line 47
    invoke-static {p1, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "setDemuxInfoList"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setDemuxInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 27
    .line 28
    const-string p1, "TunerDemuxInfo can\'t be null"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "setFrontendInfoList"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 27
    .line 28
    const-string p1, "TunerFrontendInfo can\'t be null"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final setLnbInfoList([I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "setLnbInfoList"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setLnbInfoListInternal([I)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 27
    .line 28
    const-string p1, "Lnb handle list can\'t be null"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final setMaxNumberOfFrontends(II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "setMaxNumberOfFrontends"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 10
    .line 11
    const-string/jumbo v1, "setMaxNumberOfFrontends"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-gez p2, :cond_0

    .line 18
    .line 19
    const-string p0, "TunerResourceManagerService"

    .line 20
    .line 21
    const-string/jumbo v0, "setMaxNumberOfFrontends failed with maxUsableNum:"

    .line 22
    .line 23
    .line 24
    const-string v1, " frontendType:"

    .line 25
    .line 26
    invoke-static {p2, p1, v0, v1, p0}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eq v1, v2, :cond_2

    .line 46
    .line 47
    if-gt v1, p2, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string/jumbo p0, "max number of frontend for frontendType: "

    .line 51
    .line 52
    .line 53
    const-string v2, " cannot be set to a value lower than the current usage count. (requested max num = "

    .line 54
    .line 55
    const-string v3, ", current usage = "

    .line 56
    .line 57
    invoke-static {p1, p2, p0, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "TunerResourceManagerService"

    .line 62
    .line 63
    invoke-static {p0, v1, p1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    :goto_1
    monitor-exit v0

    .line 75
    return p0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method public final shareFrontend(II)V
    .locals 5

    .line 1
    const-string v0, "Request to share frontend with a client that has no frontend resources. Target client id:"

    .line 2
    .line 3
    const-string v1, "Request to share frontend with an unregistered client:"

    .line 4
    .line 5
    const-string v2, "Share frontend request from an unregistered client:"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 8
    .line 9
    const-string/jumbo v4, "shareFrontend"

    .line 10
    .line 11
    .line 12
    invoke-static {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 16
    .line 17
    const-string/jumbo v4, "shareFrontend"

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v3

    .line 28
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 29
    .line 30
    invoke-virtual {v4, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 37
    .line 38
    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 51
    .line 52
    check-cast v1, Ljava/util/HashSet;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->shareFrontendInternal(II)V

    .line 63
    .line 64
    .line 65
    monitor-exit v3

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 106
    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0
.end method

.method public final storeResourceMap(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "storeResourceMap"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    .line 39
    .line 40
    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    .line 46
    .line 47
    invoke-static {p1, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final transferOwner(III)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "newOwnerId:"

    .line 2
    .line 3
    .line 4
    const-string v1, "currentOwnerId:"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 7
    .line 8
    const-string/jumbo v3, "transferOwner"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 15
    .line 16
    const-string/jumbo v3, "transferOwner"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 28
    .line 29
    invoke-virtual {v3, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    const-string p0, "TunerResourceManagerService"

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, " does not exit"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    monitor-exit v2

    .line 59
    return v4

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 63
    .line 64
    invoke-virtual {v1, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    const-string p0, "TunerResourceManagerService"

    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, " does not exit"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    monitor-exit v2

    .line 93
    return v4

    .line 94
    :cond_1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 95
    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferOwnerInternal(III)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    monitor-exit v2

    .line 101
    return p0

    .line 102
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0
.end method

.method public final unregisterClientProfile(I)V
    .locals 3

    .line 1
    const-string v0, "Unregistering non exists client:"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 4
    .line 5
    const-string/jumbo v2, "unregisterClientProfile"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string p0, "TunerResourceManagerService"

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->unregisterClientProfileInternal(I)V

    .line 48
    .line 49
    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final updateCasInfo(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "updateCasInfo"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasInfoInternal(II)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final updateClientPriority(III)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "updateClientPriority"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateClientPriorityInternal(III)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    monitor-exit v0

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method
