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

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/16 v3, 0xc

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
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

    .line 16
    .line 17
    .line 18
    goto/16 :goto_29

    .line 19
    .line 20
    :pswitch_0
    sget-boolean v1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 21
    .line 22
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 23
    .line 24
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->updateResetTime()V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_29

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 42
    .line 43
    const-wide/32 v2, 0x2932e00

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 47
    .line 48
    .line 49
    goto/16 :goto_29

    .line 50
    .line 51
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v2, Lcom/android/server/am/mars/database/MARsTableContract;->SCPM_AUTHORITY_URI:Landroid/net/Uri;

    .line 68
    .line 69
    const-string/jumbo v3, "dc_scpm_mars_app_freeze_settings"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2, v3, v6, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string/jumbo v1, "result"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_49

    .line 84
    .line 85
    const-string v1, "app_freeze_settings_json"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-boolean v1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 92
    .line 93
    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 94
    .line 95
    sget-object v1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController;->setFreecessPolicyFromSCPM(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto/16 :goto_29

    .line 101
    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string/jumbo v1, "getSCPMPolicyForFreecess not available : "

    .line 104
    .line 105
    .line 106
    const-string v2, "MARsDBManager"

    .line 107
    .line 108
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_29

    .line 112
    .line 113
    :pswitch_2
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSCPMList()V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_29

    .line 119
    .line 120
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 127
    .line 128
    if-nez v2, :cond_1

    .line 129
    .line 130
    goto/16 :goto_29

    .line 131
    .line 132
    :cond_1
    if-eqz v1, :cond_5

    .line 133
    .line 134
    const-string v1, "MARsDBManager"

    .line 135
    .line 136
    const-string/jumbo v12, "key=?"

    .line 137
    .line 138
    .line 139
    const-string/jumbo v2, "restriction_flag"

    .line 140
    .line 141
    .line 142
    filled-new-array {v2}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    const-string/jumbo v2, "value"

    .line 147
    .line 148
    .line 149
    filled-new-array {v2}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    sget-object v10, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    .line 160
    .line 161
    const/4 v14, 0x0

    .line 162
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 163
    .line 164
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

    .line 169
    .line 170
    const-string v3, "Exception with contentResolver : "

    .line 171
    .line 172
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    :goto_0
    if-eqz v6, :cond_4

    .line 193
    .line 194
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_3

    .line 199
    .line 200
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_2

    .line 205
    .line 206
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_4
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 219
    .line 220
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getRestrictionFlag()I

    .line 226
    .line 227
    .line 228
    const-string/jumbo v0, "getRestrictionFlagFromDB error, no database!!"

    .line 229
    .line 230
    .line 231
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_5
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getRestrictionFlag()I

    .line 241
    .line 242
    .line 243
    :goto_2
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 244
    .line 245
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 246
    .line 247
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    sget-object v0, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    .line 253
    .line 254
    iget-boolean v1, v0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z

    .line 255
    .line 256
    if-eqz v1, :cond_6

    .line 257
    .line 258
    goto/16 :goto_29

    .line 259
    .line 260
    :cond_6
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    .line 261
    .line 262
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 266
    .line 267
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const/16 v2, 0x3e8

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 278
    .line 279
    .line 280
    iget-object v2, v0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    iget-object v3, v0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiverForBird:Lcom/android/server/am/FreecessTrigger$2;

    .line 283
    .line 284
    invoke-virtual {v2, v3, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    iput-boolean v8, v0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 288
    .line 289
    goto/16 :goto_29

    .line 290
    .line 291
    :catch_2
    move-exception v0

    .line 292
    const-string/jumbo v1, "exception registerReceiverForBird "

    .line 293
    .line 294
    .line 295
    const-string v2, "FreecessTrigger"

    .line 296
    .line 297
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_29

    .line 301
    .line 302
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 303
    .line 304
    const-string/jumbo v1, "doMigration send MARS_REQUEST_MIGRATE"

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    const-string v2, "MARsDBManager"

    .line 311
    .line 312
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 316
    .line 317
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    if-eqz v1, :cond_49

    .line 322
    .line 323
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 324
    .line 325
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    sget-object v1, Lcom/android/server/am/mars/database/FASTableContract;->DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

    .line 330
    .line 331
    const-string v3, "FasDataMigration"

    .line 332
    .line 333
    invoke-virtual {v0, v1, v3, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 334
    .line 335
    .line 336
    goto/16 :goto_29

    .line 337
    .line 338
    :catch_3
    move-exception v0

    .line 339
    const-string v1, "Error on migrateFasData e = "

    .line 340
    .line 341
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_29

    .line 345
    .line 346
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    if-nez v1, :cond_7

    .line 351
    .line 352
    goto/16 :goto_29

    .line 353
    .line 354
    :cond_7
    const-string/jumbo v2, "userId"

    .line 355
    .line 356
    .line 357
    const/4 v3, -0x1

    .line 358
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    new-instance v2, Landroid/os/UserHandle;

    .line 363
    .line 364
    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 365
    .line 366
    .line 367
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    :try_start_4
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 373
    .line 374
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-virtual {v1, v3, v7, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 379
    .line 380
    .line 381
    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 382
    goto :goto_3

    .line 383
    :catch_4
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 384
    .line 385
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string/jumbo v2, "mContext.id = "

    .line 388
    .line 389
    .line 390
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    const-string v2, "MARsDBHandler"

    .line 405
    .line 406
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_29

    .line 413
    .line 414
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const-string/jumbo v2, "onCreate"

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    const-string/jumbo v3, "onUpgrade"

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    const-string/jumbo v5, "onInit"

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 440
    .line 441
    if-eqz v5, :cond_8

    .line 442
    .line 443
    const-string v5, "MARsDBHandler"

    .line 444
    .line 445
    const-string v6, "Received MARS_DB_SM_CHANGED_MSG, --mDBCreate = "

    .line 446
    .line 447
    const-string v9, " --onUpgrade = "

    .line 448
    .line 449
    const-string v10, " --onInit = "

    .line 450
    .line 451
    invoke-static {v6, v2, v9, v3, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    invoke-static {v5, v6, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 456
    .line 457
    .line 458
    :cond_8
    if-eqz v1, :cond_9

    .line 459
    .line 460
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->cancelAllPolicy()V

    .line 461
    .line 462
    .line 463
    iget-object v5, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 464
    .line 465
    invoke-virtual {v5, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    .line 466
    .line 467
    .line 468
    :cond_9
    if-nez v3, :cond_a

    .line 469
    .line 470
    if-eqz v1, :cond_d

    .line 471
    .line 472
    :cond_a
    sget-boolean v5, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 473
    .line 474
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 475
    .line 476
    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 477
    .line 478
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 482
    .line 483
    monitor-enter v9

    .line 484
    :try_start_5
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 485
    .line 486
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 487
    .line 488
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    if-lez v6, :cond_b

    .line 493
    .line 494
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 495
    .line 496
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 497
    .line 498
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 499
    .line 500
    .line 501
    goto :goto_4

    .line 502
    :catchall_0
    move-exception v0

    .line 503
    goto/16 :goto_8

    .line 504
    .line 505
    :cond_b
    :goto_4
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 506
    .line 507
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 508
    .line 509
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    if-lez v6, :cond_c

    .line 514
    .line 515
    iget-object v5, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 516
    .line 517
    iget-object v5, v5, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 518
    .line 519
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 520
    .line 521
    .line 522
    :cond_c
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 523
    :cond_d
    if-nez v2, :cond_e

    .line 524
    .line 525
    if-nez v3, :cond_e

    .line 526
    .line 527
    if-eqz v1, :cond_11

    .line 528
    .line 529
    :cond_e
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_f

    .line 534
    .line 535
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 536
    .line 537
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 538
    .line 539
    monitor-enter v2

    .line 540
    :try_start_6
    iput-boolean v8, v2, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 541
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

    .line 549
    .line 550
    invoke-virtual {v2}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    .line 551
    .line 552
    .line 553
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 554
    .line 555
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    sget-object v3, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    .line 559
    .line 560
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASDataManager;->getFASDataFromDB()Ljava/util/ArrayList;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    if-eqz v3, :cond_10

    .line 565
    .line 566
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    if-nez v5, :cond_10

    .line 571
    .line 572
    invoke-static {v3}, Lcom/android/server/am/mars/MARsUtils;->updateMARsTargetPackages(Ljava/util/ArrayList;)V

    .line 573
    .line 574
    .line 575
    goto :goto_6

    .line 576
    :cond_10
    const-string v3, "MARsDBManager"

    .line 577
    .line 578
    const-string v5, "Packages database not exist, and not created!!"

    .line 579
    .line 580
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .line 582
    .line 583
    :goto_6
    iget-boolean v3, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 584
    .line 585
    if-nez v3, :cond_11

    .line 586
    .line 587
    new-instance v3, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 588
    .line 589
    iget-object v5, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 590
    .line 591
    monitor-enter v5

    .line 592
    :try_start_7
    iget-object v6, v5, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 593
    .line 594
    monitor-exit v5

    .line 595
    invoke-direct {v3, v2, v6, v7}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;I)V

    .line 596
    .line 597
    .line 598
    iput-object v3, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 599
    .line 600
    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 601
    .line 602
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    sget-object v5, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    .line 607
    .line 608
    iget-object v6, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 609
    .line 610
    iget-object v7, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 611
    .line 612
    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    .line 613
    .line 614
    .line 615
    move-result v7

    .line 616
    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 617
    .line 618
    .line 619
    iput-boolean v8, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 620
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

    .line 627
    .line 628
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 629
    .line 630
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 631
    .line 632
    if-nez v1, :cond_12

    .line 633
    .line 634
    goto/16 :goto_29

    .line 635
    .line 636
    :cond_12
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    if-eqz v1, :cond_13

    .line 641
    .line 642
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 643
    .line 644
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    .line 646
    .line 647
    :cond_13
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 648
    .line 649
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 654
    .line 655
    const-wide/16 v2, 0x3e8

    .line 656
    .line 657
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 658
    .line 659
    .line 660
    goto/16 :goto_29

    .line 661
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

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    if-nez v1, :cond_14

    .line 669
    .line 670
    goto/16 :goto_29

    .line 671
    .line 672
    :cond_14
    const-string/jumbo v2, "boot"

    .line 673
    .line 674
    .line 675
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    const-string v2, "MARsDBManager"

    .line 680
    .line 681
    iget-object v9, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 682
    .line 683
    invoke-virtual {v9}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    const/4 v11, 0x2

    .line 688
    if-eqz v0, :cond_35

    .line 689
    .line 690
    const-string/jumbo v0, "key"

    .line 691
    .line 692
    .line 693
    const-string/jumbo v12, "value"

    .line 694
    .line 695
    .line 696
    filled-new-array {v0, v12}, [Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v15

    .line 700
    new-instance v12, Ljava/util/ArrayList;

    .line 701
    .line 702
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .line 704
    .line 705
    :try_start_9
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 706
    .line 707
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 708
    .line 709
    .line 710
    move-result-object v13

    .line 711
    sget-object v14, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    .line 712
    .line 713
    const/16 v18, 0x0

    .line 714
    .line 715
    const/16 v16, 0x0

    .line 716
    .line 717
    const/16 v17, 0x0

    .line 718
    .line 719
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 720
    .line 721
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

    .line 726
    .line 727
    .line 728
    invoke-static {v0, v13, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    move-object v0, v6

    .line 732
    :goto_9
    if-eqz v0, :cond_17

    .line 733
    .line 734
    :cond_15
    :goto_a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 735
    .line 736
    .line 737
    move-result v13

    .line 738
    if-eqz v13, :cond_16

    .line 739
    .line 740
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v13

    .line 744
    if-eqz v13, :cond_15

    .line 745
    .line 746
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    new-instance v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    .line 753
    .line 754
    sget-object v14, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 755
    .line 756
    sget-object v14, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 757
    .line 758
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    goto :goto_a

    .line 768
    :cond_16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 769
    .line 770
    .line 771
    goto :goto_b

    .line 772
    :cond_17
    const-string/jumbo v0, "initMARsSettingsDefinitionInternal error, no database!!"

    .line 773
    .line 774
    .line 775
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .line 777
    .line 778
    :goto_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    if-nez v0, :cond_18

    .line 783
    .line 784
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 785
    .line 786
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    goto :goto_c

    .line 790
    :cond_18
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 791
    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    .line 796
    .line 797
    .line 798
    :goto_c
    const-string v12, "bigdataRestriction"

    .line 799
    .line 800
    :try_start_a
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 801
    .line 802
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 803
    .line 804
    .line 805
    move-result-object v13

    .line 806
    sget-object v14, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    .line 807
    .line 808
    filled-new-array {v12}, [Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v15

    .line 812
    const/16 v16, 0x0

    .line 813
    .line 814
    const/16 v17, 0x0

    .line 815
    .line 816
    const/16 v18, 0x0

    .line 817
    .line 818
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 819
    .line 820
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

    .line 823
    .line 824
    if-eqz v13, :cond_1a

    .line 825
    .line 826
    :try_start_c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6

    .line 827
    .line 828
    .line 829
    goto :goto_e

    .line 830
    :catchall_3
    move-exception v0

    .line 831
    move-object v14, v0

    .line 832
    if-eqz v13, :cond_19

    .line 833
    .line 834
    :try_start_d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 835
    .line 836
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

    .line 841
    .line 842
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

    .line 845
    .line 846
    .line 847
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .line 849
    .line 850
    iput-boolean v7, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 851
    .line 852
    goto :goto_e

    .line 853
    :catch_7
    const-string/jumbo v0, "checkBigDataRestrictionColumnExist, catch no column exception!"

    .line 854
    .line 855
    .line 856
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .line 858
    .line 859
    iput-boolean v7, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 860
    .line 861
    :cond_1a
    :goto_e
    iget-boolean v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 862
    .line 863
    const-string/jumbo v13, "policyNum"

    .line 864
    .line 865
    .line 866
    const-string/jumbo v14, "repeatTriggerTime"

    .line 867
    .line 868
    .line 869
    const-string/jumbo v15, "firstTriggerTime"

    .line 870
    .line 871
    .line 872
    const-string/jumbo v16, "killType"

    .line 873
    .line 874
    .line 875
    const-string/jumbo v17, "restriction"

    .line 876
    .line 877
    .line 878
    const-string/jumbo v18, "targetCategory"

    .line 879
    .line 880
    .line 881
    const-string/jumbo v19, "isPolicyEnabled"

    .line 882
    .line 883
    .line 884
    const/4 v6, 0x5

    .line 885
    const/4 v3, 0x3

    .line 886
    const/4 v10, 0x7

    .line 887
    if-eqz v0, :cond_1b

    .line 888
    .line 889
    new-array v0, v4, [Ljava/lang/String;

    .line 890
    .line 891
    aput-object v13, v0, v7

    .line 892
    .line 893
    aput-object v19, v0, v8

    .line 894
    .line 895
    aput-object v18, v0, v11

    .line 896
    .line 897
    aput-object v17, v0, v3

    .line 898
    .line 899
    aput-object v16, v0, v5

    .line 900
    .line 901
    aput-object v15, v0, v6

    .line 902
    .line 903
    const/16 v20, 0x6

    .line 904
    .line 905
    aput-object v14, v0, v20

    .line 906
    .line 907
    aput-object v12, v0, v10

    .line 908
    .line 909
    :goto_f
    move-object/from16 v23, v0

    .line 910
    .line 911
    goto :goto_10

    .line 912
    :cond_1b
    const/16 v20, 0x6

    .line 913
    .line 914
    new-array v0, v10, [Ljava/lang/String;

    .line 915
    .line 916
    aput-object v13, v0, v7

    .line 917
    .line 918
    aput-object v19, v0, v8

    .line 919
    .line 920
    aput-object v18, v0, v11

    .line 921
    .line 922
    aput-object v17, v0, v3

    .line 923
    .line 924
    aput-object v16, v0, v5

    .line 925
    .line 926
    aput-object v15, v0, v6

    .line 927
    .line 928
    aput-object v14, v0, v20

    .line 929
    .line 930
    goto :goto_f

    .line 931
    :goto_10
    new-instance v10, Ljava/util/ArrayList;

    .line 932
    .line 933
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .line 935
    .line 936
    :try_start_f
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 937
    .line 938
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 939
    .line 940
    .line 941
    move-result-object v21

    .line 942
    sget-object v22, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    .line 943
    .line 944
    const/16 v26, 0x0

    .line 945
    .line 946
    const/16 v24, 0x0

    .line 947
    .line 948
    const/16 v25, 0x0

    .line 949
    .line 950
    invoke-virtual/range {v21 .. v26}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 951
    .line 952
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

    .line 957
    .line 958
    .line 959
    invoke-static {v0, v12, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    const/4 v0, 0x0

    .line 963
    :goto_11
    if-eqz v0, :cond_1e

    .line 964
    .line 965
    :cond_1c
    :goto_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 966
    .line 967
    .line 968
    move-result v12

    .line 969
    if-eqz v12, :cond_1d

    .line 970
    .line 971
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v12

    .line 975
    if-eqz v12, :cond_1c

    .line 976
    .line 977
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v12

    .line 981
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 982
    .line 983
    .line 984
    move-result v22

    .line 985
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v12

    .line 989
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 990
    .line 991
    .line 992
    move-result v23

    .line 993
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v12

    .line 997
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 998
    .line 999
    .line 1000
    move-result v24

    .line 1001
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v12

    .line 1005
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1006
    .line 1007
    .line 1008
    move-result v25

    .line 1009
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v12

    .line 1013
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1014
    .line 1015
    .line 1016
    move-result v26

    .line 1017
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v12

    .line 1021
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1022
    .line 1023
    .line 1024
    move-result-wide v27

    .line 1025
    const/4 v12, 0x6

    .line 1026
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v14

    .line 1030
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v29

    .line 1034
    sget-object v12, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1035
    .line 1036
    sget-object v12, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1037
    .line 1038
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    .line 1040
    .line 1041
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v21

    .line 1045
    new-instance v12, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1046
    .line 1047
    move-object/from16 v20, v12

    .line 1048
    .line 1049
    invoke-direct/range {v20 .. v30}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Ljava/lang/String;IIIIIJJ)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    .line 1054
    .line 1055
    goto :goto_12

    .line 1056
    :cond_1d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1057
    .line 1058
    .line 1059
    goto :goto_13

    .line 1060
    :cond_1e
    const-string/jumbo v0, "initPolicyDefinitionInternal error, no database!!"

    .line 1061
    .line 1062
    .line 1063
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .line 1065
    .line 1066
    :goto_13
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v0

    .line 1070
    if-nez v0, :cond_1f

    .line 1071
    .line 1072
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1073
    .line 1074
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1075
    .line 1076
    .line 1077
    sput-object v10, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1078
    .line 1079
    goto :goto_14

    .line 1080
    :cond_1f
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1081
    .line 1082
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1083
    .line 1084
    .line 1085
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    .line 1086
    .line 1087
    .line 1088
    :goto_14
    const-string/jumbo v0, "condition"

    .line 1089
    .line 1090
    .line 1091
    const-string/jumbo v10, "matchType"

    .line 1092
    .line 1093
    .line 1094
    const-string/jumbo v12, "packageName"

    .line 1095
    .line 1096
    .line 1097
    filled-new-array {v13, v0, v10, v12}, [Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v16

    .line 1101
    new-instance v10, Ljava/util/ArrayList;

    .line 1102
    .line 1103
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .line 1105
    .line 1106
    :try_start_10
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1107
    .line 1108
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v14

    .line 1112
    sget-object v15, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    .line 1113
    .line 1114
    const/16 v19, 0x0

    .line 1115
    .line 1116
    const/16 v17, 0x0

    .line 1117
    .line 1118
    const/16 v18, 0x0

    .line 1119
    .line 1120
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1121
    .line 1122
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

    .line 1127
    .line 1128
    .line 1129
    invoke-static {v0, v12, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    const/4 v0, 0x0

    .line 1133
    :goto_15
    if-eqz v0, :cond_22

    .line 1134
    .line 1135
    :cond_20
    :goto_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v12

    .line 1139
    if-eqz v12, :cond_21

    .line 1140
    .line 1141
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v12

    .line 1145
    if-eqz v12, :cond_20

    .line 1146
    .line 1147
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v12

    .line 1151
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1152
    .line 1153
    .line 1154
    move-result v12

    .line 1155
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v14

    .line 1159
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1160
    .line 1161
    .line 1162
    move-result v14

    .line 1163
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v15

    .line 1167
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v4

    .line 1171
    new-instance v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 1172
    .line 1173
    sget-object v17, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1174
    .line 1175
    sget-object v17, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1176
    .line 1177
    invoke-static/range {v17 .. v17}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    invoke-direct {v6, v12, v14, v15, v4}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    const/16 v4, 0x8

    .line 1187
    .line 1188
    const/4 v6, 0x5

    .line 1189
    goto :goto_16

    .line 1190
    :cond_21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1191
    .line 1192
    .line 1193
    goto :goto_17

    .line 1194
    :cond_22
    const-string/jumbo v0, "initAdjustTargetExcludePackageInternal error, no database!!"

    .line 1195
    .line 1196
    .line 1197
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    .line 1199
    .line 1200
    :goto_17
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    if-nez v0, :cond_23

    .line 1205
    .line 1206
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1207
    .line 1208
    iput-object v10, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 1209
    .line 1210
    goto :goto_18

    .line 1211
    :cond_23
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1212
    .line 1213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1214
    .line 1215
    .line 1216
    sget-object v4, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 1217
    .line 1218
    iget-object v4, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    .line 1219
    .line 1220
    iput-object v4, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 1221
    .line 1222
    :goto_18
    const-string/jumbo v0, "currentImportantValue"

    .line 1223
    .line 1224
    .line 1225
    filled-new-array {v13, v0}, [Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v22

    .line 1229
    new-instance v4, Ljava/util/ArrayList;

    .line 1230
    .line 1231
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    .line 1233
    .line 1234
    :try_start_11
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1235
    .line 1236
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v20

    .line 1240
    sget-object v21, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    .line 1241
    .line 1242
    const/16 v25, 0x0

    .line 1243
    .line 1244
    const/16 v23, 0x0

    .line 1245
    .line 1246
    const/16 v24, 0x0

    .line 1247
    .line 1248
    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1249
    .line 1250
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

    .line 1255
    .line 1256
    .line 1257
    invoke-static {v0, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    const/4 v0, 0x0

    .line 1261
    :goto_19
    if-eqz v0, :cond_26

    .line 1262
    .line 1263
    :cond_24
    :goto_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1264
    .line 1265
    .line 1266
    move-result v6

    .line 1267
    if-eqz v6, :cond_25

    .line 1268
    .line 1269
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v6

    .line 1273
    if-eqz v6, :cond_24

    .line 1274
    .line 1275
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v6

    .line 1279
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1280
    .line 1281
    .line 1282
    move-result v6

    .line 1283
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v10

    .line 1287
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1288
    .line 1289
    .line 1290
    move-result v10

    .line 1291
    new-instance v12, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    .line 1292
    .line 1293
    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1294
    .line 1295
    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1296
    .line 1297
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    invoke-direct {v12, v6, v10}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(II)V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    goto :goto_1a

    .line 1307
    :cond_25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_1b

    .line 1311
    :cond_26
    const-string/jumbo v0, "initAdjustTargetIsCurrentImportantInternal error, no database!!"

    .line 1312
    .line 1313
    .line 1314
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    .line 1316
    .line 1317
    :goto_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1318
    .line 1319
    .line 1320
    move-result v0

    .line 1321
    if-nez v0, :cond_27

    .line 1322
    .line 1323
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1324
    .line 1325
    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_1c

    .line 1329
    :cond_27
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1330
    .line 1331
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    .line 1332
    .line 1333
    .line 1334
    :goto_1c
    const-string/jumbo v24, "matchType"

    .line 1335
    .line 1336
    .line 1337
    const-string v25, "action"

    .line 1338
    .line 1339
    const-string/jumbo v20, "restrictionType"

    .line 1340
    .line 1341
    .line 1342
    const-string/jumbo v21, "isAllowed"

    .line 1343
    .line 1344
    .line 1345
    const-string/jumbo v22, "callee"

    .line 1346
    .line 1347
    .line 1348
    const-string/jumbo v23, "caller"

    .line 1349
    .line 1350
    .line 1351
    filled-new-array/range {v20 .. v25}, [Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v28

    .line 1355
    new-instance v4, Ljava/util/ArrayList;

    .line 1356
    .line 1357
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    .line 1359
    .line 1360
    :try_start_12
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1361
    .line 1362
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v26

    .line 1366
    sget-object v27, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    .line 1367
    .line 1368
    const/16 v31, 0x0

    .line 1369
    .line 1370
    const/16 v29, 0x0

    .line 1371
    .line 1372
    const/16 v30, 0x0

    .line 1373
    .line 1374
    invoke-virtual/range {v26 .. v31}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1375
    .line 1376
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

    .line 1381
    .line 1382
    .line 1383
    invoke-static {v0, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    const/4 v6, 0x0

    .line 1387
    :goto_1d
    if-eqz v6, :cond_33

    .line 1388
    .line 1389
    :cond_28
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1390
    .line 1391
    .line 1392
    move-result v0

    .line 1393
    if-eqz v0, :cond_32

    .line 1394
    .line 1395
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    if-eqz v0, :cond_28

    .line 1400
    .line 1401
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1406
    .line 1407
    .line 1408
    move-result v0

    .line 1409
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v2

    .line 1413
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v9

    .line 1417
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v9

    .line 1421
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v10

    .line 1425
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v23

    .line 1429
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v24

    .line 1433
    const/4 v10, 0x5

    .line 1434
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v12

    .line 1438
    invoke-static {v12}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v12

    .line 1442
    const/16 v13, 0xc

    .line 1443
    .line 1444
    if-eq v0, v13, :cond_2d

    .line 1445
    .line 1446
    const/16 v14, 0xd

    .line 1447
    .line 1448
    if-eq v0, v14, :cond_2b

    .line 1449
    .line 1450
    const/16 v14, 0x10

    .line 1451
    .line 1452
    if-eq v0, v14, :cond_29

    .line 1453
    .line 1454
    new-instance v14, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 1455
    .line 1456
    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1457
    .line 1458
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    move-object/from16 v20, v14

    .line 1462
    .line 1463
    move-object/from16 v21, v2

    .line 1464
    .line 1465
    move-object/from16 v22, v9

    .line 1466
    .line 1467
    move-object/from16 v25, v12

    .line 1468
    .line 1469
    move/from16 v26, v0

    .line 1470
    .line 1471
    invoke-direct/range {v20 .. v26}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    .line 1476
    .line 1477
    goto :goto_1e

    .line 1478
    :cond_29
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1479
    .line 1480
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1481
    .line 1482
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1483
    .line 1484
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 1485
    .line 1486
    if-eqz v2, :cond_28

    .line 1487
    .line 1488
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1489
    .line 1490
    .line 1491
    move-result v2

    .line 1492
    if-eqz v2, :cond_2a

    .line 1493
    .line 1494
    goto :goto_1e

    .line 1495
    :cond_2a
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 1496
    .line 1497
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    .line 1499
    .line 1500
    goto :goto_1e

    .line 1501
    :cond_2b
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1502
    .line 1503
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1504
    .line 1505
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1506
    .line 1507
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 1508
    .line 1509
    if-eqz v2, :cond_28

    .line 1510
    .line 1511
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1512
    .line 1513
    .line 1514
    move-result v2

    .line 1515
    if-eqz v2, :cond_2c

    .line 1516
    .line 1517
    goto/16 :goto_1e

    .line 1518
    .line 1519
    :cond_2c
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 1520
    .line 1521
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    .line 1523
    .line 1524
    goto/16 :goto_1e

    .line 1525
    .line 1526
    :cond_2d
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1527
    .line 1528
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1529
    .line 1530
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1531
    .line 1532
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 1533
    .line 1534
    if-eqz v9, :cond_31

    .line 1535
    .line 1536
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1537
    .line 1538
    .line 1539
    move-result v9

    .line 1540
    if-eqz v9, :cond_2e

    .line 1541
    .line 1542
    goto/16 :goto_1e

    .line 1543
    .line 1544
    :cond_2e
    const-string/jumbo v9, "block"

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1548
    .line 1549
    .line 1550
    move-result v9

    .line 1551
    if-nez v9, :cond_2f

    .line 1552
    .line 1553
    sget-object v9, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    .line 1554
    .line 1555
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1556
    .line 1557
    .line 1558
    move-result v9

    .line 1559
    if-eqz v9, :cond_30

    .line 1560
    .line 1561
    :cond_2f
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 1562
    .line 1563
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1564
    .line 1565
    .line 1566
    :cond_30
    sget-boolean v9, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1567
    .line 1568
    sget-object v9, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1569
    .line 1570
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1571
    .line 1572
    .line 1573
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 1574
    .line 1575
    .line 1576
    move-result v9

    .line 1577
    if-eqz v9, :cond_31

    .line 1578
    .line 1579
    const-string/jumbo v9, "blockchn"

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1583
    .line 1584
    .line 1585
    move-result v9

    .line 1586
    if-eqz v9, :cond_31

    .line 1587
    .line 1588
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 1589
    .line 1590
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    .line 1592
    .line 1593
    :cond_31
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 1594
    .line 1595
    if-eqz v9, :cond_28

    .line 1596
    .line 1597
    const-string/jumbo v9, "idle"

    .line 1598
    .line 1599
    .line 1600
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v2

    .line 1604
    if-eqz v2, :cond_28

    .line 1605
    .line 1606
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 1607
    .line 1608
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    .line 1610
    .line 1611
    goto/16 :goto_1e

    .line 1612
    .line 1613
    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1614
    .line 1615
    .line 1616
    goto :goto_1f

    .line 1617
    :cond_33
    const-string/jumbo v0, "initAdjustRestrictionInternal error, no database!!"

    .line 1618
    .line 1619
    .line 1620
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    .line 1622
    .line 1623
    :goto_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1624
    .line 1625
    .line 1626
    move-result v0

    .line 1627
    if-nez v0, :cond_34

    .line 1628
    .line 1629
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1630
    .line 1631
    iput-object v4, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1632
    .line 1633
    goto :goto_20

    .line 1634
    :cond_34
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1635
    .line 1636
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1637
    .line 1638
    .line 1639
    sget-object v2, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 1640
    .line 1641
    iget-object v2, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    .line 1642
    .line 1643
    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1644
    .line 1645
    goto :goto_20

    .line 1646
    :cond_35
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1647
    .line 1648
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1649
    .line 1650
    .line 1651
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    .line 1652
    .line 1653
    .line 1654
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    .line 1655
    .line 1656
    .line 1657
    sget-object v2, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 1658
    .line 1659
    iget-object v3, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    .line 1660
    .line 1661
    iput-object v3, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 1662
    .line 1663
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    .line 1664
    .line 1665
    .line 1666
    iget-object v2, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    .line 1667
    .line 1668
    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1669
    .line 1670
    :goto_20
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1671
    .line 1672
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1673
    .line 1674
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1675
    .line 1676
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1677
    .line 1678
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1679
    .line 1680
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1681
    .line 1682
    .line 1683
    move v2, v7

    .line 1684
    :goto_21
    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1685
    .line 1686
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1687
    .line 1688
    .line 1689
    move-result v3

    .line 1690
    if-ge v2, v3, :cond_3b

    .line 1691
    .line 1692
    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1693
    .line 1694
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v3

    .line 1698
    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1699
    .line 1700
    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    .line 1701
    .line 1702
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1703
    .line 1704
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v4

    .line 1708
    check-cast v4, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1709
    .line 1710
    iget v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    .line 1711
    .line 1712
    sget-object v6, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1713
    .line 1714
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v6

    .line 1718
    check-cast v6, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1719
    .line 1720
    iget v6, v6, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    .line 1721
    .line 1722
    sget-object v9, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1723
    .line 1724
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v9

    .line 1728
    check-cast v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1729
    .line 1730
    iget v9, v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    .line 1731
    .line 1732
    sget-object v9, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1733
    .line 1734
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v9

    .line 1738
    check-cast v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1739
    .line 1740
    iget v9, v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    .line 1741
    .line 1742
    if-ne v6, v8, :cond_36

    .line 1743
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

    .line 1748
    .line 1749
    invoke-direct {v10, v4, v9, v3, v6}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    .line 1750
    .line 1751
    .line 1752
    if-ne v4, v8, :cond_37

    .line 1753
    .line 1754
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1755
    .line 1756
    :goto_23
    const/16 v3, 0x8

    .line 1757
    .line 1758
    goto :goto_24

    .line 1759
    :cond_37
    if-ne v4, v11, :cond_38

    .line 1760
    .line 1761
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1762
    .line 1763
    goto :goto_23

    .line 1764
    :cond_38
    if-ne v4, v5, :cond_39

    .line 1765
    .line 1766
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1767
    .line 1768
    goto :goto_23

    .line 1769
    :cond_39
    const/16 v3, 0x8

    .line 1770
    .line 1771
    if-ne v4, v3, :cond_3a

    .line 1772
    .line 1773
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1774
    .line 1775
    :cond_3a
    :goto_24
    add-int/2addr v2, v8

    .line 1776
    goto :goto_21

    .line 1777
    :cond_3b
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 1778
    .line 1779
    const-string v3, "MARsPolicyManager"

    .line 1780
    .line 1781
    if-eqz v2, :cond_3c

    .line 1782
    .line 1783
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1784
    .line 1785
    const-string/jumbo v5, "createPolicies---AL = "

    .line 1786
    .line 1787
    .line 1788
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1789
    .line 1790
    .line 1791
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1792
    .line 1793
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1794
    .line 1795
    .line 1796
    const-string v5, " , AR = "

    .line 1797
    .line 1798
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    .line 1800
    .line 1801
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1802
    .line 1803
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1804
    .line 1805
    .line 1806
    const-string v5, " , FZ = "

    .line 1807
    .line 1808
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    .line 1810
    .line 1811
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1812
    .line 1813
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v4

    .line 1820
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    .line 1822
    .line 1823
    :cond_3c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v4

    .line 1827
    const-string v5, "CscFeature_Common_ConfigBikeMode"

    .line 1828
    .line 1829
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v4

    .line 1833
    const-string v5, "bikemode"

    .line 1834
    .line 1835
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1836
    .line 1837
    .line 1838
    move-result v4

    .line 1839
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1840
    .line 1841
    const-string/jumbo v6, "sbkiepolicy"

    .line 1842
    .line 1843
    .line 1844
    const/16 v9, 0x9

    .line 1845
    .line 1846
    const/4 v10, 0x6

    .line 1847
    invoke-direct {v5, v10, v9, v6, v4}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    .line 1848
    .line 1849
    .line 1850
    iput-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1851
    .line 1852
    const-string/jumbo v4, "sys.config.mars.game_policy"

    .line 1853
    .line 1854
    .line 1855
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1856
    .line 1857
    .line 1858
    move-result v4

    .line 1859
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1860
    .line 1861
    const-string/jumbo v6, "gamePolicy"

    .line 1862
    .line 1863
    .line 1864
    const/16 v10, 0xa

    .line 1865
    .line 1866
    invoke-direct {v5, v9, v10, v6, v4}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    .line 1867
    .line 1868
    .line 1869
    iput-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1870
    .line 1871
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1872
    .line 1873
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1874
    .line 1875
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 1876
    .line 1877
    if-eqz v4, :cond_3d

    .line 1878
    .line 1879
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1880
    .line 1881
    if-eqz v4, :cond_3d

    .line 1882
    .line 1883
    iput-boolean v8, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1884
    .line 1885
    :cond_3d
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1886
    .line 1887
    if-eqz v4, :cond_3e

    .line 1888
    .line 1889
    sget-boolean v5, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1890
    .line 1891
    sget-object v5, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1892
    .line 1893
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1894
    .line 1895
    const-string/jumbo v9, "getFreecessEnabledConfig mIsKernelSupportFreecess = "

    .line 1896
    .line 1897
    .line 1898
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1899
    .line 1900
    .line 1901
    iget-boolean v9, v5, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 1902
    .line 1903
    const-string v10, "FreecessController"

    .line 1904
    .line 1905
    invoke-static {v10, v6, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1906
    .line 1907
    .line 1908
    iget-boolean v5, v5, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 1909
    .line 1910
    iput-boolean v5, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1911
    .line 1912
    :cond_3e
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 1913
    .line 1914
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v4

    .line 1918
    new-instance v5, Landroid/content/Intent;

    .line 1919
    .line 1920
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1921
    .line 1922
    .line 1923
    const-string/jumbo v6, "com.samsung.android.sm.ACTION_AUTO_RUN"

    .line 1924
    .line 1925
    .line 1926
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1927
    .line 1928
    .line 1929
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    .line 1930
    .line 1931
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1932
    .line 1933
    .line 1934
    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v4

    .line 1938
    if-eqz v4, :cond_40

    .line 1939
    .line 1940
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1941
    .line 1942
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    .line 1943
    .line 1944
    .line 1945
    move-result v4

    .line 1946
    if-eqz v4, :cond_40

    .line 1947
    .line 1948
    if-eqz v2, :cond_3f

    .line 1949
    .line 1950
    const-string v2, "App StartUp History is enabled"

    .line 1951
    .line 1952
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    .line 1954
    .line 1955
    :cond_3f
    sput-boolean v8, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 1956
    .line 1957
    :cond_40
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1958
    .line 1959
    if-eqz v2, :cond_41

    .line 1960
    .line 1961
    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1962
    .line 1963
    if-eqz v2, :cond_41

    .line 1964
    .line 1965
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 1966
    .line 1967
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1968
    .line 1969
    .line 1970
    new-instance v4, Landroid/content/IntentFilter;

    .line 1971
    .line 1972
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1973
    .line 1974
    .line 1975
    const-string/jumbo v5, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    .line 1976
    .line 1977
    .line 1978
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1979
    .line 1980
    .line 1981
    const-string/jumbo v5, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    .line 1982
    .line 1983
    .line 1984
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1985
    .line 1986
    .line 1987
    iget-object v5, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 1988
    .line 1989
    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 1990
    .line 1991
    invoke-virtual {v5, v2, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1992
    .line 1993
    .line 1994
    :cond_41
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1995
    .line 1996
    if-eqz v2, :cond_42

    .line 1997
    .line 1998
    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1999
    .line 2000
    if-eqz v2, :cond_42

    .line 2001
    .line 2002
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 2003
    .line 2004
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2005
    .line 2006
    .line 2007
    new-instance v4, Landroid/content/IntentFilter;

    .line 2008
    .line 2009
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2010
    .line 2011
    .line 2012
    const-string/jumbo v5, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2016
    .line 2017
    .line 2018
    const-string/jumbo v5, "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

    .line 2019
    .line 2020
    .line 2021
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2022
    .line 2023
    .line 2024
    iget-object v5, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 2025
    .line 2026
    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 2027
    .line 2028
    invoke-virtual {v5, v2, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2029
    .line 2030
    .line 2031
    :cond_42
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 2032
    .line 2033
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2034
    .line 2035
    .line 2036
    new-instance v4, Landroid/content/IntentFilter;

    .line 2037
    .line 2038
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2039
    .line 2040
    .line 2041
    const-string/jumbo v5, "com.sec.android.sdhms.action.HIGH_CPU_USAGE"

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2045
    .line 2046
    .line 2047
    const-string/jumbo v5, "com.sec.android.sdhms.action.HIGH_CPU_USAGE_APP"

    .line 2048
    .line 2049
    .line 2050
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2051
    .line 2052
    .line 2053
    iget-object v5, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 2054
    .line 2055
    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mTCPUReceiver:Lcom/android/server/am/MARsTrigger$5;

    .line 2056
    .line 2057
    invoke-virtual {v5, v2, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2058
    .line 2059
    .line 2060
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 2061
    .line 2062
    if-eqz v2, :cond_43

    .line 2063
    .line 2064
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2065
    .line 2066
    if-eqz v2, :cond_43

    .line 2067
    .line 2068
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2069
    .line 2070
    if-eqz v2, :cond_43

    .line 2071
    .line 2072
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2073
    .line 2074
    if-eqz v2, :cond_43

    .line 2075
    .line 2076
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2077
    .line 2078
    if-eqz v2, :cond_43

    .line 2079
    .line 2080
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2081
    .line 2082
    if-eqz v2, :cond_43

    .line 2083
    .line 2084
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2085
    .line 2086
    const-string v4, "FC = "

    .line 2087
    .line 2088
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2089
    .line 2090
    .line 2091
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2092
    .line 2093
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2094
    .line 2095
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2096
    .line 2097
    .line 2098
    const-string v4, ", AR = "

    .line 2099
    .line 2100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    .line 2102
    .line 2103
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2104
    .line 2105
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2106
    .line 2107
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2108
    .line 2109
    .line 2110
    const-string v4, ", PD = "

    .line 2111
    .line 2112
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    .line 2114
    .line 2115
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2116
    .line 2117
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2118
    .line 2119
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2120
    .line 2121
    .line 2122
    const-string v4, ", SB = "

    .line 2123
    .line 2124
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    .line 2126
    .line 2127
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2128
    .line 2129
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2130
    .line 2131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2132
    .line 2133
    .line 2134
    const-string v4, ", GA = "

    .line 2135
    .line 2136
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    .line 2138
    .line 2139
    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2140
    .line 2141
    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2142
    .line 2143
    invoke-static {v3, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2144
    .line 2145
    .line 2146
    :cond_43
    if-nez v1, :cond_49

    .line 2147
    .line 2148
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->cancelAllPolicy()V

    .line 2149
    .line 2150
    .line 2151
    goto/16 :goto_29

    .line 2152
    .line 2153
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2154
    .line 2155
    .line 2156
    move-result-object v1

    .line 2157
    if-nez v1, :cond_44

    .line 2158
    .line 2159
    goto/16 :goto_29

    .line 2160
    .line 2161
    :cond_44
    const-string/jumbo v2, "callee"

    .line 2162
    .line 2163
    .line 2164
    const/4 v3, 0x0

    .line 2165
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v2

    .line 2169
    const-string/jumbo v4, "caller"

    .line 2170
    .line 2171
    .line 2172
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v3

    .line 2176
    const-string/jumbo v4, "isblock"

    .line 2177
    .line 2178
    .line 2179
    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 2180
    .line 2181
    .line 2182
    move-result v4

    .line 2183
    const-string/jumbo v5, "requesttime"

    .line 2184
    .line 2185
    .line 2186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2187
    .line 2188
    .line 2189
    move-result-wide v8

    .line 2190
    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 2191
    .line 2192
    .line 2193
    move-result-wide v5

    .line 2194
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2195
    .line 2196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2197
    .line 2198
    .line 2199
    new-instance v1, Landroid/content/ContentValues;

    .line 2200
    .line 2201
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2202
    .line 2203
    .line 2204
    const-string/jumbo v8, "calleepackage"

    .line 2205
    .line 2206
    .line 2207
    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    .line 2209
    .line 2210
    const-string/jumbo v2, "callerpackage"

    .line 2211
    .line 2212
    .line 2213
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    .line 2215
    .line 2216
    const-string/jumbo v2, "isblocked"

    .line 2217
    .line 2218
    .line 2219
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v3

    .line 2223
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    .line 2225
    .line 2226
    const-string/jumbo v2, "requestTime"

    .line 2227
    .line 2228
    .line 2229
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 2230
    .line 2231
    .line 2232
    move-result-object v3

    .line 2233
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    .line 2235
    .line 2236
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 2237
    .line 2238
    monitor-enter v2

    .line 2239
    :try_start_13
    iget-object v3, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 2240
    .line 2241
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2242
    .line 2243
    .line 2244
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 2245
    .line 2246
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2247
    .line 2248
    .line 2249
    move-result v1

    .line 2250
    const/16 v3, 0x63

    .line 2251
    .line 2252
    if-le v1, v3, :cond_45

    .line 2253
    .line 2254
    invoke-virtual {v0, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    .line 2255
    .line 2256
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

    .line 2262
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

    .line 2266
    .line 2267
    .line 2268
    move-result-object v1

    .line 2269
    if-nez v1, :cond_46

    .line 2270
    .line 2271
    goto/16 :goto_29

    .line 2272
    .line 2273
    :cond_46
    const-string/jumbo v2, "value"

    .line 2274
    .line 2275
    .line 2276
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 2277
    .line 2278
    .line 2279
    move-result-object v1

    .line 2280
    check-cast v1, Lcom/android/server/am/mars/database/FASEntity;

    .line 2281
    .line 2282
    if-eqz v1, :cond_49

    .line 2283
    .line 2284
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2285
    .line 2286
    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 2287
    .line 2288
    .line 2289
    goto/16 :goto_29

    .line 2290
    .line 2291
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v1

    .line 2295
    if-nez v1, :cond_47

    .line 2296
    .line 2297
    goto :goto_29

    .line 2298
    :cond_47
    const-string/jumbo v2, "values"

    .line 2299
    .line 2300
    .line 2301
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 2302
    .line 2303
    .line 2304
    move-result-object v1

    .line 2305
    check-cast v1, Ljava/util/ArrayList;

    .line 2306
    .line 2307
    if-eqz v1, :cond_49

    .line 2308
    .line 2309
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2310
    .line 2311
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2312
    .line 2313
    .line 2314
    const-string v2, "MARsDBManager"

    .line 2315
    .line 2316
    const-string/jumbo v3, "updatePkgsToSMDB : begin --size "

    .line 2317
    .line 2318
    .line 2319
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2320
    .line 2321
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2322
    .line 2323
    .line 2324
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2325
    .line 2326
    .line 2327
    move-result v3

    .line 2328
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2329
    .line 2330
    .line 2331
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2332
    .line 2333
    .line 2334
    move-result-object v3

    .line 2335
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    .line 2337
    .line 2338
    :goto_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2339
    .line 2340
    .line 2341
    move-result v3

    .line 2342
    if-ge v7, v3, :cond_48

    .line 2343
    .line 2344
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2345
    .line 2346
    .line 2347
    move-result-object v3

    .line 2348
    check-cast v3, Lcom/android/server/am/mars/database/FASEntity;

    .line 2349
    .line 2350
    invoke-virtual {v0, v3}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 2351
    .line 2352
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

    .line 2358
    .line 2359
    .line 2360
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    .line 2361
    .line 2362
    .line 2363
    goto :goto_29

    .line 2364
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2365
    .line 2366
    const-string v3, "Exception on handling DB : "

    .line 2367
    .line 2368
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2369
    .line 2370
    .line 2371
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v3

    .line 2375
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    .line 2377
    .line 2378
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2379
    .line 2380
    .line 2381
    move-result-object v1

    .line 2382
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    .line 2384
    .line 2385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2386
    .line 2387
    .line 2388
    goto :goto_29

    .line 2389
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2390
    .line 2391
    invoke-virtual {v0, v8}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    .line 2392
    .line 2393
    .line 2394
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    .line 2395
    .line 2396
    .line 2397
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 2398
    .line 2399
    .line 2400
    move-result v1

    .line 2401
    if-eqz v1, :cond_49

    .line 2402
    .line 2403
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getFreezeExcludeListFromDB()V

    .line 2404
    .line 2405
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
