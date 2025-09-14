.class public final Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

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
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "[sct_handleMessage]msg:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v2, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const-string v3, "[SS]SleepChargingTimeController"

    .line 15
    .line 16
    invoke-static {v1, v2, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v0, v0, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const/16 v1, 0x1c

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    move-object/from16 v6, p0

    .line 27
    .line 28
    iget-object v6, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 29
    .line 30
    packed-switch v0, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_14

    .line 34
    .line 35
    :pswitch_0
    iput-boolean v5, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 36
    .line 37
    invoke-virtual {v6, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 43
    .line 44
    .line 45
    goto/16 :goto_14

    .line 46
    .line 47
    :pswitch_1
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 48
    .line 49
    iput-boolean v4, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 50
    .line 51
    invoke-virtual {v6, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 52
    .line 53
    .line 54
    iput-object v2, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 55
    .line 56
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 57
    .line 58
    const/16 v1, 0x15

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    .line 62
    .line 63
    goto/16 :goto_14

    .line 64
    .line 65
    :pswitch_2
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 66
    .line 67
    iput-boolean v5, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 68
    .line 69
    invoke-static {v6}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 74
    .line 75
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    .line 87
    .line 88
    goto/16 :goto_14

    .line 89
    .line 90
    :pswitch_3
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    .line 91
    .line 92
    if-nez v0, :cond_0

    .line 93
    .line 94
    const-string v0, "alarm observer already disabled"

    .line 95
    .line 96
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto/16 :goto_14

    .line 100
    .line 101
    :cond_0
    invoke-static {v6}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 106
    .line 107
    if-nez v1, :cond_1

    .line 108
    .line 109
    if-nez v0, :cond_1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    if-eqz v1, :cond_2

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    :goto_0
    const-string v0, "The Next Alarm Not Changed"

    .line 123
    .line 124
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto/16 :goto_14

    .line 128
    .line 129
    :cond_2
    const-string v1, "The Next Alarm Changed"

    .line 130
    .line 131
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iput-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v2, "[NextAlarmChanged]"

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const/4 v1, 0x2

    .line 151
    invoke-static {v1, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 160
    .line 161
    const/16 v1, 0x1d

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    .line 165
    .line 166
    goto/16 :goto_14

    .line 167
    .line 168
    :pswitch_4
    invoke-virtual {v6, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->reset(Z)V

    .line 169
    .line 170
    .line 171
    iget-boolean v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 172
    .line 173
    if-eqz v0, :cond_3

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v1, "[sct_handleMessage]isEndCalled:"

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-boolean v1, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 183
    .line 184
    invoke-static {v3, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_3
    const-string v1, "[SS]PersonalPatternManager"

    .line 189
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 191
    .line 192
    .line 193
    move-result-wide v7

    .line 194
    iget-object v9, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    .line 195
    .line 196
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    const-string v0, "[getSleepPatterns]cursor count:"

    .line 200
    .line 201
    new-instance v10, Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 204
    .line 205
    .line 206
    new-instance v11, Landroid/os/Bundle;

    .line 207
    .line 208
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string/jumbo v12, "keyCallerPackagerName"

    .line 212
    .line 213
    .line 214
    const-string/jumbo v13, "com.android.server.BatteryService"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v12, "android:query-arg-sql-sort-order"

    .line 221
    .line 222
    const-string/jumbo v13, "week_type"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :try_start_0
    iget-object v12, v9, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    sget-object v14, Lcom/android/server/battery/sleepcharging/SleepPatternContract$SleepPatternInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 235
    .line 236
    invoke-virtual {v12, v14, v2, v11, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 237
    .line 238
    .line 239
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    if-nez v11, :cond_4

    .line 241
    .line 242
    :try_start_1
    const-string v0, "[getSleepPatterns]Fail - cursor null"

    .line 243
    .line 244
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .line 246
    .line 247
    :goto_1
    move-object/from16 v22, v6

    .line 248
    .line 249
    goto/16 :goto_8

    .line 250
    .line 251
    :catchall_0
    move-exception v0

    .line 252
    move-object v2, v0

    .line 253
    move-object/from16 v22, v6

    .line 254
    .line 255
    goto/16 :goto_9

    .line 256
    .line 257
    :cond_4
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 258
    .line 259
    .line 260
    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 261
    if-nez v12, :cond_5

    .line 262
    .line 263
    :try_start_3
    const-string v0, "[getSleepPatterns]Fail - cursor empty"

    .line 264
    .line 265
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_5
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 289
    .line 290
    .line 291
    :goto_2
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const-string v12, "bedtime"

    .line 300
    .line 301
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v12

    .line 305
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 306
    .line 307
    .line 308
    move-result-wide v14

    .line 309
    const-string/jumbo v12, "wakeup_time"

    .line 310
    .line 311
    .line 312
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    move-result v12

    .line 316
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v4

    .line 320
    const-string/jumbo v12, "confidence"

    .line 321
    .line 322
    .line 323
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    move-result v12

    .line 327
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getFloat(I)F

    .line 328
    .line 329
    .line 330
    move-result v12

    .line 331
    const-string/jumbo v2, "is_confident"

    .line 332
    .line 333
    .line 334
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-lez v2, :cond_6

    .line 343
    .line 344
    const/4 v2, 0x1

    .line 345
    goto :goto_3

    .line 346
    :cond_6
    const/4 v2, 0x0

    .line 347
    :goto_3
    if-eqz v0, :cond_9

    .line 348
    .line 349
    move-object/from16 p0, v13

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 352
    .line 353
    .line 354
    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 355
    move-object/from16 v22, v6

    .line 356
    .line 357
    const/4 v6, 0x3

    .line 358
    if-lt v13, v6, :cond_7

    .line 359
    .line 360
    const-wide/16 v16, 0x0

    .line 361
    .line 362
    cmp-long v6, v14, v16

    .line 363
    .line 364
    if-ltz v6, :cond_7

    .line 365
    .line 366
    cmp-long v6, v4, v16

    .line 367
    .line 368
    if-ltz v6, :cond_7

    .line 369
    .line 370
    cmp-long v6, v14, v4

    .line 371
    .line 372
    if-eqz v6, :cond_7

    .line 373
    .line 374
    const/4 v6, 0x0

    .line 375
    cmpg-float v6, v12, v6

    .line 376
    .line 377
    if-gez v6, :cond_8

    .line 378
    .line 379
    :cond_7
    :goto_4
    move-wide/from16 v16, v14

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_8
    :try_start_5
    new-instance v6, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    .line 383
    .line 384
    move-wide/from16 v16, v14

    .line 385
    .line 386
    move-object v14, v6

    .line 387
    move-object v15, v0

    .line 388
    move-wide/from16 v18, v4

    .line 389
    .line 390
    move/from16 v20, v12

    .line 391
    .line 392
    move/from16 v21, v2

    .line 393
    .line 394
    invoke-direct/range {v14 .. v21}, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;-><init>(Ljava/lang/String;JJFZ)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v10, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    goto :goto_7

    .line 401
    :catchall_1
    move-exception v0

    .line 402
    :goto_5
    move-object v2, v0

    .line 403
    goto :goto_9

    .line 404
    :catchall_2
    move-exception v0

    .line 405
    move-object/from16 v22, v6

    .line 406
    .line 407
    goto :goto_5

    .line 408
    :cond_9
    move-object/from16 v22, v6

    .line 409
    .line 410
    move-object/from16 p0, v13

    .line 411
    .line 412
    goto :goto_4

    .line 413
    :goto_6
    const-string v6, "[getSleepPatterns]invalid values from runestone"

    .line 414
    .line 415
    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    new-instance v6, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    const-string v13, "[getSleepPatterns]weekType:"

    .line 424
    .line 425
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v0, ",bedTime:"

    .line 432
    .line 433
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    move-wide/from16 v13, v16

    .line 437
    .line 438
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v0, ",wakeupTime:"

    .line 442
    .line 443
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    const-string v0, ",confidence:"

    .line 450
    .line 451
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v0, ",isConfident:"

    .line 458
    .line 459
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    :goto_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 473
    .line 474
    .line 475
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 476
    if-nez v0, :cond_a

    .line 477
    .line 478
    :goto_8
    if-eqz v11, :cond_c

    .line 479
    .line 480
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 481
    .line 482
    .line 483
    goto :goto_c

    .line 484
    :catch_0
    move-exception v0

    .line 485
    goto :goto_b

    .line 486
    :cond_a
    move-object/from16 v13, p0

    .line 487
    .line 488
    move-object/from16 v6, v22

    .line 489
    .line 490
    const/4 v2, 0x0

    .line 491
    const/4 v4, 0x0

    .line 492
    const/4 v5, 0x1

    .line 493
    goto/16 :goto_2

    .line 494
    .line 495
    :goto_9
    if-eqz v11, :cond_b

    .line 496
    .line 497
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 498
    .line 499
    .line 500
    goto :goto_a

    .line 501
    :catchall_3
    move-exception v0

    .line 502
    move-object v4, v0

    .line 503
    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 504
    .line 505
    .line 506
    :cond_b
    :goto_a
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 507
    :catch_1
    move-exception v0

    .line 508
    move-object/from16 v22, v6

    .line 509
    .line 510
    :goto_b
    const-string v2, "[getSleepPatterns]Exception"

    .line 511
    .line 512
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 516
    .line 517
    .line 518
    :cond_c
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v2, "[getSleepPatterns]sleepPatterns size:"

    .line 521
    .line 522
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 540
    .line 541
    .line 542
    move-result-wide v4

    .line 543
    sub-long/2addr v4, v7

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    const-string v2, "[getSleepPatterns]elapseMillis:"

    .line 547
    .line 548
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .line 560
    .line 561
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_e

    .line 566
    .line 567
    const-string v0, "[getSleepPatterns]Fail"

    .line 568
    .line 569
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    const-string/jumbo v0, "currentRubinState:"

    .line 573
    .line 574
    .line 575
    :try_start_9
    iget-object v2, v9, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->mContext:Landroid/content/Context;

    .line 576
    .line 577
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    sget-object v4, Lcom/android/server/battery/sleepcharging/RunestoneStateContract;->CONTENT_URI:Landroid/net/Uri;

    .line 582
    .line 583
    const-string/jumbo v5, "getRubinState"

    .line 584
    .line 585
    .line 586
    const-string v6, "android_com.android.server.BatteryService"

    .line 587
    .line 588
    const/4 v7, 0x0

    .line 589
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    if-eqz v2, :cond_d

    .line 594
    .line 595
    const-string/jumbo v4, "isDeviceRubinSupported"

    .line 596
    .line 597
    .line 598
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    const-string/jumbo v5, "isDeviceRubinWorkable"

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    const-string/jumbo v6, "isEnabledInSupportedApps"

    .line 610
    .line 611
    .line 612
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 613
    .line 614
    .line 615
    move-result v6

    .line 616
    const-string/jumbo v7, "currentRubinState"

    .line 617
    .line 618
    .line 619
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    new-instance v7, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string v0, " ,isDeviceRubinSupported:"

    .line 632
    .line 633
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    const-string v0, " ,isDeviceRubinWorkable:"

    .line 640
    .line 641
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    const-string v0, " ,isEnabledInSupportedApps:"

    .line 648
    .line 649
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    goto :goto_e

    .line 660
    :catch_2
    move-exception v0

    .line 661
    goto :goto_d

    .line 662
    :cond_d
    const-string/jumbo v0, "bundle null"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 663
    .line 664
    .line 665
    goto :goto_e

    .line 666
    :goto_d
    const-string v2, "[queryRunestoneStatus]Exception"

    .line 667
    .line 668
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    :goto_e
    const-string v2, "[queryRunestoneStatus]"

    .line 679
    .line 680
    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    const-string v1, "/data/log/battery_service/sleep_charging_history"

    .line 684
    .line 685
    const-string v2, "RunestoneStatus"

    .line 686
    .line 687
    invoke-static {v1, v2, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    :goto_f
    move-object/from16 v1, v22

    .line 691
    .line 692
    goto :goto_10

    .line 693
    :cond_e
    const-string v0, "[getSleepPatterns]Success"

    .line 694
    .line 695
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    goto :goto_f

    .line 699
    :goto_10
    iput-object v10, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 700
    .line 701
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-eqz v0, :cond_f

    .line 706
    .line 707
    const/4 v2, 0x0

    .line 708
    iput-object v2, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 709
    .line 710
    goto :goto_11

    .line 711
    :cond_f
    const/4 v2, 0x1

    .line 712
    invoke-virtual {v1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateDeviceTimeChangedReceiver(Z)V

    .line 713
    .line 714
    .line 715
    invoke-static {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    iput-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 720
    .line 721
    :goto_11
    iget-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 722
    .line 723
    if-eqz v0, :cond_12

    .line 724
    .line 725
    iget-boolean v2, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isConfident:Z

    .line 726
    .line 727
    if-eqz v2, :cond_11

    .line 728
    .line 729
    iget-boolean v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 730
    .line 731
    if-eqz v0, :cond_10

    .line 732
    .line 733
    invoke-static {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    iput-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 738
    .line 739
    iget-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 740
    .line 741
    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 742
    .line 743
    .line 744
    const/4 v2, 0x1

    .line 745
    invoke-virtual {v1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    .line 746
    .line 747
    .line 748
    goto :goto_12

    .line 749
    :cond_10
    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    .line 750
    .line 751
    invoke-virtual {v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    goto :goto_12

    .line 755
    :cond_11
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 756
    .line 757
    const-string v0, "[sct_handleMessage]not confident => only wait for wakeup time"

    .line 758
    .line 759
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .line 761
    .line 762
    :goto_12
    const-string v0, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 763
    .line 764
    invoke-virtual {v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    goto :goto_13

    .line 768
    :cond_12
    const-string v0, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 769
    .line 770
    invoke-virtual {v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    :goto_13
    iget-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 774
    .line 775
    const/16 v1, 0x1b

    .line 776
    .line 777
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 778
    .line 779
    .line 780
    :goto_14
    return-void

    .line 781
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
