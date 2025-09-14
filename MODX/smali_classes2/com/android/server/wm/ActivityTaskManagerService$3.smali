.class public final Lcom/android/server/wm/ActivityTaskManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x1

    .line 9
    iget v5, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->$r8$classId:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const-string v3, ", isPkgStopped : "

    .line 15
    .line 16
    const-string v5, "ActivityTaskManager"

    .line 17
    .line 18
    const-string v6, "Active launch : App auto run is off : "

    .line 19
    .line 20
    const-string v7, "Checking for the Active launch isDataCleared :"

    .line 21
    .line 22
    const-string v8, "Checking for the Active launch isPkgEverLaunched :"

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_a

    .line 27
    .line 28
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    const-string v10, "com.samsung.DO_ACTIVE_LAUNCH"

    .line 33
    .line 34
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    const-string v11, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX_LAUNCHER"

    .line 39
    .line 40
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    const/4 v12, 0x0

    .line 45
    if-nez v11, :cond_2

    .line 46
    .line 47
    const-string v11, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX"

    .line 48
    .line 49
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v9, v12

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    move v9, v4

    .line 59
    :goto_1
    if-nez v10, :cond_3

    .line 60
    .line 61
    if-nez v9, :cond_3

    .line 62
    .line 63
    goto/16 :goto_a

    .line 64
    .line 65
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    const-string/jumbo v11, "package_name"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    if-eqz v10, :cond_5

    .line 85
    .line 86
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    :goto_2
    move v13, v0

    .line 91
    goto :goto_3

    .line 92
    :cond_5
    const-string/jumbo v13, "userid"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v13, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    goto :goto_2

    .line 100
    :goto_3
    xor-int/lit8 v14, v10, 0x1

    .line 101
    .line 102
    if-eqz v10, :cond_6

    .line 103
    .line 104
    invoke-static {v11}, Lcom/android/server/am/Pageboost;->startActiveLaunch(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 110
    .line 111
    .line 112
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    :try_start_1
    invoke-virtual {v0, v13, v11}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v15
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 119
    :try_start_2
    invoke-virtual {v0, v13, v11}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(ILjava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    invoke-virtual {v0, v12, v11}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(ILjava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v15, :cond_7

    .line 132
    .line 133
    if-nez v4, :cond_7

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v7, ", isPkgSuspended : "

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto/16 :goto_a

    .line 167
    .line 168
    :catch_0
    move-exception v0

    .line 169
    move v12, v15

    .line 170
    goto :goto_6

    .line 171
    :catch_1
    move-exception v0

    .line 172
    move v12, v15

    .line 173
    :goto_4
    const/4 v4, 0x1

    .line 174
    goto :goto_6

    .line 175
    :catch_2
    move-exception v0

    .line 176
    const/4 v4, 0x1

    .line 177
    const/4 v12, 0x0

    .line 178
    goto :goto_6

    .line 179
    :cond_8
    const/4 v4, 0x1

    .line 180
    const/4 v15, 0x0

    .line 181
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 182
    .line 183
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 184
    .line 185
    invoke-virtual {v0, v11, v13}, Landroid/app/ActivityManagerInternal;->getIsDataClearedInAms(Ljava/lang/String;I)Z

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    if-eqz v14, :cond_a

    .line 190
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    goto/16 :goto_a

    .line 207
    .line 208
    :cond_a
    if-eqz v9, :cond_b

    .line 209
    .line 210
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    goto :goto_5

    .line 215
    :cond_b
    const/4 v0, 0x0

    .line 216
    :goto_5
    const/4 v7, 0x4

    .line 217
    if-ne v0, v7, :cond_c

    .line 218
    .line 219
    const-string v0, "Checking for the Active launch getApplicationEnabledSetting"

    .line 220
    .line 221
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    goto/16 :goto_a

    .line 225
    .line 226
    :cond_c
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 227
    .line 228
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_d

    .line 238
    .line 239
    const/4 v7, 0x0

    .line 240
    invoke-virtual {v0, v7, v11}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-nez v0, :cond_d

    .line 245
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 259
    .line 260
    .line 261
    goto/16 :goto_a

    .line 262
    .line 263
    :catch_3
    move-exception v0

    .line 264
    move v7, v12

    .line 265
    goto :goto_4

    .line 266
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v7, "Failed active Launch package : "

    .line 269
    .line 270
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v7, ": "

    .line 277
    .line 278
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    move v15, v12

    .line 292
    :cond_d
    const-string v0, ", isDataCleared :"

    .line 293
    .line 294
    invoke-static {v8, v15, v3, v4, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {v5, v0, v14}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 299
    .line 300
    .line 301
    if-eqz v9, :cond_11

    .line 302
    .line 303
    if-eqz v11, :cond_11

    .line 304
    .line 305
    if-eqz v15, :cond_11

    .line 306
    .line 307
    if-nez v4, :cond_11

    .line 308
    .line 309
    if-nez v14, :cond_11

    .line 310
    .line 311
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    if-eqz v0, :cond_10

    .line 316
    .line 317
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    if-eqz v3, :cond_11

    .line 322
    .line 323
    const/4 v4, 0x1

    .line 324
    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 325
    .line 326
    .line 327
    :try_start_4
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    .line 328
    .line 329
    if-eqz v4, :cond_e

    .line 330
    .line 331
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 332
    .line 333
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 334
    .line 335
    if-eqz v1, :cond_e

    .line 336
    .line 337
    if-eqz v4, :cond_e

    .line 338
    .line 339
    const/16 v4, 0x64

    .line 340
    .line 341
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    iget-object v1, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 346
    .line 347
    const/16 v6, 0xf

    .line 348
    .line 349
    invoke-virtual {v1, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    .line 355
    .line 356
    goto :goto_7

    .line 357
    :catch_4
    move-exception v0

    .line 358
    goto :goto_8

    .line 359
    :cond_e
    :goto_7
    if-eqz v10, :cond_f

    .line 360
    .line 361
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 366
    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_f
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 378
    .line 379
    .line 380
    goto :goto_9

    .line 381
    :goto_8
    const-string v1, "No activity to handle assist action."

    .line 382
    .line 383
    invoke-static {v5, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .line 385
    .line 386
    :goto_9
    const-string/jumbo v0, "starting Active launch"

    .line 387
    .line 388
    .line 389
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    goto :goto_a

    .line 393
    :cond_10
    const-string v0, "Received intent is null"

    .line 394
    .line 395
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    :cond_11
    :goto_a
    return-void

    .line 399
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    const-string v4, "com.samsung.CHECK_COOLDOWN_LEVEL"

    .line 404
    .line 405
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_17

    .line 410
    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    if-nez v0, :cond_12

    .line 416
    .line 417
    goto :goto_b

    .line 418
    :cond_12
    const-string v2, "check_cooldown_level"

    .line 419
    .line 420
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-eq v2, v3, :cond_13

    .line 425
    .line 426
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 427
    .line 428
    iput v2, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    .line 429
    .line 430
    :cond_13
    const-string v2, "batt_temp_level"

    .line 431
    .line 432
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    if-eq v2, v3, :cond_14

    .line 437
    .line 438
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 439
    .line 440
    iput v2, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    .line 441
    .line 442
    :cond_14
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 443
    .line 444
    const-string/jumbo v4, "overheat_id"

    .line 445
    .line 446
    .line 447
    const v5, 0x10403fa

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    iput v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mOverheatTextId:I

    .line 455
    .line 456
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 457
    .line 458
    iget v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    .line 459
    .line 460
    if-ne v4, v3, :cond_15

    .line 461
    .line 462
    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    .line 463
    .line 464
    if-eq v2, v3, :cond_16

    .line 465
    .line 466
    :cond_15
    const-string v2, "check_cooldown_list"

    .line 467
    .line 468
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    if-eqz v3, :cond_16

    .line 473
    .line 474
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 475
    .line 476
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    .line 477
    .line 478
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 479
    .line 480
    .line 481
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 482
    .line 483
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Ljava/util/HashMap;

    .line 488
    .line 489
    iput-object v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    .line 490
    .line 491
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    const-string v2, "VZWLevel = "

    .line 494
    .line 495
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 499
    .line 500
    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    .line 501
    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v2, ", OverheatLevel = "

    .line 506
    .line 507
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 511
    .line 512
    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    .line 513
    .line 514
    const-string v2, "checkingSIOP"

    .line 515
    .line 516
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 517
    .line 518
    .line 519
    :cond_17
    :goto_b
    return-void

    .line 520
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    const-string v3, "mAppJumpBlockReceiver get intent="

    .line 523
    .line 524
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    const-string v3, "AppJumpBlockTool"

    .line 535
    .line 536
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 540
    .line 541
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 542
    .line 543
    invoke-static {v1, v0}, Lcom/samsung/android/core/AppJumpBlockTool;->resetAlwaysAllowList(Landroid/content/Context;Landroid/content/Intent;)V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :pswitch_2
    if-eqz v0, :cond_18

    .line 548
    .line 549
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 550
    .line 551
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsLock:Ljava/lang/Object;

    .line 552
    .line 553
    monitor-enter v2

    .line 554
    :try_start_5
    const-string v4, "android.intent.extra.UID"

    .line 555
    .line 556
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 561
    .line 562
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getIdsClearSet()Ljava/util/Set;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 571
    .line 572
    .line 573
    :try_start_6
    new-instance v3, Ljava/io/ObjectOutputStream;

    .line 574
    .line 575
    new-instance v0, Ljava/io/FileOutputStream;

    .line 576
    .line 577
    const-string v4, "/data/system/idsFile.txt"

    .line 578
    .line 579
    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 583
    .line 584
    .line 585
    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 586
    .line 587
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getIdsClearSet()Ljava/util/Set;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 592
    .line 593
    .line 594
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 595
    .line 596
    .line 597
    goto :goto_d

    .line 598
    :catchall_0
    move-exception v0

    .line 599
    goto :goto_e

    .line 600
    :catchall_1
    move-exception v0

    .line 601
    move-object v1, v0

    .line 602
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 603
    .line 604
    .line 605
    goto :goto_c

    .line 606
    :catchall_2
    move-exception v0

    .line 607
    move-object v3, v0

    .line 608
    :try_start_a
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 609
    .line 610
    .line 611
    :goto_c
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 612
    :catch_5
    :try_start_b
    const-string v0, "ActivityTaskManager"

    .line 613
    .line 614
    const-string v1, "Error writing IDS file during package update broadcast."

    .line 615
    .line 616
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .line 618
    .line 619
    :goto_d
    monitor-exit v2

    .line 620
    goto :goto_f

    .line 621
    :goto_e
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 622
    throw v0

    .line 623
    :cond_18
    :goto_f
    return-void

    .line 624
    nop

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
