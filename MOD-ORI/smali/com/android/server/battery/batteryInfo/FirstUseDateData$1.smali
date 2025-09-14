.class public final Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const-string v0, "/data/log/battery_service/battery_service_main_history"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "[SS]BattUtils"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget v5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->$r8$classId:I

    .line 9
    .line 10
    packed-switch v5, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 16
    .line 17
    iget-object v5, v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 18
    .line 19
    invoke-virtual {v5}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iput-object v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 24
    .line 25
    move v6, v3

    .line 26
    :goto_0
    iget v7, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 27
    .line 28
    iget-object v8, v5, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v9, v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 31
    .line 32
    if-ge v6, v7, :cond_4

    .line 33
    .line 34
    aget-boolean v7, v9, v6

    .line 35
    .line 36
    if-nez v7, :cond_0

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    iget-object v7, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v7, [Ljava/lang/String;

    .line 43
    .line 44
    aget-object v7, v7, v6

    .line 45
    .line 46
    sget-object v10, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    sget-object v11, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 53
    .line 54
    invoke-static {v10, v11}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    .line 55
    .line 56
    .line 57
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception v10

    .line 60
    const-string v11, "[convertDateStringToLocalDate]Exception"

    .line 61
    .line 62
    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    move-object v10, v1

    .line 69
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v12, "[convertDateStringToLocalDate]dateString:"

    .line 72
    .line 73
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v7, " -> date"

    .line 80
    .line 81
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    if-nez v10, :cond_1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_1
    const-wide/16 v11, 0xe

    .line 98
    .line 99
    invoke-virtual {v10, v11, v12}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v12, "[checkFaiExpired]batteryIndex:"

    .line 110
    .line 111
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v12, " ,currentDate:"

    .line 118
    .line 119
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v12, " ,thresholdDate:"

    .line 126
    .line 127
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v7}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_2

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    iget-object v7, v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Ljava/lang/String;

    .line 154
    .line 155
    const-string v10, "1"

    .line 156
    .line 157
    invoke-static {v7, v10}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_3

    .line 162
    .line 163
    const-string v7, "[checkFaiExpired]FaiExpired Write Success"

    .line 164
    .line 165
    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    aput-boolean v3, v9, v6

    .line 169
    .line 170
    :cond_3
    :goto_2
    add-int/2addr v6, v4

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v2, "[checkFaiExpired]shouldCheckFaiExpireds:"

    .line 176
    .line 177
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string/jumbo v2, "shouldCheckFaiExpireds:"

    .line 197
    .line 198
    .line 199
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const-string/jumbo v2, "checkFaiExpired"

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v2, v1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    array-length v0, v9

    .line 220
    invoke-static {v3, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;

    .line 225
    .line 226
    invoke-direct {v1, v5, v4}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    xor-int/2addr v0, v4

    .line 234
    if-eqz v0, :cond_5

    .line 235
    .line 236
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 239
    .line 240
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterDateChangedReceiver()V

    .line 243
    .line 244
    .line 245
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 248
    .line 249
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 252
    .line 253
    const-string v0, "[DateChangedReceiver_Handler]disable dateChangedReceiver"

    .line 254
    .line 255
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    :cond_5
    return-void

    .line 259
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 262
    .line 263
    const-string v5, ""

    .line 264
    .line 265
    iget-object v6, v1, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 266
    .line 267
    const-string v7, "[updateDate]"

    .line 268
    .line 269
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :try_start_1
    iget-object v7, v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    const-string/jumbo v8, "device_provisioned"

    .line 279
    .line 280
    .line 281
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 282
    .line 283
    .line 284
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    if-ne v7, v4, :cond_6

    .line 286
    .line 287
    move v7, v4

    .line 288
    goto :goto_3

    .line 289
    :catch_1
    move-exception v7

    .line 290
    const-string v8, "[isSetupWizardCompleted]Exception"

    .line 291
    .line 292
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 296
    .line 297
    .line 298
    :cond_6
    move v7, v3

    .line 299
    :goto_3
    const-string v8, "[isSetupWizardCompleted]result:"

    .line 300
    .line 301
    invoke-static {v8, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    .line 303
    .line 304
    if-nez v7, :cond_7

    .line 305
    .line 306
    goto/16 :goto_c

    .line 307
    .line 308
    :cond_7
    :try_start_2
    const-string/jumbo v7, "persist.sys.setupwizard.user_setup_complete"

    .line 309
    .line 310
    .line 311
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 312
    .line 313
    .line 314
    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 315
    goto :goto_4

    .line 316
    :catch_2
    move-exception v7

    .line 317
    const-string v8, "[isSetupWizardCompletedByUser]Exception"

    .line 318
    .line 319
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    .line 324
    .line 325
    move v7, v3

    .line 326
    :goto_4
    const-string v8, "[isSetupWizardCompletedByUser]result:"

    .line 327
    .line 328
    invoke-static {v8, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 329
    .line 330
    .line 331
    if-nez v7, :cond_8

    .line 332
    .line 333
    goto/16 :goto_c

    .line 334
    .line 335
    :cond_8
    :try_start_3
    const-string/jumbo v7, "persist.sys.setupwizard.jig_on_wifisetup"

    .line 336
    .line 337
    .line 338
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 339
    .line 340
    .line 341
    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 342
    if-ne v7, v4, :cond_9

    .line 343
    .line 344
    move v7, v4

    .line 345
    goto :goto_5

    .line 346
    :catch_3
    move-exception v7

    .line 347
    const-string v8, "[isSetupWizardSkipWifi]Exception"

    .line 348
    .line 349
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    .line 354
    .line 355
    :cond_9
    move v7, v3

    .line 356
    :goto_5
    const-string v8, "[isSetupWizardSkipWifi]result:"

    .line 357
    .line 358
    invoke-static {v8, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 359
    .line 360
    .line 361
    if-eqz v7, :cond_a

    .line 362
    .line 363
    goto/16 :goto_c

    .line 364
    .line 365
    :cond_a
    sget-object v7, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 366
    .line 367
    const-string v7, "[getCurrentNetworkDateStr]networkTimeMillis:"

    .line 368
    .line 369
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeMillis()J

    .line 370
    .line 371
    .line 372
    move-result-wide v8

    .line 373
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 374
    .line 375
    .line 376
    move-result-object v10

    .line 377
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 378
    .line 379
    .line 380
    move-result-object v11

    .line 381
    invoke-virtual {v10, v11}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    new-instance v11, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v7, " -> dateTime"

    .line 398
    .line 399
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    sget-object v7, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 413
    .line 414
    invoke-virtual {v10, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 418
    goto :goto_6

    .line 419
    :catch_4
    move-exception v7

    .line 420
    const-string v8, "[getCurrentNetworkDateStr]Exception(cannot get network time)"

    .line 421
    .line 422
    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    .line 427
    .line 428
    move-object v2, v5

    .line 429
    :goto_6
    const-string v7, "[updateDate]strCurrentDate:"

    .line 430
    .line 431
    invoke-static {v7, v2, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    if-eqz v2, :cond_14

    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    const/16 v8, 0x8

    .line 441
    .line 442
    if-eq v7, v8, :cond_b

    .line 443
    .line 444
    goto/16 :goto_c

    .line 445
    .line 446
    :cond_b
    const-string/jumbo v7, "ril.rfcal_date"

    .line 447
    .line 448
    .line 449
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    if-eqz v7, :cond_c

    .line 454
    .line 455
    const-string v9, "."

    .line 456
    .line 457
    invoke-virtual {v7, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    :cond_c
    const-string/jumbo v5, "ril.manufacturedate"

    .line 462
    .line 463
    .line 464
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    const-string v9, "[updateDate]strRfCalDate:"

    .line 469
    .line 470
    const-string v10, " ,strManufactureDate:"

    .line 471
    .line 472
    invoke-static {v9, v7, v10, v5, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    if-eqz v7, :cond_d

    .line 476
    .line 477
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 478
    .line 479
    .line 480
    move-result v9

    .line 481
    if-ne v9, v8, :cond_d

    .line 482
    .line 483
    goto :goto_7

    .line 484
    :cond_d
    if-eqz v5, :cond_13

    .line 485
    .line 486
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 487
    .line 488
    .line 489
    move-result v7

    .line 490
    if-ne v7, v8, :cond_13

    .line 491
    .line 492
    move-object v7, v5

    .line 493
    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    move-result v5

    .line 501
    const-string v7, "[updateDate]currentDateInt:"

    .line 502
    .line 503
    const-string v8, " ,refDate:"

    .line 504
    .line 505
    invoke-static {v2, v5, v7, v8, v6}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    if-le v5, v2, :cond_e

    .line 509
    .line 510
    goto/16 :goto_c

    .line 511
    .line 512
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    iput-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 517
    .line 518
    :goto_8
    iget v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 519
    .line 520
    if-ge v3, v5, :cond_12

    .line 521
    .line 522
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 523
    .line 524
    check-cast v5, [Ljava/lang/String;

    .line 525
    .line 526
    aget-object v5, v5, v3

    .line 527
    .line 528
    invoke-static {v5}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->isValidDate(Ljava/lang/String;)Z

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    if-eqz v5, :cond_f

    .line 533
    .line 534
    goto :goto_b

    .line 535
    :cond_f
    :try_start_5
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 536
    .line 537
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v5

    .line 541
    check-cast v5, Ljava/lang/String;

    .line 542
    .line 543
    int-to-long v7, v2

    .line 544
    invoke-static {v7, v8, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 545
    .line 546
    .line 547
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 550
    .line 551
    .line 552
    move-result v5

    .line 553
    if-nez v5, :cond_11

    .line 554
    .line 555
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 556
    .line 557
    aget-boolean v5, v5, v3

    .line 558
    .line 559
    if-eqz v5, :cond_10

    .line 560
    .line 561
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    check-cast v5, Ljava/lang/String;

    .line 568
    .line 569
    invoke-static {v7, v8, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 570
    .line 571
    .line 572
    goto :goto_9

    .line 573
    :catch_5
    move-exception v5

    .line 574
    goto :goto_a

    .line 575
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    const-string v7, "[updateDate]Authentification false => skip writing firstusedate_"

    .line 581
    .line 582
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    :cond_11
    :goto_9
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v5, [Ljava/lang/String;

    .line 598
    .line 599
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v7

    .line 603
    aput-object v7, v5, v3

    .line 604
    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .line 609
    .line 610
    const-string v7, "[updateDate]write FirstUseDate:"

    .line 611
    .line 612
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 623
    .line 624
    .line 625
    goto :goto_b

    .line 626
    :goto_a
    const-string v7, "NumberFormatException"

    .line 627
    .line 628
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .line 630
    .line 631
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 632
    .line 633
    .line 634
    :goto_b
    add-int/2addr v3, v4

    .line 635
    goto :goto_8

    .line 636
    :cond_12
    const/16 v2, 0x3e8

    .line 637
    .line 638
    invoke-virtual {v1, v2}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 639
    .line 640
    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    const-string v3, "[updateDate]mCurrentValues:"

    .line 644
    .line 645
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 649
    .line 650
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .line 663
    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    const-string/jumbo v3, "mCurrentValues:"

    .line 667
    .line 668
    .line 669
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 673
    .line 674
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    const-string v3, "BatteryFirstUseDate"

    .line 686
    .line 687
    invoke-static {v0, v3, v2}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    iget-object v0, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 691
    .line 692
    check-cast v0, [Ljava/lang/String;

    .line 693
    .line 694
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    new-instance v2, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;

    .line 699
    .line 700
    invoke-direct {v2, v1, v4}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 701
    .line 702
    .line 703
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 704
    .line 705
    .line 706
    move-result v3

    .line 707
    goto :goto_c

    .line 708
    :cond_13
    const-string v0, "[updateDate]fail - no date for compare"

    .line 709
    .line 710
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .line 712
    .line 713
    :cond_14
    :goto_c
    if-eqz v3, :cond_15

    .line 714
    .line 715
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 716
    .line 717
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 718
    .line 719
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterFudReceiver()V

    .line 720
    .line 721
    .line 722
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 725
    .line 726
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 727
    .line 728
    const-string v1, "[updateDateRunnable]disable writeFirstUseDateReceiver"

    .line 729
    .line 730
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 734
    .line 735
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 736
    .line 737
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 738
    .line 739
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 740
    .line 741
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 742
    .line 743
    .line 744
    goto :goto_d

    .line 745
    :cond_15
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 746
    .line 747
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 748
    .line 749
    iget-object v1, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 750
    .line 751
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 752
    .line 753
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 754
    .line 755
    .line 756
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 757
    .line 758
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 759
    .line 760
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 761
    .line 762
    const-wide/32 v1, 0xafc8

    .line 763
    .line 764
    .line 765
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 766
    .line 767
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 768
    .line 769
    .line 770
    :goto_d
    return-void

    .line 771
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 772
    .line 773
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 774
    .line 775
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 776
    .line 777
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 778
    .line 779
    .line 780
    return-void

    .line 781
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
