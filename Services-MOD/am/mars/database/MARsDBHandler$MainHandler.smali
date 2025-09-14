.class public final Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final m:Lcom/android/server/am/mars/database/MARsDBManager;

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 3
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 5
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 10
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 7
    const/16 v3, 0xc

    .line 9
    const/16 v4, 0x8

    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    packed-switch v2, :pswitch_data_0

    .line 18
    goto/16 :goto_29

    .line 20
    :pswitch_0
    sget-boolean v1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 22
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 24
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 26
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->updateResetTime()V

    .line 29
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 31
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 33
    if-nez v1, :cond_0

    .line 35
    goto/16 :goto_29

    .line 37
    :cond_0
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 40
    move-result-object v1

    .line 41
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 43
    const-wide/32 v2, 0x2932e00

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 49
    goto/16 :goto_29

    .line 51
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 58
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    move-result-object v0

    .line 67
    sget-object v2, Lcom/android/server/am/mars/database/MARsTableContract;->SCPM_AUTHORITY_URI:Landroid/net/Uri;

    .line 69
    const-string/jumbo v3, "dc_scpm_mars_app_freeze_settings"

    .line 72
    invoke-virtual {v0, v2, v3, v6, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 75
    move-result-object v0

    .line 76
    const-string/jumbo v1, "result"

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_49

    .line 85
    const-string v1, "app_freeze_settings_json"

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    sget-boolean v1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 93
    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 95
    sget-object v1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 97
    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController;->setFreecessPolicyFromSCPM(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto/16 :goto_29

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string/jumbo v1, "getSCPMPolicyForFreecess not available : "

    .line 106
    const-string v2, "MARsDBManager"

    .line 108
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    goto/16 :goto_29

    .line 113
    :pswitch_2
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 115
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSCPMList()V

    .line 118
    goto/16 :goto_29

    .line 120
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 122
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    .line 125
    move-result v1

    .line 126
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 128
    if-nez v2, :cond_1

    .line 130
    goto/16 :goto_29

    .line 132
    :cond_1
    if-eqz v1, :cond_5

    .line 134
    const-string v1, "MARsDBManager"

    .line 136
    const-string/jumbo v12, "key=?"

    .line 139
    const-string/jumbo v2, "restriction_flag"

    .line 142
    filled-new-array {v2}, [Ljava/lang/String;

    .line 145
    move-result-object v13

    .line 146
    const-string/jumbo v2, "value"

    .line 149
    filled-new-array {v2}, [Ljava/lang/String;

    .line 152
    move-result-object v11

    .line 153
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 158
    move-result-object v9

    .line 159
    sget-object v10, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    .line 161
    const/4 v14, 0x0

    .line 162
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 165
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "Exception with contentResolver : "

    .line 172
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v2

    .line 186
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    :goto_0
    if-eqz v6, :cond_4

    .line 194
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_3

    .line 200
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_2

    .line 206
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 213
    goto :goto_1

    .line 214
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 217
    goto :goto_2

    .line 218
    :cond_4
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 220
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 222
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getRestrictionFlag()I

    .line 228
    const-string/jumbo v0, "getRestrictionFlagFromDB error, no database!!"

    .line 231
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    goto :goto_2

    .line 235
    :cond_5
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getRestrictionFlag()I

    .line 243
    :goto_2
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 245
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 247
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    sget-object v0, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    .line 254
    iget-boolean v1, v0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z

    .line 256
    if-eqz v1, :cond_6

    .line 258
    goto/16 :goto_29

    .line 260
    :cond_6
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    .line 262
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 265
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 267
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 272
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const/16 v2, 0x3e8

    .line 277
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 280
    iget-object v2, v0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 282
    iget-object v3, v0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiverForBird:Lcom/android/server/am/FreecessTrigger$2;

    .line 284
    invoke-virtual {v2, v3, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 287
    iput-boolean v8, v0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 289
    goto/16 :goto_29

    .line 291
    :catch_2
    move-exception v0

    .line 292
    const-string/jumbo v1, "exception registerReceiverForBird "

    .line 295
    const-string v2, "FreecessTrigger"

    .line 297
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    goto/16 :goto_29

    .line 302
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 304
    const-string/jumbo v1, "doMigration send MARS_REQUEST_MIGRATE"

    .line 307
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    const-string v2, "MARsDBManager"

    .line 312
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 317
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 320
    move-result-object v1

    .line 321
    if-eqz v1, :cond_49

    .line 323
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 325
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 328
    move-result-object v0

    .line 329
    sget-object v1, Lcom/android/server/am/mars/database/FASTableContract;->DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

    .line 331
    const-string v3, "FasDataMigration"

    .line 333
    invoke-virtual {v0, v1, v3, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 336
    goto/16 :goto_29

    .line 338
    :catch_3
    move-exception v0

    .line 339
    const-string v1, "Error on migrateFasData e = "

    .line 341
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    goto/16 :goto_29

    .line 346
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 349
    move-result-object v1

    .line 350
    if-nez v1, :cond_7

    .line 352
    goto/16 :goto_29

    .line 354
    :cond_7
    const-string/jumbo v2, "userId"

    .line 357
    const/4 v3, -0x1

    .line 358
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 361
    move-result v1

    .line 362
    new-instance v2, Landroid/os/UserHandle;

    .line 364
    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 367
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 369
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    :try_start_4
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 374
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 377
    move-result-object v3

    .line 378
    invoke-virtual {v1, v3, v7, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 381
    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 382
    goto :goto_3

    .line 383
    :catch_4
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 385
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 387
    const-string/jumbo v2, "mContext.id = "

    .line 390
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 396
    move-result v2

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    move-result-object v1

    .line 404
    const-string v2, "MARsDBHandler"

    .line 406
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V

    .line 412
    goto/16 :goto_29

    .line 414
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 417
    move-result-object v1

    .line 418
    const-string/jumbo v2, "onCreate"

    .line 421
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 424
    move-result v2

    .line 425
    const-string/jumbo v3, "onUpgrade"

    .line 428
    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 431
    move-result v3

    .line 432
    const-string/jumbo v5, "onInit"

    .line 435
    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 438
    move-result v1

    .line 439
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 441
    if-eqz v5, :cond_8

    .line 443
    const-string v5, "MARsDBHandler"

    .line 445
    const-string v6, "Received MARS_DB_SM_CHANGED_MSG, --mDBCreate = "

    .line 447
    const-string v9, " --onUpgrade = "

    .line 449
    const-string v10, " --onInit = "

    .line 451
    invoke-static {v6, v2, v9, v3, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    move-result-object v6

    .line 455
    invoke-static {v5, v6, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 458
    :cond_8
    if-eqz v1, :cond_9

    .line 460
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->cancelAllPolicy()V

    .line 463
    iget-object v5, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 465
    invoke-virtual {v5, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    .line 468
    :cond_9
    if-nez v3, :cond_a

    .line 470
    if-eqz v1, :cond_d

    .line 472
    :cond_a
    sget-boolean v5, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 474
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 476
    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 478
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 483
    monitor-enter v9

    .line 484
    :try_start_5
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 486
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 488
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 491
    move-result v6

    .line 492
    if-lez v6, :cond_b

    .line 494
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 496
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 498
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 501
    goto :goto_4

    .line 502
    :catchall_0
    move-exception v0

    .line 503
    goto/16 :goto_8

    .line 505
    :cond_b
    :goto_4
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 507
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 509
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 512
    move-result v6

    .line 513
    if-lez v6, :cond_c

    .line 515
    iget-object v5, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 517
    iget-object v5, v5, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 519
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 522
    :cond_c
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 523
    :cond_d
    if-nez v2, :cond_e

    .line 525
    if-nez v3, :cond_e

    .line 527
    if-eqz v1, :cond_11

    .line 529
    :cond_e
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_f

    .line 535
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 537
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 539
    monitor-enter v2

    .line 540
    :try_start_6
    iput-boolean v8, v2, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 542
    monitor-exit v2

    .line 543
    goto :goto_5

    .line 544
    :catchall_1
    move-exception v0

    .line 545
    move-object v1, v0

    .line 546
    monitor-exit v2

    .line 547
    throw v1

    .line 548
    :cond_f
    :goto_5
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 550
    invoke-virtual {v2}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    .line 553
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 555
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    sget-object v3, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    .line 560
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASDataManager;->getFASDataFromDB()Ljava/util/ArrayList;

    .line 563
    move-result-object v3

    .line 564
    if-eqz v3, :cond_10

    .line 566
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 569
    move-result v5

    .line 570
    if-nez v5, :cond_10

    .line 572
    invoke-static {v3}, Lcom/android/server/am/mars/MARsUtils;->updateMARsTargetPackages(Ljava/util/ArrayList;)V

    .line 575
    goto :goto_6

    .line 576
    :cond_10
    const-string v3, "MARsDBManager"

    .line 578
    const-string v5, "Packages database not exist, and not created!!"

    .line 580
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_6
    iget-boolean v3, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 585
    if-nez v3, :cond_11

    .line 587
    new-instance v3, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 589
    iget-object v5, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 591
    monitor-enter v5

    .line 592
    :try_start_7
    iget-object v6, v5, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 594
    monitor-exit v5

    .line 595
    invoke-direct {v3, v2, v6, v7}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;I)V

    .line 598
    iput-object v3, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 600
    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 602
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 605
    move-result-object v3

    .line 606
    sget-object v5, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    .line 608
    iget-object v6, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 610
    iget-object v7, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 612
    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    .line 615
    move-result v7

    .line 616
    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 619
    iput-boolean v8, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 621
    goto :goto_7

    .line 622
    :catchall_2
    move-exception v0

    .line 623
    move-object v1, v0

    .line 624
    monitor-exit v5

    .line 625
    throw v1

    .line 626
    :cond_11
    :goto_7
    if-eqz v1, :cond_49

    .line 628
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 630
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 632
    if-nez v1, :cond_12

    .line 634
    goto/16 :goto_29

    .line 636
    :cond_12
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 639
    move-result v1

    .line 640
    if-eqz v1, :cond_13

    .line 642
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 644
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    :cond_13
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 649
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 652
    move-result-object v1

    .line 653
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 655
    const-wide/16 v2, 0x3e8

    .line 657
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 660
    goto/16 :goto_29

    .line 662
    :goto_8
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 663
    throw v0

    .line 664
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 667
    move-result-object v1

    .line 668
    if-nez v1, :cond_14

    .line 670
    goto/16 :goto_29

    .line 672
    :cond_14
    const-string/jumbo v2, "boot"

    .line 675
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 678
    move-result v1

    .line 679
    const-string v2, "MARsDBManager"

    .line 681
    iget-object v9, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 683
    invoke-virtual {v9}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    .line 686
    move-result v0

    .line 687
    const/4 v11, 0x2

    .line 688
    if-eqz v0, :cond_35

    .line 690
    const-string/jumbo v0, "key"

    .line 693
    const-string/jumbo v12, "value"

    .line 696
    filled-new-array {v0, v12}, [Ljava/lang/String;

    .line 699
    move-result-object v15

    .line 700
    new-instance v12, Ljava/util/ArrayList;

    .line 702
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 705
    :try_start_9
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 707
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 710
    move-result-object v13

    .line 711
    sget-object v14, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    .line 713
    const/16 v18, 0x0

    .line 715
    const/16 v16, 0x0

    .line 717
    const/16 v17, 0x0

    .line 719
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 722
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 723
    goto :goto_9

    .line 724
    :catch_5
    move-exception v0

    .line 725
    const-string/jumbo v13, "initMARsSettingsDefinitionInternal : Exception : "

    .line 728
    invoke-static {v0, v13, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    move-object v0, v6

    .line 732
    :goto_9
    if-eqz v0, :cond_17

    .line 734
    :cond_15
    :goto_a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 737
    move-result v13

    .line 738
    if-eqz v13, :cond_16

    .line 740
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 743
    move-result-object v13

    .line 744
    if-eqz v13, :cond_15

    .line 746
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 749
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 752
    new-instance v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    .line 754
    sget-object v14, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 756
    sget-object v14, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 758
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 764
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    goto :goto_a

    .line 768
    :cond_16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 771
    goto :goto_b

    .line 772
    :cond_17
    const-string/jumbo v0, "initMARsSettingsDefinitionInternal error, no database!!"

    .line 775
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 781
    move-result v0

    .line 782
    if-nez v0, :cond_18

    .line 784
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 786
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    goto :goto_c

    .line 790
    :cond_18
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 795
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    .line 798
    :goto_c
    const-string v12, "bigdataRestriction"

    .line 800
    :try_start_a
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 802
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 805
    move-result-object v13

    .line 806
    sget-object v14, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    .line 808
    filled-new-array {v12}, [Ljava/lang/String;

    .line 811
    move-result-object v15

    .line 812
    const/16 v16, 0x0

    .line 814
    const/16 v17, 0x0

    .line 816
    const/16 v18, 0x0

    .line 818
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 821
    move-result-object v13
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6

    .line 822
    :try_start_b
    iput-boolean v8, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 824
    if-eqz v13, :cond_1a

    .line 826
    :try_start_c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6

    .line 829
    goto :goto_e

    .line 830
    :catchall_3
    move-exception v0

    .line 831
    move-object v14, v0

    .line 832
    if-eqz v13, :cond_19

    .line 834
    :try_start_d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 837
    goto :goto_d

    .line 838
    :catchall_4
    move-exception v0

    .line 839
    move-object v13, v0

    .line 840
    :try_start_e
    invoke-virtual {v14, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 843
    :cond_19
    :goto_d
    throw v14
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6

    .line 844
    :catch_6
    const-string/jumbo v0, "checkBigDataRestrictionColumnExist-sql, catch no column exception!"

    .line 847
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iput-boolean v7, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 852
    goto :goto_e

    .line 853
    :catch_7
    const-string/jumbo v0, "checkBigDataRestrictionColumnExist, catch no column exception!"

    .line 856
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iput-boolean v7, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 861
    :cond_1a
    :goto_e
    iget-boolean v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 863
    const-string/jumbo v13, "policyNum"

    .line 866
    const-string/jumbo v14, "repeatTriggerTime"

    .line 869
    const-string/jumbo v15, "firstTriggerTime"

    .line 872
    const-string/jumbo v16, "killType"

    .line 875
    const-string/jumbo v17, "restriction"

    .line 878
    const-string/jumbo v18, "targetCategory"

    .line 881
    const-string/jumbo v19, "isPolicyEnabled"

    .line 884
    const/4 v6, 0x5

    .line 885
    const/4 v3, 0x3

    .line 886
    const/4 v10, 0x7

    .line 887
    if-eqz v0, :cond_1b

    .line 889
    new-array v0, v4, [Ljava/lang/String;

    .line 891
    aput-object v13, v0, v7

    .line 893
    aput-object v19, v0, v8

    .line 895
    aput-object v18, v0, v11

    .line 897
    aput-object v17, v0, v3

    .line 899
    aput-object v16, v0, v5

    .line 901
    aput-object v15, v0, v6

    .line 903
    const/16 v20, 0x6

    .line 905
    aput-object v14, v0, v20

    .line 907
    aput-object v12, v0, v10

    .line 909
    :goto_f
    move-object/from16 v23, v0

    .line 911
    goto :goto_10

    .line 912
    :cond_1b
    const/16 v20, 0x6

    .line 914
    new-array v0, v10, [Ljava/lang/String;

    .line 916
    aput-object v13, v0, v7

    .line 918
    aput-object v19, v0, v8

    .line 920
    aput-object v18, v0, v11

    .line 922
    aput-object v17, v0, v3

    .line 924
    aput-object v16, v0, v5

    .line 926
    aput-object v15, v0, v6

    .line 928
    aput-object v14, v0, v20

    .line 930
    goto :goto_f

    .line 931
    :goto_10
    new-instance v10, Ljava/util/ArrayList;

    .line 933
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 936
    :try_start_f
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 938
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 941
    move-result-object v21

    .line 942
    sget-object v22, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    .line 944
    const/16 v26, 0x0

    .line 946
    const/16 v24, 0x0

    .line 948
    const/16 v25, 0x0

    .line 950
    invoke-virtual/range {v21 .. v26}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 953
    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 954
    goto :goto_11

    .line 955
    :catch_8
    move-exception v0

    .line 956
    const-string/jumbo v12, "initPolicyDefinitionInternal: Exception : "

    .line 959
    invoke-static {v0, v12, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const/4 v0, 0x0

    .line 963
    :goto_11
    if-eqz v0, :cond_1e

    .line 965
    :cond_1c
    :goto_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 968
    move-result v12

    .line 969
    if-eqz v12, :cond_1d

    .line 971
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 974
    move-result-object v12

    .line 975
    if-eqz v12, :cond_1c

    .line 977
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 980
    move-result-object v12

    .line 981
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 984
    move-result v22

    .line 985
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 988
    move-result-object v12

    .line 989
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 992
    move-result v23

    .line 993
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 996
    move-result-object v12

    .line 997
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1000
    move-result v24

    .line 1001
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1004
    move-result-object v12

    .line 1005
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1008
    move-result v25

    .line 1009
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1012
    move-result-object v12

    .line 1013
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1016
    move-result v26

    .line 1017
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1020
    move-result-object v12

    .line 1021
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1024
    move-result-wide v27

    .line 1025
    const/4 v12, 0x6

    .line 1026
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1029
    move-result-object v14

    .line 1030
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1033
    move-result-wide v29

    .line 1034
    sget-object v12, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1036
    sget-object v12, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1038
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1041
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    .line 1044
    move-result-object v21

    .line 1045
    new-instance v12, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1047
    move-object/from16 v20, v12

    .line 1049
    invoke-direct/range {v20 .. v30}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Ljava/lang/String;IIIIIJJ)V

    .line 1052
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    goto :goto_12

    .line 1056
    :cond_1d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1059
    goto :goto_13

    .line 1060
    :cond_1e
    const-string/jumbo v0, "initPolicyDefinitionInternal error, no database!!"

    .line 1063
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :goto_13
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1069
    move-result v0

    .line 1070
    if-nez v0, :cond_1f

    .line 1072
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1074
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1077
    sput-object v10, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1079
    goto :goto_14

    .line 1080
    :cond_1f
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1082
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    .line 1088
    :goto_14
    const-string/jumbo v0, "condition"

    .line 1091
    const-string/jumbo v10, "matchType"

    .line 1094
    const-string/jumbo v12, "packageName"

    .line 1097
    filled-new-array {v13, v0, v10, v12}, [Ljava/lang/String;

    .line 1100
    move-result-object v16

    .line 1101
    new-instance v10, Ljava/util/ArrayList;

    .line 1103
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    :try_start_10
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1108
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1111
    move-result-object v14

    .line 1112
    sget-object v15, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    .line 1114
    const/16 v19, 0x0

    .line 1116
    const/16 v17, 0x0

    .line 1118
    const/16 v18, 0x0

    .line 1120
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1123
    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 1124
    goto :goto_15

    .line 1125
    :catch_9
    move-exception v0

    .line 1126
    const-string/jumbo v12, "initAdjustTargetExcludePackageInternal: Exception : "

    .line 1129
    invoke-static {v0, v12, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/4 v0, 0x0

    .line 1133
    :goto_15
    if-eqz v0, :cond_22

    .line 1135
    :cond_20
    :goto_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1138
    move-result v12

    .line 1139
    if-eqz v12, :cond_21

    .line 1141
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1144
    move-result-object v12

    .line 1145
    if-eqz v12, :cond_20

    .line 1147
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1150
    move-result-object v12

    .line 1151
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1154
    move-result v12

    .line 1155
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1158
    move-result-object v14

    .line 1159
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1162
    move-result v14

    .line 1163
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1166
    move-result-object v15

    .line 1167
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1170
    move-result-object v4

    .line 1171
    new-instance v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 1173
    sget-object v17, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1175
    sget-object v17, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1177
    invoke-static/range {v17 .. v17}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    invoke-direct {v6, v12, v14, v15, v4}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    const/16 v4, 0x8

    .line 1188
    const/4 v6, 0x5

    .line 1189
    goto :goto_16

    .line 1190
    :cond_21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1193
    goto :goto_17

    .line 1194
    :cond_22
    const-string/jumbo v0, "initAdjustTargetExcludePackageInternal error, no database!!"

    .line 1197
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :goto_17
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1203
    move-result v0

    .line 1204
    if-nez v0, :cond_23

    .line 1206
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1208
    iput-object v10, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 1210
    goto :goto_18

    .line 1211
    :cond_23
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1216
    sget-object v4, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 1218
    iget-object v4, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    .line 1220
    iput-object v4, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 1222
    :goto_18
    const-string/jumbo v0, "currentImportantValue"

    .line 1225
    filled-new-array {v13, v0}, [Ljava/lang/String;

    .line 1228
    move-result-object v22

    .line 1229
    new-instance v4, Ljava/util/ArrayList;

    .line 1231
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    :try_start_11
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1236
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1239
    move-result-object v20

    .line 1240
    sget-object v21, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    .line 1242
    const/16 v25, 0x0

    .line 1244
    const/16 v23, 0x0

    .line 1246
    const/16 v24, 0x0

    .line 1248
    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1251
    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 1252
    goto :goto_19

    .line 1253
    :catch_a
    move-exception v0

    .line 1254
    const-string/jumbo v6, "initAdjustTargetIsCurrentImportantInternal: Exception : "

    .line 1257
    invoke-static {v0, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const/4 v0, 0x0

    .line 1261
    :goto_19
    if-eqz v0, :cond_26

    .line 1263
    :cond_24
    :goto_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1266
    move-result v6

    .line 1267
    if-eqz v6, :cond_25

    .line 1269
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1272
    move-result-object v6

    .line 1273
    if-eqz v6, :cond_24

    .line 1275
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1278
    move-result-object v6

    .line 1279
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1282
    move-result v6

    .line 1283
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1286
    move-result-object v10

    .line 1287
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1290
    move-result v10

    .line 1291
    new-instance v12, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    .line 1293
    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1295
    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1297
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    invoke-direct {v12, v6, v10}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(II)V

    .line 1303
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    goto :goto_1a

    .line 1307
    :cond_25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1310
    goto :goto_1b

    .line 1311
    :cond_26
    const-string/jumbo v0, "initAdjustTargetIsCurrentImportantInternal error, no database!!"

    .line 1314
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :goto_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1320
    move-result v0

    .line 1321
    if-nez v0, :cond_27

    .line 1323
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1325
    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    .line 1328
    goto :goto_1c

    .line 1329
    :cond_27
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1331
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    .line 1334
    :goto_1c
    const-string/jumbo v24, "matchType"

    .line 1337
    const-string v25, "action"

    .line 1339
    const-string/jumbo v20, "restrictionType"

    .line 1342
    const-string/jumbo v21, "isAllowed"

    .line 1345
    const-string/jumbo v22, "callee"

    .line 1348
    const-string/jumbo v23, "caller"

    .line 1351
    filled-new-array/range {v20 .. v25}, [Ljava/lang/String;

    .line 1354
    move-result-object v28

    .line 1355
    new-instance v4, Ljava/util/ArrayList;

    .line 1357
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    :try_start_12
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1362
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1365
    move-result-object v26

    .line 1366
    sget-object v27, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    .line 1368
    const/16 v31, 0x0

    .line 1370
    const/16 v29, 0x0

    .line 1372
    const/16 v30, 0x0

    .line 1374
    invoke-virtual/range {v26 .. v31}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1377
    move-result-object v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    .line 1378
    goto :goto_1d

    .line 1379
    :catch_b
    move-exception v0

    .line 1380
    const-string/jumbo v6, "initAdjustRestrictionInternal: Exception : "

    .line 1383
    invoke-static {v0, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const/4 v6, 0x0

    .line 1387
    :goto_1d
    if-eqz v6, :cond_33

    .line 1389
    :cond_28
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1392
    move-result v0

    .line 1393
    if-eqz v0, :cond_32

    .line 1395
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1398
    move-result-object v0

    .line 1399
    if-eqz v0, :cond_28

    .line 1401
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1404
    move-result-object v0

    .line 1405
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1408
    move-result v0

    .line 1409
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1412
    move-result-object v2

    .line 1413
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1416
    move-result-object v9

    .line 1417
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 1420
    move-result-object v9

    .line 1421
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1424
    move-result-object v10

    .line 1425
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 1428
    move-result-object v23

    .line 1429
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1432
    move-result-object v24

    .line 1433
    const/4 v10, 0x5

    .line 1434
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1437
    move-result-object v12

    .line 1438
    invoke-static {v12}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 1441
    move-result-object v12

    .line 1442
    const/16 v13, 0xc

    .line 1444
    if-eq v0, v13, :cond_2d

    .line 1446
    const/16 v14, 0xd

    .line 1448
    if-eq v0, v14, :cond_2b

    .line 1450
    const/16 v14, 0x10

    .line 1452
    if-eq v0, v14, :cond_29

    .line 1454
    new-instance v14, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 1456
    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1458
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    move-object/from16 v20, v14

    .line 1463
    move-object/from16 v21, v2

    .line 1465
    move-object/from16 v22, v9

    .line 1467
    move-object/from16 v25, v12

    .line 1469
    move/from16 v26, v0

    .line 1471
    invoke-direct/range {v20 .. v26}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1474
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    goto :goto_1e

    .line 1478
    :cond_29
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1480
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1482
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1484
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 1486
    if-eqz v2, :cond_28

    .line 1488
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1491
    move-result v2

    .line 1492
    if-eqz v2, :cond_2a

    .line 1494
    goto :goto_1e

    .line 1495
    :cond_2a
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 1497
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    goto :goto_1e

    .line 1501
    :cond_2b
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1503
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1505
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1507
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 1509
    if-eqz v2, :cond_28

    .line 1511
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1514
    move-result v2

    .line 1515
    if-eqz v2, :cond_2c

    .line 1517
    goto/16 :goto_1e

    .line 1519
    :cond_2c
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 1521
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    goto/16 :goto_1e

    .line 1526
    :cond_2d
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1528
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1530
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1532
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 1534
    if-eqz v9, :cond_31

    .line 1536
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1539
    move-result v9

    .line 1540
    if-eqz v9, :cond_2e

    .line 1542
    goto/16 :goto_1e

    .line 1544
    :cond_2e
    const-string/jumbo v9, "block"

    .line 1547
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1550
    move-result v9

    .line 1551
    if-nez v9, :cond_2f

    .line 1553
    sget-object v9, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    .line 1555
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1558
    move-result v9

    .line 1559
    if-eqz v9, :cond_30

    .line 1561
    :cond_2f
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 1563
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    :cond_30
    sget-boolean v9, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1568
    sget-object v9, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1570
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1573
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 1576
    move-result v9

    .line 1577
    if-eqz v9, :cond_31

    .line 1579
    const-string/jumbo v9, "blockchn"

    .line 1582
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1585
    move-result v9

    .line 1586
    if-eqz v9, :cond_31

    .line 1588
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 1590
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    :cond_31
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 1595
    if-eqz v9, :cond_28

    .line 1597
    const-string/jumbo v9, "idle"

    .line 1600
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1603
    move-result v2

    .line 1604
    if-eqz v2, :cond_28

    .line 1606
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 1608
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    goto/16 :goto_1e

    .line 1613
    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1616
    goto :goto_1f

    .line 1617
    :cond_33
    const-string/jumbo v0, "initAdjustRestrictionInternal error, no database!!"

    .line 1620
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :goto_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1626
    move-result v0

    .line 1627
    if-nez v0, :cond_34

    .line 1629
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1631
    iput-object v4, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1633
    goto :goto_20

    .line 1634
    :cond_34
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1636
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1639
    sget-object v2, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 1641
    iget-object v2, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    .line 1643
    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1645
    goto :goto_20

    .line 1646
    :cond_35
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1648
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1651
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    .line 1654
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    .line 1657
    sget-object v2, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 1659
    iget-object v3, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    .line 1661
    iput-object v3, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 1663
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    .line 1666
    iget-object v2, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    .line 1668
    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1670
    :goto_20
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1672
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1674
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1676
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1678
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1680
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1683
    move v2, v7

    .line 1684
    :goto_21
    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1686
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1689
    move-result v3

    .line 1690
    if-ge v2, v3, :cond_3b

    .line 1692
    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1694
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1697
    move-result-object v3

    .line 1698
    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1700
    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    .line 1702
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1704
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1707
    move-result-object v4

    .line 1708
    check-cast v4, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1710
    iget v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    .line 1712
    sget-object v6, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1714
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1717
    move-result-object v6

    .line 1718
    check-cast v6, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1720
    iget v6, v6, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    .line 1722
    sget-object v9, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1724
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1727
    move-result-object v9

    .line 1728
    check-cast v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1730
    iget v9, v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    .line 1732
    sget-object v9, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1734
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1737
    move-result-object v9

    .line 1738
    check-cast v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1740
    iget v9, v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    .line 1742
    if-ne v6, v8, :cond_36

    .line 1744
    move v6, v8

    .line 1745
    goto :goto_22

    .line 1746
    :cond_36
    move v6, v7

    .line 1747
    :goto_22
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1749
    invoke-direct {v10, v4, v9, v3, v6}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    .line 1752
    if-ne v4, v8, :cond_37

    .line 1754
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1756
    :goto_23
    const/16 v3, 0x8

    .line 1758
    goto :goto_24

    .line 1759
    :cond_37
    if-ne v4, v11, :cond_38

    .line 1761
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1763
    goto :goto_23

    .line 1764
    :cond_38
    if-ne v4, v5, :cond_39

    .line 1766
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1768
    goto :goto_23

    .line 1769
    :cond_39
    const/16 v3, 0x8

    .line 1771
    if-ne v4, v3, :cond_3a

    .line 1773
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1775
    :cond_3a
    :goto_24
    add-int/2addr v2, v8

    .line 1776
    goto :goto_21

    .line 1777
    :cond_3b
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 1779
    const-string v3, "MARsPolicyManager"

    .line 1781
    if-eqz v2, :cond_3c

    .line 1783
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1785
    const-string/jumbo v5, "createPolicies---AL = "

    .line 1788
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1791
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1793
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1796
    const-string v5, " , AR = "

    .line 1798
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1803
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1806
    const-string v5, " , FZ = "

    .line 1808
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1813
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1816
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1819
    move-result-object v4

    .line 1820
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :cond_3c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 1826
    move-result-object v4

    .line 1827
    const-string v5, "CscFeature_Common_ConfigBikeMode"

    .line 1829
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1832
    move-result-object v4

    .line 1833
    const-string v5, "bikemode"

    .line 1835
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1838
    move-result v4

    .line 1839
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1841
    const-string/jumbo v6, "sbkiepolicy"

    .line 1844
    const/16 v9, 0x9

    .line 1846
    const/4 v10, 0x6

    .line 1847
    invoke-direct {v5, v10, v9, v6, v4}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    .line 1850
    iput-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1852
    const-string/jumbo v4, "sys.config.mars.game_policy"

    .line 1855
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1858
    move-result v4

    .line 1859
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1861
    const-string/jumbo v6, "gamePolicy"

    .line 1864
    const/16 v10, 0xa

    .line 1866
    invoke-direct {v5, v9, v10, v6, v4}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    .line 1869
    iput-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1871
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1873
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1875
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 1877
    if-eqz v4, :cond_3d

    .line 1879
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1881
    if-eqz v4, :cond_3d

    .line 1883
    iput-boolean v8, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1885
    :cond_3d
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1887
    if-eqz v4, :cond_3e

    .line 1889
    sget-boolean v5, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1891
    sget-object v5, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1893
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1895
    const-string/jumbo v9, "getFreecessEnabledConfig mIsKernelSupportFreecess = "

    .line 1898
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1901
    iget-boolean v9, v5, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 1903
    const-string v10, "FreecessController"

    .line 1905
    invoke-static {v10, v6, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1908
    iget-boolean v5, v5, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 1910
    iput-boolean v5, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1912
    :cond_3e
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 1914
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1917
    move-result-object v4

    .line 1918
    new-instance v5, Landroid/content/Intent;

    .line 1920
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1923
    const-string/jumbo v6, "com.samsung.android.sm.ACTION_AUTO_RUN"

    .line 1926
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1929
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    .line 1931
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1934
    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 1937
    move-result-object v4

    .line 1938
    if-eqz v4, :cond_40

    .line 1940
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1942
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    .line 1945
    move-result v4

    .line 1946
    if-eqz v4, :cond_40

    .line 1948
    if-eqz v2, :cond_3f

    .line 1950
    const-string v2, "App StartUp History is enabled"

    .line 1952
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_3f
    sput-boolean v8, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 1957
    :cond_40
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1959
    if-eqz v2, :cond_41

    .line 1961
    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1963
    if-eqz v2, :cond_41

    .line 1965
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 1967
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1970
    new-instance v4, Landroid/content/IntentFilter;

    .line 1972
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1975
    const-string/jumbo v5, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    .line 1978
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1981
    const-string/jumbo v5, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    .line 1984
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1987
    iget-object v5, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 1989
    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 1991
    invoke-virtual {v5, v2, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1994
    :cond_41
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1996
    if-eqz v2, :cond_42

    .line 1998
    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2000
    if-eqz v2, :cond_42

    .line 2002
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 2004
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2007
    new-instance v4, Landroid/content/IntentFilter;

    .line 2009
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2012
    const-string/jumbo v5, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 2015
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2018
    const-string/jumbo v5, "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

    .line 2021
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2024
    iget-object v5, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 2026
    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 2028
    invoke-virtual {v5, v2, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2031
    :cond_42
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 2033
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2036
    new-instance v4, Landroid/content/IntentFilter;

    .line 2038
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2041
    const-string/jumbo v5, "com.sec.android.sdhms.action.HIGH_CPU_USAGE"

    .line 2044
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2047
    const-string/jumbo v5, "com.sec.android.sdhms.action.HIGH_CPU_USAGE_APP"

    .line 2050
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2053
    iget-object v5, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 2055
    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mTCPUReceiver:Lcom/android/server/am/MARsTrigger$5;

    .line 2057
    invoke-virtual {v5, v2, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2060
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 2062
    if-eqz v2, :cond_43

    .line 2064
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2066
    if-eqz v2, :cond_43

    .line 2068
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2070
    if-eqz v2, :cond_43

    .line 2072
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2074
    if-eqz v2, :cond_43

    .line 2076
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2078
    if-eqz v2, :cond_43

    .line 2080
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2082
    if-eqz v2, :cond_43

    .line 2084
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2086
    const-string v4, "FC = "

    .line 2088
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2091
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2093
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2095
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2098
    const-string v4, ", AR = "

    .line 2100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2105
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2107
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2110
    const-string v4, ", PD = "

    .line 2112
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2115
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2117
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2119
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2122
    const-string v4, ", SB = "

    .line 2124
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2127
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2129
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2134
    const-string v4, ", GA = "

    .line 2136
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2141
    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2143
    invoke-static {v3, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2146
    :cond_43
    if-nez v1, :cond_49

    .line 2148
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->cancelAllPolicy()V

    .line 2151
    goto/16 :goto_29

    .line 2153
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2156
    move-result-object v1

    .line 2157
    if-nez v1, :cond_44

    .line 2159
    goto/16 :goto_29

    .line 2161
    :cond_44
    const-string/jumbo v2, "callee"

    .line 2164
    const/4 v3, 0x0

    .line 2165
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2168
    move-result-object v2

    .line 2169
    const-string/jumbo v4, "caller"

    .line 2172
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2175
    move-result-object v3

    .line 2176
    const-string/jumbo v4, "isblock"

    .line 2179
    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 2182
    move-result v4

    .line 2183
    const-string/jumbo v5, "requesttime"

    .line 2186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2189
    move-result-wide v8

    .line 2190
    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 2193
    move-result-wide v5

    .line 2194
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2199
    new-instance v1, Landroid/content/ContentValues;

    .line 2201
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2204
    const-string/jumbo v8, "calleepackage"

    .line 2207
    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const-string/jumbo v2, "callerpackage"

    .line 2213
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    const-string/jumbo v2, "isblocked"

    .line 2219
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 2222
    move-result-object v3

    .line 2223
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    const-string/jumbo v2, "requestTime"

    .line 2229
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 2232
    move-result-object v3

    .line 2233
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 2238
    monitor-enter v2

    .line 2239
    :try_start_13
    iget-object v3, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 2241
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2244
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 2246
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2249
    move-result v1

    .line 2250
    const/16 v3, 0x63

    .line 2252
    if-le v1, v3, :cond_45

    .line 2254
    invoke-virtual {v0, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    .line 2257
    goto :goto_25

    .line 2258
    :catchall_5
    move-exception v0

    .line 2259
    goto :goto_26

    .line 2260
    :cond_45
    :goto_25
    monitor-exit v2

    .line 2261
    goto/16 :goto_29

    .line 2263
    :goto_26
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 2264
    throw v0

    .line 2265
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2268
    move-result-object v1

    .line 2269
    if-nez v1, :cond_46

    .line 2271
    goto/16 :goto_29

    .line 2273
    :cond_46
    const-string/jumbo v2, "value"

    .line 2276
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 2279
    move-result-object v1

    .line 2280
    check-cast v1, Lcom/android/server/am/mars/database/FASEntity;

    .line 2282
    if-eqz v1, :cond_49

    .line 2284
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2286
    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 2289
    goto/16 :goto_29

    .line 2291
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2294
    move-result-object v1

    .line 2295
    if-nez v1, :cond_47

    .line 2297
    goto :goto_29

    .line 2298
    :cond_47
    const-string/jumbo v2, "values"

    .line 2301
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 2304
    move-result-object v1

    .line 2305
    check-cast v1, Ljava/util/ArrayList;

    .line 2307
    if-eqz v1, :cond_49

    .line 2309
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2311
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2314
    const-string v2, "MARsDBManager"

    .line 2316
    const-string/jumbo v3, "updatePkgsToSMDB : begin --size "

    .line 2319
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2321
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2324
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2327
    move-result v3

    .line 2328
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2331
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2334
    move-result-object v3

    .line 2335
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :goto_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2341
    move-result v3

    .line 2342
    if-ge v7, v3, :cond_48

    .line 2344
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2347
    move-result-object v3

    .line 2348
    check-cast v3, Lcom/android/server/am/mars/database/FASEntity;

    .line 2350
    invoke-virtual {v0, v3}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 2353
    add-int/2addr v7, v8

    .line 2354
    goto :goto_27

    .line 2355
    :catch_c
    move-exception v0

    .line 2356
    goto :goto_28

    .line 2357
    :cond_48
    const-string/jumbo v0, "updatePkgsToSMDB : end"

    .line 2360
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    .line 2363
    goto :goto_29

    .line 2364
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2366
    const-string v3, "Exception on handling DB : "

    .line 2368
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 2374
    move-result-object v3

    .line 2375
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2381
    move-result-object v1

    .line 2382
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2388
    goto :goto_29

    .line 2389
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2391
    invoke-virtual {v0, v8}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    .line 2394
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    .line 2397
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 2400
    move-result v1

    .line 2401
    if-eqz v1, :cond_49

    .line 2403
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getFreezeExcludeListFromDB()V

    .line 2406
    :cond_49
    :goto_29
    return-void

    .line 2407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
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
