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

    .line 3
    iput-object p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const-string v0, "/data/log/battery_service/battery_service_main_history"

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "[SS]BattUtils"

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget v5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->$r8$classId:I

    .line 10
    packed-switch v5, :pswitch_data_0

    .line 13
    iget-object v5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 15
    check-cast v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 17
    iget-object v5, v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 19
    invoke-virtual {v5}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 22
    move-result-object v6

    .line 23
    iput-object v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 25
    move v6, v3

    .line 26
    :goto_0
    iget v7, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 28
    iget-object v8, v5, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 30
    iget-object v9, v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 32
    if-ge v6, v7, :cond_4

    .line 34
    aget-boolean v7, v9, v6

    .line 36
    if-nez v7, :cond_0

    .line 38
    goto/16 :goto_2

    .line 40
    :cond_0
    iget-object v7, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 42
    check-cast v7, [Ljava/lang/String;

    .line 44
    aget-object v7, v7, v6

    .line 46
    sget-object v10, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 48
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    move-result-object v10

    .line 52
    sget-object v11, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 54
    invoke-static {v10, v11}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

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

    .line 62
    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    move-object v10, v1

    .line 69
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 71
    const-string v12, "[convertDateStringToLocalDate]dateString:"

    .line 73
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v7, " -> date"

    .line 81
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v7

    .line 91
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-nez v10, :cond_1

    .line 96
    goto :goto_2

    .line 97
    :cond_1
    const-wide/16 v11, 0xe

    .line 99
    invoke-virtual {v10, v11, v12}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    .line 102
    move-result-object v7

    .line 103
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 106
    move-result-object v10

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    .line 109
    const-string v12, "[checkFaiExpired]batteryIndex:"

    .line 111
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v12, " ,currentDate:"

    .line 119
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v12, " ,thresholdDate:"

    .line 127
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v11

    .line 137
    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v10, v7}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_2

    .line 146
    goto :goto_2

    .line 147
    :cond_2
    iget-object v7, v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Ljava/lang/String;

    .line 155
    const-string v10, "1"

    .line 157
    invoke-static {v7, v10}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_3

    .line 163
    const-string v7, "[checkFaiExpired]FaiExpired Write Success"

    .line 165
    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    aput-boolean v3, v9, v6

    .line 170
    :cond_3
    :goto_2
    add-int/2addr v6, v4

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    const-string v2, "[checkFaiExpired]shouldCheckFaiExpireds:"

    .line 177
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v2, "shouldCheckFaiExpireds:"

    .line 199
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    const-string/jumbo v2, "checkFaiExpired"

    .line 216
    invoke-static {v0, v2, v1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    array-length v0, v9

    .line 220
    invoke-static {v3, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 223
    move-result-object v0

    .line 224
    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;

    .line 226
    invoke-direct {v1, v5, v4}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 229
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    .line 232
    move-result v0

    .line 233
    xor-int/2addr v0, v4

    .line 234
    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 238
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 240
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 242
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterDateChangedReceiver()V

    .line 245
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 247
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 249
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 251
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 253
    const-string v0, "[DateChangedReceiver_Handler]disable dateChangedReceiver"

    .line 255
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_5
    return-void

    .line 259
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 261
    check-cast v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 263
    const-string v5, ""

    .line 265
    iget-object v6, v1, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 267
    const-string v7, "[updateDate]"

    .line 269
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :try_start_1
    iget-object v7, v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 277
    move-result-object v7

    .line 278
    const-string/jumbo v8, "device_provisioned"

    .line 281
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 284
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    if-ne v7, v4, :cond_6

    .line 287
    move v7, v4

    .line 288
    goto :goto_3

    .line 289
    :catch_1
    move-exception v7

    .line 290
    const-string v8, "[isSetupWizardCompleted]Exception"

    .line 292
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :cond_6
    move v7, v3

    .line 299
    :goto_3
    const-string v8, "[isSetupWizardCompleted]result:"

    .line 301
    invoke-static {v8, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 304
    if-nez v7, :cond_7

    .line 306
    goto/16 :goto_c

    .line 308
    :cond_7
    :try_start_2
    const-string/jumbo v7, "persist.sys.setupwizard.user_setup_complete"

    .line 311
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

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

    .line 319
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    move v7, v3

    .line 326
    :goto_4
    const-string v8, "[isSetupWizardCompletedByUser]result:"

    .line 328
    invoke-static {v8, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 331
    if-nez v7, :cond_8

    .line 333
    goto/16 :goto_c

    .line 335
    :cond_8
    :try_start_3
    const-string/jumbo v7, "persist.sys.setupwizard.jig_on_wifisetup"

    .line 338
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 341
    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 342
    if-ne v7, v4, :cond_9

    .line 344
    move v7, v4

    .line 345
    goto :goto_5

    .line 346
    :catch_3
    move-exception v7

    .line 347
    const-string v8, "[isSetupWizardSkipWifi]Exception"

    .line 349
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 355
    :cond_9
    move v7, v3

    .line 356
    :goto_5
    const-string v8, "[isSetupWizardSkipWifi]result:"

    .line 358
    invoke-static {v8, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 361
    if-eqz v7, :cond_a

    .line 363
    goto/16 :goto_c

    .line 365
    :cond_a
    sget-object v7, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 367
    const-string v7, "[getCurrentNetworkDateStr]networkTimeMillis:"

    .line 369
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeMillis()J

    .line 372
    move-result-wide v8

    .line 373
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 376
    move-result-object v10

    .line 377
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 380
    move-result-object v11

    .line 381
    invoke-virtual {v10, v11}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 384
    move-result-object v10

    .line 385
    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    .line 388
    move-result-object v10

    .line 389
    new-instance v11, Ljava/lang/StringBuilder;

    .line 391
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 397
    const-string v7, " -> dateTime"

    .line 399
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    move-result-object v7

    .line 409
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v7, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 414
    invoke-virtual {v10, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

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

    .line 422
    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    move-object v2, v5

    .line 429
    :goto_6
    const-string v7, "[updateDate]strCurrentDate:"

    .line 431
    invoke-static {v7, v2, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    if-eqz v2, :cond_14

    .line 436
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 439
    move-result v7

    .line 440
    const/16 v8, 0x8

    .line 442
    if-eq v7, v8, :cond_b

    .line 444
    goto/16 :goto_c

    .line 446
    :cond_b
    const-string/jumbo v7, "ril.rfcal_date"

    .line 449
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    move-result-object v7

    .line 453
    if-eqz v7, :cond_c

    .line 455
    const-string v9, "."

    .line 457
    invoke-virtual {v7, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 460
    move-result-object v7

    .line 461
    :cond_c
    const-string/jumbo v5, "ril.manufacturedate"

    .line 464
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    move-result-object v5

    .line 468
    const-string v9, "[updateDate]strRfCalDate:"

    .line 470
    const-string v10, " ,strManufactureDate:"

    .line 472
    invoke-static {v9, v7, v10, v5, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    if-eqz v7, :cond_d

    .line 477
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 480
    move-result v9

    .line 481
    if-ne v9, v8, :cond_d

    .line 483
    goto :goto_7

    .line 484
    :cond_d
    if-eqz v5, :cond_13

    .line 486
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 489
    move-result v7

    .line 490
    if-ne v7, v8, :cond_13

    .line 492
    move-object v7, v5

    .line 493
    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 496
    move-result v2

    .line 497
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 500
    move-result v5

    .line 501
    const-string v7, "[updateDate]currentDateInt:"

    .line 503
    const-string v8, " ,refDate:"

    .line 505
    invoke-static {v2, v5, v7, v8, v6}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    if-le v5, v2, :cond_e

    .line 510
    goto/16 :goto_c

    .line 512
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 515
    move-result-object v5

    .line 516
    iput-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 518
    :goto_8
    iget v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 520
    if-ge v3, v5, :cond_12

    .line 522
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 524
    check-cast v5, [Ljava/lang/String;

    .line 526
    aget-object v5, v5, v3

    .line 528
    invoke-static {v5}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->isValidDate(Ljava/lang/String;)Z

    .line 531
    move-result v5

    .line 532
    if-eqz v5, :cond_f

    .line 534
    goto :goto_b

    .line 535
    :cond_f
    :try_start_5
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 537
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 540
    move-result-object v5

    .line 541
    check-cast v5, Ljava/lang/String;

    .line 543
    int-to-long v7, v2

    .line 544
    invoke-static {v7, v8, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 547
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 549
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 552
    move-result v5

    .line 553
    if-nez v5, :cond_11

    .line 555
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 557
    aget-boolean v5, v5, v3

    .line 559
    if-eqz v5, :cond_10

    .line 561
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 563
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 566
    move-result-object v5

    .line 567
    check-cast v5, Ljava/lang/String;

    .line 569
    invoke-static {v7, v8, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

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

    .line 577
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    const-string v7, "[updateDate]Authentification false => skip writing firstusedate_"

    .line 582
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    move-result-object v5

    .line 592
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_11
    :goto_9
    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 597
    check-cast v5, [Ljava/lang/String;

    .line 599
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 602
    move-result-object v7

    .line 603
    aput-object v7, v5, v3

    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    .line 607
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    const-string v7, "[updateDate]write FirstUseDate:"

    .line 612
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    move-result-object v5

    .line 622
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 625
    goto :goto_b

    .line 626
    :goto_a
    const-string v7, "NumberFormatException"

    .line 628
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 634
    :goto_b
    add-int/2addr v3, v4

    .line 635
    goto :goto_8

    .line 636
    :cond_12
    const/16 v2, 0x3e8

    .line 638
    invoke-virtual {v1, v2}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    .line 643
    const-string v3, "[updateDate]mCurrentValues:"

    .line 645
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 650
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 653
    move-result-object v3

    .line 654
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    move-result-object v2

    .line 661
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    .line 666
    const-string/jumbo v3, "mCurrentValues:"

    .line 669
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 674
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 677
    move-result-object v3

    .line 678
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    move-result-object v2

    .line 685
    const-string v3, "BatteryFirstUseDate"

    .line 687
    invoke-static {v0, v3, v2}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, v1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 692
    check-cast v0, [Ljava/lang/String;

    .line 694
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 697
    move-result-object v0

    .line 698
    new-instance v2, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;

    .line 700
    invoke-direct {v2, v1, v4}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 703
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 706
    move-result v3

    .line 707
    goto :goto_c

    .line 708
    :cond_13
    const-string v0, "[updateDate]fail - no date for compare"

    .line 710
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_14
    :goto_c
    if-eqz v3, :cond_15

    .line 715
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 717
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 719
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterFudReceiver()V

    .line 722
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 724
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 726
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 728
    const-string v1, "[updateDateRunnable]disable writeFirstUseDateReceiver"

    .line 730
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 735
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 737
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 739
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 741
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 744
    goto :goto_d

    .line 745
    :cond_15
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 747
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 749
    iget-object v1, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 751
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 753
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 756
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 758
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 760
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 762
    const-wide/32 v1, 0xafc8

    .line 765
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 767
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 770
    :goto_d
    return-void

    .line 771
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 773
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 775
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 777
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 780
    return-void

    .line 781
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
