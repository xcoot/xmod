.class public final Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v3, :cond_4

    .line 13
    .line 14
    instance-of v6, v3, Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    if-eqz v6, :cond_1

    .line 17
    .line 18
    move-object v6, v3

    .line 19
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v6, v4

    .line 23
    :goto_0
    instance-of v7, v3, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v7, :cond_2

    .line 26
    .line 27
    move-object v7, v3

    .line 28
    check-cast v7, Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move-object v7, v4

    .line 32
    :goto_1
    instance-of v8, v3, Ljava/lang/Boolean;

    .line 33
    .line 34
    if-eqz v8, :cond_3

    .line 35
    .line 36
    check-cast v3, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    :goto_2
    move v3, v5

    .line 44
    goto :goto_3

    .line 45
    :cond_4
    move-object v6, v4

    .line 46
    move-object v7, v6

    .line 47
    goto :goto_2

    .line 48
    :goto_3
    iget v8, v0, Landroid/os/Message;->what:I

    .line 49
    .line 50
    move-object/from16 v9, p0

    .line 51
    .line 52
    iget-object v9, v9, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 53
    .line 54
    const-string v10, "ActivityManagerPerformance"

    .line 55
    .line 56
    if-eq v8, v2, :cond_30

    .line 57
    .line 58
    const/4 v11, 0x2

    .line 59
    if-eq v8, v11, :cond_2e

    .line 60
    .line 61
    if-eq v8, v1, :cond_2c

    .line 62
    .line 63
    const/4 v12, 0x4

    .line 64
    if-eq v8, v12, :cond_2a

    .line 65
    .line 66
    const/16 v13, 0x32

    .line 67
    .line 68
    const-wide/16 v14, 0x0

    .line 69
    .line 70
    if-eq v8, v13, :cond_21

    .line 71
    .line 72
    const v11, 0x402610

    .line 73
    .line 74
    .line 75
    const-string v13, "0"

    .line 76
    .line 77
    packed-switch v8, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    goto/16 :goto_e

    .line 81
    .line 82
    :pswitch_0
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    const-string v0, "Received MSG_PERF_RESERVE_CLEAR  value: "

    .line 87
    .line 88
    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-static {v9, v13}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$mperfReserveControl(Lcom/android/server/wm/ActivityManagerPerformance;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_e

    .line 95
    .line 96
    :pswitch_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    const-string v1, "Received MSG_ANIMATION_BOOSTER  timeout: "

    .line 109
    .line 110
    invoke-static {v0, v1, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    const-string v1, "ANIMATION_BOOST"

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v1, v0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_e

    .line 123
    .line 124
    :pswitch_2
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    const-string v0, "Received MSG_DHA_BOOSTER_ON"

    .line 129
    .line 130
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_7
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 134
    .line 135
    if-nez v0, :cond_8

    .line 136
    .line 137
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 138
    .line 139
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 140
    .line 141
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 142
    .line 143
    :cond_8
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 144
    .line 145
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LMKD_REENTRY_MODE_ENABLE:Z

    .line 146
    .line 147
    if-eqz v3, :cond_d

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v8

    .line 156
    sget-wide v10, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    .line 157
    .line 158
    sub-long v10, v8, v10

    .line 159
    .line 160
    const-wide/32 v16, 0x1d4c0

    .line 161
    .line 162
    .line 163
    cmp-long v3, v10, v16

    .line 164
    .line 165
    const-string v6, "DynamicHiddenApp_BGSlotManager"

    .line 166
    .line 167
    iget-object v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 168
    .line 169
    if-gez v3, :cond_b

    .line 170
    .line 171
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    if-eqz v11, :cond_9

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_9
    sget v11, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 181
    .line 182
    add-int/2addr v11, v2

    .line 183
    sput v11, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 184
    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {v3, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    :goto_4
    iget-boolean v3, v0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    .line 193
    .line 194
    if-nez v3, :cond_c

    .line 195
    .line 196
    sget v3, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 197
    .line 198
    const/16 v11, 0xf

    .line 199
    .line 200
    if-lt v3, v11, :cond_c

    .line 201
    .line 202
    sget v3, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 203
    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 205
    .line 206
    .line 207
    move-result-wide v18

    .line 208
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    const/16 v11, 0x68

    .line 213
    .line 214
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 215
    .line 216
    .line 217
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 218
    .line 219
    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 221
    .line 222
    .line 223
    move-result-wide v3

    .line 224
    sub-long v3, v3, v18

    .line 225
    .line 226
    const-wide/16 v11, 0xfa

    .line 227
    .line 228
    cmp-long v11, v3, v11

    .line 229
    .line 230
    const-string v12, "ActivityManager"

    .line 231
    .line 232
    if-lez v11, :cond_a

    .line 233
    .line 234
    new-instance v11, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v13, "SLOW setLmkdReentryMode: "

    .line 237
    .line 238
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :cond_a
    iget v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 252
    .line 253
    or-int/lit8 v3, v3, 0x8

    .line 254
    .line 255
    iput v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 256
    .line 257
    invoke-virtual {v10}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 258
    .line 259
    .line 260
    const-string v3, "ReentryModeBGSlot Set"

    .line 261
    .line 262
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 266
    .line 267
    .line 268
    move-result-wide v3

    .line 269
    sput-wide v3, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    .line 270
    .line 271
    iput-boolean v2, v0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    .line 272
    .line 273
    const-string v3, "Enable ReentryMode"

    .line 274
    .line 275
    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_b
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 282
    .line 283
    .line 284
    sput v5, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 285
    .line 286
    iput-boolean v5, v0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    .line 287
    .line 288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 289
    .line 290
    .line 291
    move-result-wide v3

    .line 292
    sput-wide v3, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    .line 293
    .line 294
    :cond_c
    :goto_5
    sget-wide v3, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    .line 295
    .line 296
    cmp-long v11, v3, v14

    .line 297
    .line 298
    if-eqz v11, :cond_d

    .line 299
    .line 300
    sub-long/2addr v8, v3

    .line 301
    cmp-long v3, v8, v16

    .line 302
    .line 303
    if-ltz v3, :cond_d

    .line 304
    .line 305
    iget v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 306
    .line 307
    and-int/lit8 v3, v3, -0x9

    .line 308
    .line 309
    iput v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 310
    .line 311
    invoke-virtual {v10}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 312
    .line 313
    .line 314
    const-string v3, "ReentryModeBGSlot Recovered"

    .line 315
    .line 316
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    sput-wide v14, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    .line 320
    .line 321
    :cond_d
    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    sget-boolean v3, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    .line 327
    .line 328
    if-nez v3, :cond_e

    .line 329
    .line 330
    goto/16 :goto_e

    .line 331
    .line 332
    :cond_e
    :goto_6
    sget-object v3, Lcom/android/server/bgslotmanager/CustomEFKManager;->DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

    .line 333
    .line 334
    array-length v4, v3

    .line 335
    if-ge v5, v4, :cond_10

    .line 336
    .line 337
    aget-object v3, v3, v5

    .line 338
    .line 339
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_f

    .line 344
    .line 345
    goto/16 :goto_e

    .line 346
    .line 347
    :cond_f
    add-int/2addr v5, v2

    .line 348
    goto :goto_6

    .line 349
    :cond_10
    iget v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    .line 350
    .line 351
    iget v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    .line 352
    .line 353
    iget v5, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    .line 354
    .line 355
    const/16 v6, 0xa

    .line 356
    .line 357
    if-le v3, v6, :cond_14

    .line 358
    .line 359
    iget-boolean v7, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    .line 360
    .line 361
    if-nez v7, :cond_32

    .line 362
    .line 363
    iput-boolean v2, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    .line 364
    .line 365
    div-int/lit8 v1, v3, 0x3

    .line 366
    .line 367
    if-ge v1, v6, :cond_11

    .line 368
    .line 369
    move v1, v6

    .line 370
    :cond_11
    if-le v3, v6, :cond_13

    .line 371
    .line 372
    const-string/jumbo v2, "sys.sysctl.watermark_scale_factor"

    .line 373
    .line 374
    .line 375
    if-lez v5, :cond_12

    .line 376
    .line 377
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    sget v3, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 382
    .line 383
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_12
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    sget v3, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 392
    .line 393
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    :cond_13
    :goto_7
    new-instance v1, Lcom/android/server/bgslotmanager/CustomEFKManager$1;

    .line 397
    .line 398
    int-to-long v2, v4

    .line 399
    const/16 v22, 0x1

    .line 400
    .line 401
    move-object/from16 v16, v1

    .line 402
    .line 403
    move-object/from16 v17, v0

    .line 404
    .line 405
    move-wide/from16 v18, v2

    .line 406
    .line 407
    move-wide/from16 v20, v2

    .line 408
    .line 409
    invoke-direct/range {v16 .. v22}, Lcom/android/server/bgslotmanager/CustomEFKManager$1;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 413
    .line 414
    .line 415
    goto/16 :goto_e

    .line 416
    .line 417
    :cond_14
    iget v2, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    .line 418
    .line 419
    const/4 v3, -0x1

    .line 420
    if-eq v2, v3, :cond_16

    .line 421
    .line 422
    const-string/jumbo v3, "sys.sysctl.extra_free_kbytes"

    .line 423
    .line 424
    .line 425
    if-lez v5, :cond_15

    .line 426
    .line 427
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    sget v2, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 432
    .line 433
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto :goto_8

    .line 437
    :cond_15
    div-int/2addr v2, v1

    .line 438
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    sget v2, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 443
    .line 444
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    :cond_16
    :goto_8
    new-instance v1, Lcom/android/server/bgslotmanager/CustomEFKManager$1;

    .line 448
    .line 449
    int-to-long v2, v4

    .line 450
    const/16 v22, 0x2

    .line 451
    .line 452
    move-object/from16 v16, v1

    .line 453
    .line 454
    move-object/from16 v17, v0

    .line 455
    .line 456
    move-wide/from16 v18, v2

    .line 457
    .line 458
    move-wide/from16 v20, v2

    .line 459
    .line 460
    invoke-direct/range {v16 .. v22}, Lcom/android/server/bgslotmanager/CustomEFKManager$1;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 464
    .line 465
    .line 466
    goto/16 :goto_e

    .line 467
    .line 468
    :pswitch_3
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 469
    .line 470
    if-eqz v0, :cond_17

    .line 471
    .line 472
    const-string v0, "Received MSG_PERF_TASK_BOOST_END"

    .line 473
    .line 474
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    :cond_17
    iget-object v0, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 478
    .line 479
    if-eqz v0, :cond_32

    .line 480
    .line 481
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    .line 482
    .line 483
    if-eqz v1, :cond_32

    .line 484
    .line 485
    invoke-virtual {v0, v11, v13}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_e

    .line 489
    .line 490
    :pswitch_4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v0, Ljava/lang/Integer;

    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 499
    .line 500
    if-eqz v1, :cond_18

    .line 501
    .line 502
    const-string v1, "Received MSG_PERF_TASK_BOOST  pid: "

    .line 503
    .line 504
    invoke-static {v0, v1, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    :cond_18
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    .line 511
    .line 512
    if-eqz v1, :cond_19

    .line 513
    .line 514
    new-instance v1, Landroid/util/BoostFramework;

    .line 515
    .line 516
    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    .line 517
    .line 518
    .line 519
    const/high16 v2, 0x40c80000    # 6.25f

    .line 520
    .line 521
    filled-new-array {v2, v0}, [I

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    const/16 v3, 0x7d0

    .line 526
    .line 527
    invoke-virtual {v1, v3, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 528
    .line 529
    .line 530
    :cond_19
    iget-object v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 531
    .line 532
    if-eqz v1, :cond_32

    .line 533
    .line 534
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    .line 535
    .line 536
    if-eqz v1, :cond_32

    .line 537
    .line 538
    iget-object v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 539
    .line 540
    const/16 v2, 0xd

    .line 541
    .line 542
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    .line 544
    .line 545
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    const-string/jumbo v4, "taskBoostAcq pid : "

    .line 552
    .line 553
    .line 554
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    const-wide/16 v4, 0x1

    .line 565
    .line 566
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 567
    .line 568
    .line 569
    iget-object v3, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 570
    .line 571
    invoke-virtual {v3, v11, v0}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 575
    .line 576
    .line 577
    iget-boolean v0, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostHintExist:Z

    .line 578
    .line 579
    if-eqz v0, :cond_1a

    .line 580
    .line 581
    iget-object v0, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 582
    .line 583
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 584
    .line 585
    .line 586
    :cond_1a
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    const-wide/16 v2, 0x7d0

    .line 591
    .line 592
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 593
    .line 594
    .line 595
    goto/16 :goto_e

    .line 596
    .line 597
    :pswitch_5
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 598
    .line 599
    if-eqz v0, :cond_1b

    .line 600
    .line 601
    const-string v0, "Received MSG_PERF_RESERVE_ON_OFF  value: "

    .line 602
    .line 603
    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    :cond_1b
    invoke-static {v9, v7}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$mperfReserveControl(Lcom/android/server/wm/ActivityManagerPerformance;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_e

    .line 610
    .line 611
    :pswitch_6
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 612
    .line 613
    if-eqz v0, :cond_1c

    .line 614
    .line 615
    const-string v0, "Received MSG_OLAF_FREEZE_CLEAR"

    .line 616
    .line 617
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    :cond_1c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    invoke-static {v5}, Landroid/os/Process;->doSomethingOlaf(Z)V

    .line 624
    .line 625
    .line 626
    goto/16 :goto_e

    .line 627
    .line 628
    :pswitch_7
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 629
    .line 630
    if-eqz v0, :cond_1d

    .line 631
    .line 632
    const-string v0, "Received MSG_OLAF_FREEZE_ON_OFF  value: "

    .line 633
    .line 634
    invoke-static {v0, v10, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 635
    .line 636
    .line 637
    :cond_1d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    invoke-static {v3}, Landroid/os/Process;->doSomethingOlaf(Z)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_e

    .line 644
    .line 645
    :pswitch_8
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 646
    .line 647
    if-eqz v0, :cond_1e

    .line 648
    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    const-string v1, "Received MSG_ENABLE_APP_SWITCH, r: "

    .line 652
    .line 653
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .line 665
    .line 666
    :cond_1e
    invoke-virtual {v9, v2, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 667
    .line 668
    .line 669
    goto/16 :goto_e

    .line 670
    .line 671
    :pswitch_9
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 672
    .line 673
    if-eqz v0, :cond_1f

    .line 674
    .line 675
    const-string v0, "Received MSG_CFMS_HINT_AMS_HOME pkgName: "

    .line 676
    .line 677
    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    :cond_1f
    const-string v0, "AMS_APP_HOME"

    .line 681
    .line 682
    invoke-static {v0, v7}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    goto/16 :goto_e

    .line 686
    .line 687
    :pswitch_a
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 688
    .line 689
    if-eqz v0, :cond_20

    .line 690
    .line 691
    const-string v0, "Received MSG_CFMS_HINT_AMS_SWITCH pkgName: "

    .line 692
    .line 693
    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    :cond_20
    const-string v0, "AMS_APP_SWITCH"

    .line 697
    .line 698
    invoke-static {v0, v7}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    goto/16 :goto_e

    .line 702
    .line 703
    :cond_21
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 704
    .line 705
    instance-of v1, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;

    .line 706
    .line 707
    if-eqz v1, :cond_22

    .line 708
    .line 709
    check-cast v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;

    .line 710
    .line 711
    goto :goto_9

    .line 712
    :cond_22
    move-object v0, v4

    .line 713
    :goto_9
    if-eqz v0, :cond_32

    .line 714
    .line 715
    iget-object v1, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->activityName:Ljava/lang/String;

    .line 716
    .line 717
    iget-wide v6, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->launchTime:J

    .line 718
    .line 719
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    .line 721
    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 723
    .line 724
    .line 725
    move-result-wide v12

    .line 726
    sget-wide v16, Lcom/android/server/wm/ActivityManagerPerformance;->sNextTimeToSendSlugBigdata:J

    .line 727
    .line 728
    cmp-long v3, v12, v16

    .line 729
    .line 730
    if-gez v3, :cond_23

    .line 731
    .line 732
    goto/16 :goto_e

    .line 733
    .line 734
    :cond_23
    iget-object v3, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->packageName:Ljava/lang/String;

    .line 735
    .line 736
    if-eqz v3, :cond_32

    .line 737
    .line 738
    iget-object v8, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mBigdataSlugSkipPackage:Ljava/util/Set;

    .line 739
    .line 740
    check-cast v8, Ljava/util/HashSet;

    .line 741
    .line 742
    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v8

    .line 746
    if-eqz v8, :cond_24

    .line 747
    .line 748
    goto/16 :goto_e

    .line 749
    .line 750
    :cond_24
    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 751
    .line 752
    const-string/jumbo v4, "power"

    .line 753
    .line 754
    .line 755
    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v4

    .line 759
    check-cast v4, Landroid/os/PowerManager;

    .line 760
    .line 761
    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    .line 762
    .line 763
    .line 764
    move-result v4

    .line 765
    if-nez v4, :cond_25

    .line 766
    .line 767
    goto/16 :goto_e

    .line 768
    .line 769
    :cond_25
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 770
    .line 771
    const-string v8, "keyguard"

    .line 772
    .line 773
    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    check-cast v4, Landroid/app/KeyguardManager;

    .line 778
    .line 779
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 780
    .line 781
    .line 782
    move-result v4

    .line 783
    if-eqz v4, :cond_26

    .line 784
    .line 785
    goto/16 :goto_e

    .line 786
    .line 787
    :cond_26
    const/4 v4, 0x7

    .line 788
    iget v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->launchType:I

    .line 789
    .line 790
    if-ne v0, v4, :cond_27

    .line 791
    .line 792
    move v0, v2

    .line 793
    goto :goto_a

    .line 794
    :cond_27
    move v0, v5

    .line 795
    :goto_a
    const-wide/16 v17, 0x2710

    .line 796
    .line 797
    add-long v12, v12, v17

    .line 798
    .line 799
    sput-wide v12, Lcom/android/server/wm/ActivityManagerPerformance;->sNextTimeToSendSlugBigdata:J

    .line 800
    .line 801
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 802
    .line 803
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 804
    .line 805
    .line 806
    move-result-object v4

    .line 807
    sget-boolean v8, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 808
    .line 809
    if-eqz v4, :cond_28

    .line 810
    .line 811
    :try_start_0
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 812
    .line 813
    .line 814
    move-result-object v4

    .line 815
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .line 817
    goto :goto_b

    .line 818
    :catch_0
    if-eqz v8, :cond_28

    .line 819
    .line 820
    const-string v4, " is not found in pm"

    .line 821
    .line 822
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .line 828
    .line 829
    :cond_28
    const-string v4, ""

    .line 830
    .line 831
    :goto_b
    new-array v12, v11, [J

    .line 832
    .line 833
    aput-wide v14, v12, v5

    .line 834
    .line 835
    aput-wide v14, v12, v2

    .line 836
    .line 837
    sget-object v13, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 838
    .line 839
    const-string/jumbo v14, "window"

    .line 840
    .line 841
    .line 842
    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v13

    .line 846
    check-cast v13, Landroid/view/WindowManager;

    .line 847
    .line 848
    if-eqz v13, :cond_29

    .line 849
    .line 850
    new-instance v13, Landroid/graphics/Point;

    .line 851
    .line 852
    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 853
    .line 854
    .line 855
    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 856
    .line 857
    .line 858
    move-result-object v14

    .line 859
    invoke-static {v14}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 860
    .line 861
    .line 862
    move-result-object v14

    .line 863
    if-eqz v14, :cond_29

    .line 864
    .line 865
    :try_start_1
    invoke-interface {v14, v5, v13}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 866
    .line 867
    .line 868
    iget v14, v13, Landroid/graphics/Point;->x:I

    .line 869
    .line 870
    int-to-long v14, v14

    .line 871
    aput-wide v14, v12, v5

    .line 872
    .line 873
    iget v5, v13, Landroid/graphics/Point;->y:I

    .line 874
    .line 875
    int-to-long v13, v5

    .line 876
    aput-wide v13, v12, v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 877
    .line 878
    goto :goto_c

    .line 879
    :catch_1
    if-eqz v8, :cond_29

    .line 880
    .line 881
    const-string v5, "display size not obtained"

    .line 882
    .line 883
    invoke-static {v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    .line 885
    .line 886
    :cond_29
    :goto_c
    new-instance v5, Lorg/json/JSONObject;

    .line 887
    .line 888
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 889
    .line 890
    .line 891
    :try_start_2
    new-instance v13, Lorg/json/JSONArray;

    .line 892
    .line 893
    invoke-direct {v13, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 894
    .line 895
    .line 896
    const-string v12, "V"

    .line 897
    .line 898
    invoke-virtual {v5, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 899
    .line 900
    .line 901
    move-result-object v5

    .line 902
    const-string v11, "FROM"

    .line 903
    .line 904
    const/16 v12, 0x7539

    .line 905
    .line 906
    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 907
    .line 908
    .line 909
    move-result-object v5

    .line 910
    const-string v11, "PACK"

    .line 911
    .line 912
    new-instance v12, Lorg/json/JSONArray;

    .line 913
    .line 914
    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 918
    .line 919
    .line 920
    move-result-object v3

    .line 921
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    const-string v1, "LAUN"

    .line 938
    .line 939
    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    const-string v1, "UPTM"

    .line 944
    .line 945
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 946
    .line 947
    .line 948
    move-result-wide v3

    .line 949
    const-wide/16 v5, 0x3e8

    .line 950
    .line 951
    div-long/2addr v3, v5

    .line 952
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    const-string v1, "RESL"

    .line 957
    .line 958
    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 967
    .line 968
    .line 969
    move-result v1

    .line 970
    sub-int/2addr v1, v2

    .line 971
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 975
    goto :goto_d

    .line 976
    :catch_2
    const/4 v4, 0x0

    .line 977
    :goto_d
    if-eqz v4, :cond_32

    .line 978
    .line 979
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 980
    .line 981
    .line 982
    move-result v0

    .line 983
    if-nez v0, :cond_32

    .line 984
    .line 985
    const-string v0, "SLUG"

    .line 986
    .line 987
    const-string v1, "3"

    .line 988
    .line 989
    invoke-virtual {v9, v0, v1, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    if-eqz v8, :cond_32

    .line 993
    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    .line 995
    .line 996
    const-string v1, "SLUG, "

    .line 997
    .line 998
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1002
    .line 1003
    .line 1004
    move-result v1

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    .line 1014
    .line 1015
    goto :goto_e

    .line 1016
    :cond_2a
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 1017
    .line 1018
    if-eqz v0, :cond_2b

    .line 1019
    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    const-string v1, "Received MSG_ENABLE_ACT_RESUME_TAIL r: "

    .line 1023
    .line 1024
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .line 1036
    .line 1037
    :cond_2b
    invoke-virtual {v9, v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1038
    .line 1039
    .line 1040
    goto :goto_e

    .line 1041
    :cond_2c
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 1042
    .line 1043
    if-eqz v0, :cond_2d

    .line 1044
    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    const-string v1, "Received MSG_DISABLE_ACT_RESUME, r: "

    .line 1048
    .line 1049
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .line 1061
    .line 1062
    :cond_2d
    invoke-virtual {v9, v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1063
    .line 1064
    .line 1065
    goto :goto_e

    .line 1066
    :cond_2e
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 1067
    .line 1068
    if-eqz v0, :cond_2f

    .line 1069
    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    const-string v1, "Received MSG_DISABLE_ACT_START, r: "

    .line 1073
    .line 1074
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    .line 1086
    .line 1087
    :cond_2f
    invoke-virtual {v9, v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1088
    .line 1089
    .line 1090
    goto :goto_e

    .line 1091
    :cond_30
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 1092
    .line 1093
    if-eqz v0, :cond_31

    .line 1094
    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    const-string v1, "Received MSG_DISABLE_APP_SWITCH, r: "

    .line 1098
    .line 1099
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    .line 1111
    .line 1112
    :cond_31
    invoke-virtual {v9, v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1113
    .line 1114
    .line 1115
    :cond_32
    :goto_e
    return-void

    .line 1116
    nop

    .line 1117
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
