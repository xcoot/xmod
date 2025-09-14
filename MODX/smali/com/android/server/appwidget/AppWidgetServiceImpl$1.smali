.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    const/16 v2, 0x8

    .line 7
    const/4 v3, 0x5

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, -0x1

    .line 11
    const/4 v7, 0x1

    .line 12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    move-result-object v8

    .line 16
    const-string v9, "android.intent.extra.user_handle"

    .line 18
    const/16 v10, -0x2710

    .line 20
    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    move-result v9

    .line 24
    if-nez v8, :cond_0

    .line 26
    const-string v0, "AppWidgetServiceImpl"

    .line 28
    const-string v1, "action is null"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void

    .line 34
    :cond_0
    sget-boolean v10, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 36
    if-eqz v10, :cond_1

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 41
    move-result-object v11

    .line 42
    const-string v12, "AppWidgetServiceImpl"

    .line 44
    const-string v13, "Received broadcast: "

    .line 46
    const-string v14, " on user "

    .line 48
    const-string v15, " pkg:"

    .line 50
    invoke-static {v9, v13, v8, v14, v15}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v13

    .line 54
    invoke-static {v13, v11, v12}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    const/4 v11, 0x0

    .line 58
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 61
    move-result v12

    .line 62
    sparse-switch v12, :sswitch_data_0

    .line 65
    :goto_0
    move v8, v6

    .line 66
    goto/16 :goto_1

    .line 68
    :sswitch_0
    const-string v12, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 70
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v8

    .line 74
    if-nez v8, :cond_2

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/16 v8, 0xa

    .line 79
    goto/16 :goto_1

    .line 81
    :sswitch_1
    const-string v12, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 83
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v8

    .line 87
    if-nez v8, :cond_3

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const/16 v8, 0x9

    .line 92
    goto/16 :goto_1

    .line 94
    :sswitch_2
    const-string v12, "android.intent.action.PACKAGE_UNSTOPPED"

    .line 96
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v8

    .line 100
    if-nez v8, :cond_4

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    move v8, v2

    .line 104
    goto/16 :goto_1

    .line 106
    :sswitch_3
    const-string v12, "android.intent.action.TIME_SET"

    .line 108
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v8

    .line 112
    if-nez v8, :cond_5

    .line 114
    goto :goto_0

    .line 115
    :cond_5
    const/4 v8, 0x7

    .line 116
    goto :goto_1

    .line 117
    :sswitch_4
    const-string v12, "android.intent.action.TIMEZONE_CHANGED"

    .line 119
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v8

    .line 123
    if-nez v8, :cond_6

    .line 125
    goto :goto_0

    .line 126
    :cond_6
    const/4 v8, 0x6

    .line 127
    goto :goto_1

    .line 128
    :sswitch_5
    const-string v12, "android.intent.action.CONFIGURATION_CHANGED"

    .line 130
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v8

    .line 134
    if-nez v8, :cond_7

    .line 136
    goto :goto_0

    .line 137
    :cond_7
    move v8, v3

    .line 138
    goto :goto_1

    .line 139
    :sswitch_6
    const-string/jumbo v12, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 142
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v8

    .line 146
    if-nez v8, :cond_8

    .line 148
    goto :goto_0

    .line 149
    :cond_8
    const/4 v8, 0x4

    .line 150
    goto :goto_1

    .line 151
    :sswitch_7
    const-string v12, "android.intent.action.PACKAGE_RESTARTED"

    .line 153
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v8

    .line 157
    if-nez v8, :cond_9

    .line 159
    goto :goto_0

    .line 160
    :cond_9
    const/4 v8, 0x3

    .line 161
    goto :goto_1

    .line 162
    :sswitch_8
    const-string v12, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 164
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    move-result v8

    .line 168
    if-nez v8, :cond_a

    .line 170
    goto :goto_0

    .line 171
    :cond_a
    move v8, v4

    .line 172
    goto :goto_1

    .line 173
    :sswitch_9
    const-string v12, "android.intent.action.PACKAGES_SUSPENDED"

    .line 175
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v8

    .line 179
    if-nez v8, :cond_b

    .line 181
    goto :goto_0

    .line 182
    :cond_b
    move v8, v7

    .line 183
    goto :goto_1

    .line 184
    :sswitch_a
    const-string v12, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 186
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v8

    .line 190
    if-nez v8, :cond_c

    .line 192
    goto :goto_0

    .line 193
    :cond_c
    move v8, v5

    .line 194
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 197
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 202
    move-result v0

    .line 203
    invoke-static {v2, v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 206
    goto/16 :goto_f

    .line 208
    :pswitch_0
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 213
    move-result v3

    .line 214
    invoke-static {v2, v1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 217
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 222
    move-result v0

    .line 223
    invoke-static {v2, v1, v5, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mupdateWidgetPackageSuspensionMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    .line 226
    goto/16 :goto_f

    .line 228
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 236
    invoke-virtual {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resetPreviewRecord(I)V

    .line 239
    goto/16 :goto_f

    .line 241
    :pswitch_2
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 249
    invoke-virtual {v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resetPreviewRecord(I)V

    .line 252
    goto/16 :goto_f

    .line 254
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 256
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 265
    move-result-object v1

    .line 266
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 269
    move-result-object v3

    .line 270
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 272
    if-eqz v8, :cond_e

    .line 274
    if-eqz v3, :cond_e

    .line 276
    invoke-virtual {v8, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 279
    move-result v8

    .line 280
    if-nez v8, :cond_d

    .line 282
    goto :goto_2

    .line 283
    :cond_d
    move v3, v5

    .line 284
    goto :goto_3

    .line 285
    :cond_e
    :goto_2
    iput-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 287
    move v3, v7

    .line 288
    :goto_3
    if-eqz v3, :cond_10

    .line 290
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 292
    if-eqz v8, :cond_10

    .line 294
    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 296
    check-cast v8, Landroid/util/ArrayMap;

    .line 298
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 301
    move-result-object v8

    .line 302
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 305
    move-result-object v8

    .line 306
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    move-result v9

    .line 310
    if-eqz v9, :cond_f

    .line 312
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    move-result-object v9

    .line 316
    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 321
    move-result-wide v12

    .line 322
    iput v5, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 324
    iput-wide v12, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 326
    goto :goto_4

    .line 327
    :cond_f
    const-string v8, "AppWidgetServiceImpl"

    .line 329
    const-string v9, "Template widget preview\'s records are cleared because of locale changed."

    .line 331
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_10
    iget v8, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 336
    iget v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mScreenDensity:I

    .line 338
    if-eq v8, v9, :cond_11

    .line 340
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 342
    invoke-virtual {v8}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    .line 345
    move-result-object v8

    .line 346
    new-instance v9, Landroid/graphics/Point;

    .line 348
    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 351
    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 354
    iget v8, v9, Landroid/graphics/Point;->x:I

    .line 356
    mul-int/2addr v8, v2

    .line 357
    iget v2, v9, Landroid/graphics/Point;->y:I

    .line 359
    mul-int/2addr v8, v2

    .line 360
    iput v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 362
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 364
    iput v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mScreenDensity:I

    .line 366
    move v1, v7

    .line 367
    goto :goto_5

    .line 368
    :cond_11
    move v1, v5

    .line 369
    :goto_5
    if-nez v3, :cond_12

    .line 371
    if-eqz v1, :cond_2a

    .line 373
    :cond_12
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 375
    monitor-enter v2

    .line 376
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 378
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 380
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    new-instance v8, Ljava/util/HashSet;

    .line 385
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 388
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 391
    move-result v9

    .line 392
    sub-int/2addr v9, v7

    .line 393
    move v12, v6

    .line 394
    move-object v10, v11

    .line 395
    :goto_6
    if-ltz v9, :cond_1b

    .line 397
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 400
    move-result-object v13

    .line 401
    check-cast v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 403
    if-nez v13, :cond_13

    .line 405
    const-string v13, "AppWidgetServiceImpl"

    .line 407
    new-instance v14, Ljava/lang/StringBuilder;

    .line 409
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    const-string/jumbo v15, "onConfigurationChanged installedProviders is null skip index: "

    .line 415
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    move-result-object v14

    .line 425
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    goto/16 :goto_7

    .line 430
    :catchall_0
    move-exception v0

    .line 431
    goto/16 :goto_9

    .line 433
    :cond_13
    iget-object v14, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 435
    if-eqz v1, :cond_14

    .line 437
    if-eqz v14, :cond_14

    .line 439
    iget v14, v14, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 441
    and-int/2addr v14, v4

    .line 442
    if-eqz v14, :cond_14

    .line 444
    goto :goto_7

    .line 445
    :cond_14
    invoke-virtual {v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 448
    move-result v14

    .line 449
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 451
    invoke-virtual {v15, v14}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 454
    move-result v15

    .line 455
    if-eqz v15, :cond_1a

    .line 457
    invoke-virtual {v0, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    .line 460
    move-result v15

    .line 461
    if-eqz v15, :cond_15

    .line 463
    goto :goto_7

    .line 464
    :cond_15
    invoke-virtual {v0, v14, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 467
    iget-object v14, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 469
    invoke-virtual {v8, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 472
    move-result v14

    .line 473
    if-nez v14, :cond_1a

    .line 475
    iget-object v14, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 477
    iget-object v14, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 479
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 482
    move-result-object v14

    .line 483
    invoke-virtual {v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 486
    move-result v15

    .line 487
    if-ne v15, v12, :cond_16

    .line 489
    if-eqz v14, :cond_16

    .line 491
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    move-result v16

    .line 495
    if-eqz v16, :cond_16

    .line 497
    goto :goto_7

    .line 498
    :cond_16
    invoke-virtual {v0, v14, v8, v15, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    .line 501
    move-result v10

    .line 502
    if-eqz v10, :cond_19

    .line 504
    if-nez v11, :cond_17

    .line 506
    new-instance v11, Landroid/util/SparseIntArray;

    .line 508
    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    .line 511
    :cond_17
    iget-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 513
    invoke-virtual {v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 516
    move-result v12

    .line 517
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 519
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 521
    invoke-virtual {v10, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    .line 524
    move-result v10

    .line 525
    const/16 v13, -0xa

    .line 527
    if-eq v10, v13, :cond_18

    .line 529
    move v12, v10

    .line 530
    :cond_18
    invoke-virtual {v11, v12, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 533
    :cond_19
    move-object v10, v14

    .line 534
    move v12, v15

    .line 535
    :cond_1a
    :goto_7
    add-int/2addr v9, v6

    .line 536
    goto/16 :goto_6

    .line 538
    :cond_1b
    if-eqz v11, :cond_1c

    .line 540
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    .line 543
    move-result v1

    .line 544
    :goto_8
    if-ge v5, v1, :cond_1c

    .line 546
    invoke-virtual {v11, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 549
    move-result v3

    .line 550
    invoke-virtual {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 553
    add-int/2addr v5, v7

    .line 554
    goto :goto_8

    .line 555
    :cond_1c
    monitor-exit v2

    .line 556
    goto/16 :goto_f

    .line 558
    :goto_9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    throw v0

    .line 560
    :pswitch_4
    const-string/jumbo v2, "reason"

    .line 563
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 566
    move-result v1

    .line 567
    if-ne v1, v3, :cond_2a

    .line 569
    const-string v1, "AppWidgetServiceImpl"

    .line 571
    const-string/jumbo v2, "call onEmergencyModeDisabled"

    .line 574
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :try_start_1
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 579
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monEmergencyModeDisabled(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 582
    goto/16 :goto_f

    .line 584
    :catch_0
    move-exception v0

    .line 585
    const-string v1, "AppWidgetServiceImpl"

    .line 587
    const-string/jumbo v2, "excepion "

    .line 590
    invoke-static {v0, v2, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    goto/16 :goto_f

    .line 595
    :pswitch_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->stayStopped()Z

    .line 598
    move-result v2

    .line 599
    if-nez v2, :cond_1d

    .line 601
    return-void

    .line 602
    :cond_1d
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 604
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    const-string v2, "android.intent.extra.UID"

    .line 609
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 612
    move-result v2

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 616
    move-result-object v1

    .line 617
    if-eq v2, v6, :cond_2a

    .line 619
    if-nez v1, :cond_1e

    .line 621
    goto/16 :goto_f

    .line 623
    :cond_1e
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 626
    move-result-object v1

    .line 627
    if-nez v1, :cond_1f

    .line 629
    goto/16 :goto_f

    .line 631
    :cond_1f
    :try_start_2
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 633
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 636
    move-result v4

    .line 637
    invoke-interface {v3, v1, v4}, Landroid/content/pm/IPackageManager;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    .line 640
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 641
    if-eqz v10, :cond_20

    .line 643
    const-string v4, "AppWidgetServiceImpl"

    .line 645
    const-string v6, "Updating package stopped masked state for uid "

    .line 647
    const-string v8, " package "

    .line 649
    const-string v9, " isStopped "

    .line 651
    invoke-static {v2, v6, v8, v1, v9}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    move-result-object v6

    .line 655
    invoke-static {v4, v6, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 658
    :cond_20
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 660
    monitor-enter v4

    .line 661
    :try_start_3
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 663
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 666
    move-result v6

    .line 667
    move v8, v5

    .line 668
    :goto_a
    if-ge v8, v6, :cond_29

    .line 670
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 672
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 675
    move-result-object v9

    .line 676
    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 678
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 680
    iget v12, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 682
    if-ne v2, v12, :cond_28

    .line 684
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 686
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 689
    move-result-object v10

    .line 690
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 693
    move-result v10

    .line 694
    if-nez v10, :cond_21

    .line 696
    goto/16 :goto_d

    .line 698
    :cond_21
    iget-boolean v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 700
    iput-boolean v3, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 702
    if-eq v3, v10, :cond_28

    .line 704
    invoke-virtual {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    .line 707
    move-result v10

    .line 708
    if-eqz v10, :cond_22

    .line 710
    invoke-virtual {v0, v9, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 713
    invoke-virtual {v0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 716
    goto/16 :goto_d

    .line 718
    :catchall_1
    move-exception v0

    .line 719
    goto/16 :goto_e

    .line 721
    :cond_22
    invoke-virtual {v0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 724
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 726
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 729
    move-result v10

    .line 730
    if-lez v10, :cond_24

    .line 732
    new-array v12, v10, [I

    .line 734
    move v13, v5

    .line 735
    :goto_b
    if-ge v13, v10, :cond_23

    .line 737
    iget-object v14, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 739
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 742
    move-result-object v14

    .line 743
    check-cast v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 745
    iget v14, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 747
    aput v14, v12, v13

    .line 749
    add-int/2addr v13, v7

    .line 750
    goto :goto_b

    .line 751
    :cond_23
    invoke-virtual {v0, v9, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 754
    invoke-virtual {v0, v9, v12, v5, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[IZZ)V

    .line 757
    :cond_24
    iget-object v12, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 759
    invoke-virtual {v12}, Landroid/util/IntArray;->size()I

    .line 762
    move-result v12

    .line 763
    if-lez v12, :cond_28

    .line 765
    sget-boolean v13, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 767
    if-eqz v13, :cond_25

    .line 769
    const-string v13, "AppWidgetServiceImpl"

    .line 771
    new-instance v14, Ljava/lang/StringBuilder;

    .line 773
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    const-string v15, "Sending missed deleted broadcasts for "

    .line 778
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    iget-object v15, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 783
    iget-object v15, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 785
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 788
    const-string v15, " "

    .line 790
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    iget-object v15, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 795
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 801
    move-result-object v14

    .line 802
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_25
    move v13, v5

    .line 806
    :goto_c
    if-ge v13, v12, :cond_26

    .line 808
    iget-object v14, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 810
    iget-object v15, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 812
    iget v14, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 814
    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 817
    move-result-object v14

    .line 818
    iget-object v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 820
    invoke-virtual {v11, v13}, Landroid/util/IntArray;->get(I)I

    .line 823
    move-result v11

    .line 824
    new-instance v7, Landroid/content/Intent;

    .line 826
    const-string v5, "android.appwidget.action.APPWIDGET_DELETED"

    .line 828
    invoke-direct {v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    const/high16 v5, 0x10000000

    .line 833
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 836
    invoke-virtual {v7, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 839
    const-string v5, "appWidgetId"

    .line 841
    invoke-virtual {v7, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    const/4 v5, 0x0

    .line 845
    invoke-virtual {v0, v7, v14, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 848
    const/4 v7, 0x1

    .line 849
    add-int/2addr v13, v7

    .line 850
    const/4 v11, 0x0

    .line 851
    goto :goto_c

    .line 852
    :cond_26
    iget-object v7, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 854
    invoke-virtual {v7}, Landroid/util/IntArray;->clear()V

    .line 857
    if-nez v10, :cond_27

    .line 859
    invoke-virtual {v0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 862
    :cond_27
    iget-object v7, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 864
    iget v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 866
    invoke-static {v7}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 869
    move-result-object v7

    .line 870
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 873
    move-result v7

    .line 874
    invoke-virtual {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 877
    const/4 v7, 0x1

    .line 878
    :cond_28
    :goto_d
    add-int/2addr v8, v7

    .line 879
    const/4 v11, 0x0

    .line 880
    goto/16 :goto_a

    .line 882
    :cond_29
    monitor-exit v4

    .line 883
    goto :goto_f

    .line 884
    :goto_e
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 885
    throw v0

    .line 886
    :catch_1
    move-exception v0

    .line 887
    const-string v1, "AppWidgetServiceImpl"

    .line 889
    const-string v2, "Failed to query package stopped state"

    .line 891
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    goto :goto_f

    .line 895
    :pswitch_6
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 897
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 900
    move-result v3

    .line 901
    invoke-static {v2, v1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 904
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 906
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 909
    move-result v0

    .line 910
    const/4 v3, 0x1

    .line 911
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mupdateWidgetPackageSuspensionMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    .line 914
    goto :goto_f

    .line 915
    :pswitch_7
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 917
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 919
    monitor-enter v1

    .line 920
    :try_start_4
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 922
    invoke-virtual {v0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 925
    monitor-exit v1

    .line 926
    :cond_2a
    :goto_f
    return-void

    .line 927
    :catchall_2
    move-exception v0

    .line 928
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 929
    throw v0

    .line 930
    nop

    .line 931
    :sswitch_data_0
    .sparse-switch
        -0x49d08e2b -> :sswitch_a
        -0x3bb3e592 -> :sswitch_9
        -0x33813a72 -> :sswitch_8
        -0x2d2ad030 -> :sswitch_7
        -0x8cbe44f -> :sswitch_6
        0x9780086 -> :sswitch_5
        0x1df32313 -> :sswitch_4
        0x1e1f7f95 -> :sswitch_3
        0x375161f6 -> :sswitch_2
        0x4cef8b35 -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch

    .line 977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
