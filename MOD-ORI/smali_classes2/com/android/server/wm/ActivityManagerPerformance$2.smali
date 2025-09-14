.class public final Lcom/android/server/wm/ActivityManagerPerformance$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, "ActivityManagerPerformance"

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v1, "Screen state changed. mIsScreenOn: false"

    .line 23
    .line 24
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 28
    .line 29
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 30
    .line 31
    goto/16 :goto_e

    .line 32
    .line 33
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v5, 0x1

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const-string v1, "Screen state changed. mIsScreenOn: true"

    .line 47
    .line 48
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 52
    .line 53
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 54
    .line 55
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    .line 56
    .line 57
    goto/16 :goto_e

    .line 58
    .line 59
    :cond_3
    const-string v2, "com.sec.android.sdhms.action.INIT_COMPLETED"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const-string v1, "SDHMS INIT_COMPLETED"

    .line 72
    .line 73
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 77
    .line 78
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsSdhmsInitCompleted:Z

    .line 79
    .line 80
    goto/16 :goto_e

    .line 81
    .line 82
    :cond_5
    const-string v2, "com.sec.android.intent.action.BIGDATA_EVERY_DAY_UPDATE"

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_7

    .line 89
    .line 90
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 91
    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    const-string/jumbo v1, "receive ACTION_UPDATE_EVERY_DAY_ALARM, updating db"

    .line 95
    .line 96
    .line 97
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$mwriteAppLaunchTimeCountStatsToDB(Lcom/android/server/wm/ActivityManagerPerformance;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_e

    .line 106
    .line 107
    :cond_7
    const-string v2, "com.sec.android.intent.action.BIGDATA_EVERY_WEEK_CLEANUP"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_12

    .line 114
    .line 115
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 116
    .line 117
    if-eqz v1, :cond_8

    .line 118
    .line 119
    const-string/jumbo v2, "receive ACTION_CLEANUP_EVERY_WEEK_ALARM, sending bigdata to HQM"

    .line 120
    .line 121
    .line 122
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    new-instance v6, Ljava/util/HashMap;

    .line 131
    .line 132
    iget-object v0, v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    .line 133
    .line 134
    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 142
    .line 143
    iget-wide v7, v7, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    .line 144
    .line 145
    long-to-int v7, v7

    .line 146
    const/4 v8, 0x7

    .line 147
    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 148
    .line 149
    .line 150
    const/16 v7, 0xb

    .line 151
    .line 152
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 153
    .line 154
    .line 155
    const/16 v9, 0xc

    .line 156
    .line 157
    invoke-virtual {v0, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 158
    .line 159
    .line 160
    const/16 v10, 0xd

    .line 161
    .line 162
    invoke-virtual {v0, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 163
    .line 164
    .line 165
    const/16 v11, 0xe

    .line 166
    .line 167
    invoke-virtual {v0, v11, v3}, Ljava/util/Calendar;->set(II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 171
    .line 172
    .line 173
    move-result-wide v12

    .line 174
    sget-object v14, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 175
    .line 176
    iget-wide v14, v14, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    .line 177
    .line 178
    sub-long/2addr v12, v14

    .line 179
    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    .line 181
    .line 182
    const/4 v12, 0x6

    .line 183
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    int-to-long v12, v0

    .line 188
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 189
    .line 190
    iget-wide v14, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    .line 191
    .line 192
    iget-wide v9, v2, Lcom/android/server/wm/ActivityManagerPerformance;->mDramSize:J

    .line 193
    .line 194
    const-string v0, "W"

    .line 195
    .line 196
    const-string v3, "H"

    .line 197
    .line 198
    const-string v7, "C"

    .line 199
    .line 200
    filled-new-array {v7, v0, v3}, [Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v26, "CNT"

    .line 205
    .line 206
    const-string v27, "MIN"

    .line 207
    .line 208
    const-string v16, "005"

    .line 209
    .line 210
    const-string v17, "010"

    .line 211
    .line 212
    const-string v18, "015"

    .line 213
    .line 214
    const-string v19, "020"

    .line 215
    .line 216
    const-string v20, "025"

    .line 217
    .line 218
    const-string v21, "030"

    .line 219
    .line 220
    const-string v22, "040"

    .line 221
    .line 222
    const-string v23, "050"

    .line 223
    .line 224
    const-string v24, "100"

    .line 225
    .line 226
    const-string v25, "OVT"

    .line 227
    .line 228
    const-string v28, "MAX"

    .line 229
    .line 230
    const-string v29, "SUM"

    .line 231
    .line 232
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    :try_start_0
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v16

    .line 248
    if-eqz v16, :cond_f

    .line 249
    .line 250
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v16

    .line 254
    check-cast v16, Ljava/util/Map$Entry;

    .line 255
    .line 256
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v17

    .line 260
    move-object/from16 v8, v17

    .line 261
    .line 262
    check-cast v8, Ljava/lang/String;

    .line 263
    .line 264
    if-eqz v8, :cond_9

    .line 265
    .line 266
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v17

    .line 270
    if-eqz v17, :cond_a

    .line 271
    .line 272
    :cond_9
    const/4 v8, 0x7

    .line 273
    goto :goto_0

    .line 274
    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v16

    .line 278
    check-cast v16, Ljava/util/Map;

    .line 279
    .line 280
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 281
    .line 282
    .line 283
    move-result-object v16

    .line 284
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v16

    .line 288
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v17

    .line 292
    if-eqz v17, :cond_9

    .line 293
    .line 294
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v17

    .line 298
    check-cast v17, Ljava/util/Map$Entry;

    .line 299
    .line 300
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v19

    .line 304
    move-object/from16 v5, v19

    .line 305
    .line 306
    check-cast v5, Ljava/lang/String;

    .line 307
    .line 308
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v17

    .line 312
    check-cast v17, Ljava/util/Map;

    .line 313
    .line 314
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 315
    .line 316
    .line 317
    move-result-object v17

    .line 318
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object v17

    .line 322
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v19

    .line 326
    if-eqz v19, :cond_e

    .line 327
    .line 328
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v19

    .line 332
    check-cast v19, Ljava/util/Map$Entry;

    .line 333
    .line 334
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v21

    .line 338
    move-object/from16 v11, v21

    .line 339
    .line 340
    check-cast v11, Ljava/lang/String;

    .line 341
    .line 342
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v19

    .line 346
    check-cast v19, [[Ljava/lang/Long;

    .line 347
    .line 348
    move-object/from16 v21, v7

    .line 349
    .line 350
    new-instance v7, Lorg/json/JSONObject;

    .line 351
    .line 352
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 353
    .line 354
    .line 355
    move-object/from16 v23, v6

    .line 356
    .line 357
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    move-object/from16 v24, v8

    .line 366
    .line 367
    const-string v8, " "

    .line 368
    .line 369
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    :try_start_2
    const-string v11, "PACK"

    .line 380
    .line 381
    invoke-virtual {v7, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    const-string v11, "PVER"

    .line 386
    .line 387
    invoke-virtual {v6, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    .line 389
    .line 390
    const/4 v6, 0x0

    .line 391
    :goto_3
    const/4 v11, 0x3

    .line 392
    if-ge v6, v11, :cond_c

    .line 393
    .line 394
    const/4 v8, 0x0

    .line 395
    :goto_4
    const/16 v11, 0xe

    .line 396
    .line 397
    if-ge v8, v11, :cond_b

    .line 398
    .line 399
    new-instance v11, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 402
    .line 403
    .line 404
    move-object/from16 v26, v5

    .line 405
    .line 406
    :try_start_3
    aget-object v5, v0, v6

    .line 407
    .line 408
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    aget-object v5, v3, v8

    .line 412
    .line 413
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    aget-object v11, v19, v6

    .line 421
    .line 422
    aget-object v11, v11, v8

    .line 423
    .line 424
    invoke-virtual {v7, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    .line 426
    .line 427
    add-int/lit8 v8, v8, 0x1

    .line 428
    .line 429
    move-object/from16 v5, v26

    .line 430
    .line 431
    goto :goto_4

    .line 432
    :catch_0
    move-exception v0

    .line 433
    goto/16 :goto_8

    .line 434
    .line 435
    :catch_1
    move-object/from16 v26, v5

    .line 436
    .line 437
    goto :goto_5

    .line 438
    :catch_2
    move-object/from16 v26, v5

    .line 439
    .line 440
    goto :goto_6

    .line 441
    :cond_b
    move-object/from16 v26, v5

    .line 442
    .line 443
    add-int/lit8 v6, v6, 0x1

    .line 444
    .line 445
    goto :goto_3

    .line 446
    :cond_c
    move-object/from16 v26, v5

    .line 447
    .line 448
    const-string v5, "PERD"

    .line 449
    .line 450
    invoke-virtual {v7, v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 451
    .line 452
    .line 453
    const-string v5, "DONC"

    .line 454
    .line 455
    invoke-virtual {v7, v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 456
    .line 457
    .line 458
    const-string v5, "DRAM"

    .line 459
    .line 460
    invoke-virtual {v7, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    const/4 v7, 0x1

    .line 472
    sub-int/2addr v6, v7

    .line 473
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v8
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 477
    goto :goto_7

    .line 478
    :catch_3
    :goto_5
    :try_start_4
    const-string v5, "TTLS Bigdata key & data mismatch"

    .line 479
    .line 480
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    :catch_4
    :goto_6
    const/4 v8, 0x0

    .line 484
    :goto_7
    if-eqz v8, :cond_d

    .line 485
    .line 486
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    if-nez v5, :cond_d

    .line 491
    .line 492
    const-string v5, "TTLS"

    .line 493
    .line 494
    const-string v6, "1"

    .line 495
    .line 496
    invoke-virtual {v2, v5, v6, v8}, Lcom/android/server/wm/ActivityManagerPerformance;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    if-eqz v1, :cond_d

    .line 500
    .line 501
    new-instance v6, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v5, ", "

    .line 510
    .line 511
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 526
    .line 527
    .line 528
    :cond_d
    move-object/from16 v7, v21

    .line 529
    .line 530
    move-object/from16 v6, v23

    .line 531
    .line 532
    move-object/from16 v8, v24

    .line 533
    .line 534
    move-object/from16 v5, v26

    .line 535
    .line 536
    const/16 v11, 0xe

    .line 537
    .line 538
    goto/16 :goto_2

    .line 539
    .line 540
    :catch_5
    move-exception v0

    .line 541
    move-object/from16 v23, v6

    .line 542
    .line 543
    goto :goto_8

    .line 544
    :cond_e
    const/4 v5, 0x1

    .line 545
    goto/16 :goto_1

    .line 546
    .line 547
    :cond_f
    move-object/from16 v23, v6

    .line 548
    .line 549
    goto :goto_9

    .line 550
    :goto_8
    const-string v3, "failed to send TTLS Bigdata"

    .line 551
    .line 552
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    .line 557
    .line 558
    :goto_9
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->deleteDBTableAndClear()V

    .line 559
    .line 560
    .line 561
    const-string v2, "failed resetStartTimeAndDevicePowerOnCount, "

    .line 562
    .line 563
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 568
    .line 569
    iget-wide v5, v3, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    .line 570
    .line 571
    long-to-int v3, v5

    .line 572
    const/4 v5, 0x7

    .line 573
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 574
    .line 575
    .line 576
    const/4 v3, 0x1

    .line 577
    const/16 v5, 0xb

    .line 578
    .line 579
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 580
    .line 581
    .line 582
    const/16 v5, 0xc

    .line 583
    .line 584
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 585
    .line 586
    .line 587
    const/4 v3, 0x0

    .line 588
    const/16 v5, 0xd

    .line 589
    .line 590
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 591
    .line 592
    .line 593
    const/16 v5, 0xe

    .line 594
    .line 595
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 596
    .line 597
    .line 598
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 599
    .line 600
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    sput-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 605
    .line 606
    if-eqz v3, :cond_11

    .line 607
    .line 608
    :try_start_5
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 609
    .line 610
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 611
    .line 612
    .line 613
    move-result-wide v5

    .line 614
    iput-wide v5, v3, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    .line 615
    .line 616
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 617
    .line 618
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 619
    .line 620
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    const-string/jumbo v5, "startTimeOfGatheredData"

    .line 624
    .line 625
    .line 626
    invoke-static {v0, v3, v5}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    .line 630
    .line 631
    const-wide/16 v5, 0x1

    .line 632
    .line 633
    iput-wide v5, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    .line 634
    .line 635
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 636
    .line 637
    const-string v5, "devicePowerOnCount"

    .line 638
    .line 639
    invoke-static {v0, v3, v5}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    if-eqz v1, :cond_10

    .line 643
    .line 644
    const-string/jumbo v0, "resetStartTimeAndDevicePowerOnCount"

    .line 645
    .line 646
    .line 647
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 648
    .line 649
    .line 650
    goto :goto_a

    .line 651
    :catchall_0
    move-exception v0

    .line 652
    goto :goto_c

    .line 653
    :catch_6
    move-exception v0

    .line 654
    goto :goto_b

    .line 655
    :cond_10
    :goto_a
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 656
    .line 657
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 658
    .line 659
    .line 660
    goto :goto_d

    .line 661
    :goto_b
    if-eqz v1, :cond_10

    .line 662
    .line 663
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 680
    .line 681
    .line 682
    goto :goto_a

    .line 683
    :goto_c
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 684
    .line 685
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 686
    .line 687
    .line 688
    throw v0

    .line 689
    :cond_11
    const-string v0, "failed DB writable open to resetStartTimeAndDevicePowerOnCount."

    .line 690
    .line 691
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    :goto_d
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 695
    .line 696
    .line 697
    goto :goto_e

    .line 698
    :cond_12
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 699
    .line 700
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    if-eqz v1, :cond_14

    .line 705
    .line 706
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 707
    .line 708
    if-eqz v1, :cond_13

    .line 709
    .line 710
    const-string/jumbo v1, "receive Shutdown, updating db"

    .line 711
    .line 712
    .line 713
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .line 715
    .line 716
    :cond_13
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$2;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 717
    .line 718
    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$mwriteAppLaunchTimeCountStatsToDB(Lcom/android/server/wm/ActivityManagerPerformance;)V

    .line 719
    .line 720
    .line 721
    :cond_14
    :goto_e
    return-void
.end method
