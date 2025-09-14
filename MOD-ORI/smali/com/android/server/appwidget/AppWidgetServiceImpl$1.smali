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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
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

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    const-string v9, "android.intent.extra.user_handle"

    .line 17
    .line 18
    const/16 v10, -0x2710

    .line 19
    .line 20
    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v9

    .line 24
    if-nez v8, :cond_0

    .line 25
    .line 26
    const-string v0, "AppWidgetServiceImpl"

    .line 27
    .line 28
    const-string v1, "action is null"

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    sget-boolean v10, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 35
    .line 36
    if-eqz v10, :cond_1

    .line 37
    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    const-string v12, "AppWidgetServiceImpl"

    .line 43
    .line 44
    const-string v13, "Received broadcast: "

    .line 45
    .line 46
    const-string v14, " on user "

    .line 47
    .line 48
    const-string v15, " pkg:"

    .line 49
    .line 50
    invoke-static {v9, v13, v8, v14, v15}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    invoke-static {v13, v11, v12}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    const/4 v11, 0x0

    .line 58
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v12

    .line 62
    sparse-switch v12, :sswitch_data_0

    .line 63
    .line 64
    .line 65
    :goto_0
    move v8, v6

    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :sswitch_0
    const-string v12, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 69
    .line 70
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-nez v8, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/16 v8, 0xa

    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :sswitch_1
    const-string v12, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 82
    .line 83
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-nez v8, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const/16 v8, 0x9

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :sswitch_2
    const-string v12, "android.intent.action.PACKAGE_UNSTOPPED"

    .line 95
    .line 96
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-nez v8, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    move v8, v2

    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :sswitch_3
    const-string v12, "android.intent.action.TIME_SET"

    .line 107
    .line 108
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-nez v8, :cond_5

    .line 113
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

    .line 118
    .line 119
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-nez v8, :cond_6

    .line 124
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

    .line 129
    .line 130
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-nez v8, :cond_7

    .line 135
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

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-nez v8, :cond_8

    .line 147
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

    .line 152
    .line 153
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-nez v8, :cond_9

    .line 158
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

    .line 163
    .line 164
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-nez v8, :cond_a

    .line 169
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

    .line 174
    .line 175
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-nez v8, :cond_b

    .line 180
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

    .line 185
    .line 186
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    if-nez v8, :cond_c

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_c
    move v8, v5

    .line 194
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 195
    .line 196
    .line 197
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-static {v2, v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_f

    .line 207
    .line 208
    :pswitch_0
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 209
    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-static {v2, v1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 215
    .line 216
    .line 217
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 218
    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    invoke-static {v2, v1, v5, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mupdateWidgetPackageSuspensionMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_f

    .line 227
    .line 228
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resetPreviewRecord(I)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_f

    .line 240
    .line 241
    :pswitch_2
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resetPreviewRecord(I)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_f

    .line 253
    .line 254
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 255
    .line 256
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 257
    .line 258
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 271
    .line 272
    if-eqz v8, :cond_e

    .line 273
    .line 274
    if-eqz v3, :cond_e

    .line 275
    .line 276
    invoke-virtual {v8, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-nez v8, :cond_d

    .line 281
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

    .line 286
    .line 287
    move v3, v7

    .line 288
    :goto_3
    if-eqz v3, :cond_10

    .line 289
    .line 290
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 291
    .line 292
    if-eqz v8, :cond_10

    .line 293
    .line 294
    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 295
    .line 296
    check-cast v8, Landroid/util/ArrayMap;

    .line 297
    .line 298
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    if-eqz v9, :cond_f

    .line 311
    .line 312
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 317
    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 319
    .line 320
    .line 321
    move-result-wide v12

    .line 322
    iput v5, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 323
    .line 324
    iput-wide v12, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_f
    const-string v8, "AppWidgetServiceImpl"

    .line 328
    .line 329
    const-string v9, "Template widget preview\'s records are cleared because of locale changed."

    .line 330
    .line 331
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    :cond_10
    iget v8, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 335
    .line 336
    iget v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mScreenDensity:I

    .line 337
    .line 338
    if-eq v8, v9, :cond_11

    .line 339
    .line 340
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 341
    .line 342
    invoke-virtual {v8}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    new-instance v9, Landroid/graphics/Point;

    .line 347
    .line 348
    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 352
    .line 353
    .line 354
    iget v8, v9, Landroid/graphics/Point;->x:I

    .line 355
    .line 356
    mul-int/2addr v8, v2

    .line 357
    iget v2, v9, Landroid/graphics/Point;->y:I

    .line 358
    .line 359
    mul-int/2addr v8, v2

    .line 360
    iput v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 361
    .line 362
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 363
    .line 364
    iput v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mScreenDensity:I

    .line 365
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

    .line 370
    .line 371
    if-eqz v1, :cond_2a

    .line 372
    .line 373
    :cond_12
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 374
    .line 375
    monitor-enter v2

    .line 376
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 377
    .line 378
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 379
    .line 380
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 381
    .line 382
    .line 383
    new-instance v8, Ljava/util/HashSet;

    .line 384
    .line 385
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 389
    .line 390
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

    .line 396
    .line 397
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v13

    .line 401
    check-cast v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 402
    .line 403
    if-nez v13, :cond_13

    .line 404
    .line 405
    const-string v13, "AppWidgetServiceImpl"

    .line 406
    .line 407
    new-instance v14, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string/jumbo v15, "onConfigurationChanged installedProviders is null skip index: "

    .line 413
    .line 414
    .line 415
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v14

    .line 425
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    goto/16 :goto_7

    .line 429
    .line 430
    :catchall_0
    move-exception v0

    .line 431
    goto/16 :goto_9

    .line 432
    .line 433
    :cond_13
    iget-object v14, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 434
    .line 435
    if-eqz v1, :cond_14

    .line 436
    .line 437
    if-eqz v14, :cond_14

    .line 438
    .line 439
    iget v14, v14, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 440
    .line 441
    and-int/2addr v14, v4

    .line 442
    if-eqz v14, :cond_14

    .line 443
    .line 444
    goto :goto_7

    .line 445
    :cond_14
    invoke-virtual {v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 446
    .line 447
    .line 448
    move-result v14

    .line 449
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 450
    .line 451
    invoke-virtual {v15, v14}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 452
    .line 453
    .line 454
    move-result v15

    .line 455
    if-eqz v15, :cond_1a

    .line 456
    .line 457
    invoke-virtual {v0, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    .line 458
    .line 459
    .line 460
    move-result v15

    .line 461
    if-eqz v15, :cond_15

    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_15
    invoke-virtual {v0, v14, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 465
    .line 466
    .line 467
    iget-object v14, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 468
    .line 469
    invoke-virtual {v8, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v14

    .line 473
    if-nez v14, :cond_1a

    .line 474
    .line 475
    iget-object v14, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 476
    .line 477
    iget-object v14, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 478
    .line 479
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v14

    .line 483
    invoke-virtual {v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 484
    .line 485
    .line 486
    move-result v15

    .line 487
    if-ne v15, v12, :cond_16

    .line 488
    .line 489
    if-eqz v14, :cond_16

    .line 490
    .line 491
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v16

    .line 495
    if-eqz v16, :cond_16

    .line 496
    .line 497
    goto :goto_7

    .line 498
    :cond_16
    invoke-virtual {v0, v14, v8, v15, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    .line 499
    .line 500
    .line 501
    move-result v10

    .line 502
    if-eqz v10, :cond_19

    .line 503
    .line 504
    if-nez v11, :cond_17

    .line 505
    .line 506
    new-instance v11, Landroid/util/SparseIntArray;

    .line 507
    .line 508
    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    .line 509
    .line 510
    .line 511
    :cond_17
    iget-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 512
    .line 513
    invoke-virtual {v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 514
    .line 515
    .line 516
    move-result v12

    .line 517
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 518
    .line 519
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 520
    .line 521
    invoke-virtual {v10, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    .line 522
    .line 523
    .line 524
    move-result v10

    .line 525
    const/16 v13, -0xa

    .line 526
    .line 527
    if-eq v10, v13, :cond_18

    .line 528
    .line 529
    move v12, v10

    .line 530
    :cond_18
    invoke-virtual {v11, v12, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 531
    .line 532
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

    .line 537
    .line 538
    :cond_1b
    if-eqz v11, :cond_1c

    .line 539
    .line 540
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    :goto_8
    if-ge v5, v1, :cond_1c

    .line 545
    .line 546
    invoke-virtual {v11, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    invoke-virtual {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 551
    .line 552
    .line 553
    add-int/2addr v5, v7

    .line 554
    goto :goto_8

    .line 555
    :cond_1c
    monitor-exit v2

    .line 556
    goto/16 :goto_f

    .line 557
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

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    if-ne v1, v3, :cond_2a

    .line 568
    .line 569
    const-string v1, "AppWidgetServiceImpl"

    .line 570
    .line 571
    const-string/jumbo v2, "call onEmergencyModeDisabled"

    .line 572
    .line 573
    .line 574
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    :try_start_1
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 578
    .line 579
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monEmergencyModeDisabled(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 580
    .line 581
    .line 582
    goto/16 :goto_f

    .line 583
    .line 584
    :catch_0
    move-exception v0

    .line 585
    const-string v1, "AppWidgetServiceImpl"

    .line 586
    .line 587
    const-string/jumbo v2, "excepion "

    .line 588
    .line 589
    .line 590
    invoke-static {v0, v2, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_f

    .line 594
    .line 595
    :pswitch_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->stayStopped()Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-nez v2, :cond_1d

    .line 600
    .line 601
    return-void

    .line 602
    :cond_1d
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 603
    .line 604
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    const-string v2, "android.intent.extra.UID"

    .line 608
    .line 609
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    if-eq v2, v6, :cond_2a

    .line 618
    .line 619
    if-nez v1, :cond_1e

    .line 620
    .line 621
    goto/16 :goto_f

    .line 622
    .line 623
    :cond_1e
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    if-nez v1, :cond_1f

    .line 628
    .line 629
    goto/16 :goto_f

    .line 630
    .line 631
    :cond_1f
    :try_start_2
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 632
    .line 633
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 634
    .line 635
    .line 636
    move-result v4

    .line 637
    invoke-interface {v3, v1, v4}, Landroid/content/pm/IPackageManager;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    .line 638
    .line 639
    .line 640
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 641
    if-eqz v10, :cond_20

    .line 642
    .line 643
    const-string v4, "AppWidgetServiceImpl"

    .line 644
    .line 645
    const-string v6, "Updating package stopped masked state for uid "

    .line 646
    .line 647
    const-string v8, " package "

    .line 648
    .line 649
    const-string v9, " isStopped "

    .line 650
    .line 651
    invoke-static {v2, v6, v8, v1, v9}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    move-result-object v6

    .line 655
    invoke-static {v4, v6, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 656
    .line 657
    .line 658
    :cond_20
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 659
    .line 660
    monitor-enter v4

    .line 661
    :try_start_3
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 662
    .line 663
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 664
    .line 665
    .line 666
    move-result v6

    .line 667
    move v8, v5

    .line 668
    :goto_a
    if-ge v8, v6, :cond_29

    .line 669
    .line 670
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 671
    .line 672
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v9

    .line 676
    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 677
    .line 678
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 679
    .line 680
    iget v12, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 681
    .line 682
    if-ne v2, v12, :cond_28

    .line 683
    .line 684
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 685
    .line 686
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v10

    .line 690
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v10

    .line 694
    if-nez v10, :cond_21

    .line 695
    .line 696
    goto/16 :goto_d

    .line 697
    .line 698
    :cond_21
    iget-boolean v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 699
    .line 700
    iput-boolean v3, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 701
    .line 702
    if-eq v3, v10, :cond_28

    .line 703
    .line 704
    invoke-virtual {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    .line 705
    .line 706
    .line 707
    move-result v10

    .line 708
    if-eqz v10, :cond_22

    .line 709
    .line 710
    invoke-virtual {v0, v9, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_d

    .line 717
    .line 718
    :catchall_1
    move-exception v0

    .line 719
    goto/16 :goto_e

    .line 720
    .line 721
    :cond_22
    invoke-virtual {v0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 722
    .line 723
    .line 724
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 725
    .line 726
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 727
    .line 728
    .line 729
    move-result v10

    .line 730
    if-lez v10, :cond_24

    .line 731
    .line 732
    new-array v12, v10, [I

    .line 733
    .line 734
    move v13, v5

    .line 735
    :goto_b
    if-ge v13, v10, :cond_23

    .line 736
    .line 737
    iget-object v14, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 738
    .line 739
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v14

    .line 743
    check-cast v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 744
    .line 745
    iget v14, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 746
    .line 747
    aput v14, v12, v13

    .line 748
    .line 749
    add-int/2addr v13, v7

    .line 750
    goto :goto_b

    .line 751
    :cond_23
    invoke-virtual {v0, v9, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v0, v9, v12, v5, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[IZZ)V

    .line 755
    .line 756
    .line 757
    :cond_24
    iget-object v12, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 758
    .line 759
    invoke-virtual {v12}, Landroid/util/IntArray;->size()I

    .line 760
    .line 761
    .line 762
    move-result v12

    .line 763
    if-lez v12, :cond_28

    .line 764
    .line 765
    sget-boolean v13, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 766
    .line 767
    if-eqz v13, :cond_25

    .line 768
    .line 769
    const-string v13, "AppWidgetServiceImpl"

    .line 770
    .line 771
    new-instance v14, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .line 775
    .line 776
    const-string v15, "Sending missed deleted broadcasts for "

    .line 777
    .line 778
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    iget-object v15, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 782
    .line 783
    iget-object v15, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 784
    .line 785
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    const-string v15, " "

    .line 789
    .line 790
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    iget-object v15, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 794
    .line 795
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v14

    .line 802
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    .line 804
    .line 805
    :cond_25
    move v13, v5

    .line 806
    :goto_c
    if-ge v13, v12, :cond_26

    .line 807
    .line 808
    iget-object v14, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 809
    .line 810
    iget-object v15, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 811
    .line 812
    iget v14, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 813
    .line 814
    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 815
    .line 816
    .line 817
    move-result-object v14

    .line 818
    iget-object v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 819
    .line 820
    invoke-virtual {v11, v13}, Landroid/util/IntArray;->get(I)I

    .line 821
    .line 822
    .line 823
    move-result v11

    .line 824
    new-instance v7, Landroid/content/Intent;

    .line 825
    .line 826
    const-string v5, "android.appwidget.action.APPWIDGET_DELETED"

    .line 827
    .line 828
    invoke-direct {v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    const/high16 v5, 0x10000000

    .line 832
    .line 833
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v7, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 837
    .line 838
    .line 839
    const-string v5, "appWidgetId"

    .line 840
    .line 841
    invoke-virtual {v7, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    .line 843
    .line 844
    const/4 v5, 0x0

    .line 845
    invoke-virtual {v0, v7, v14, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 846
    .line 847
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

    .line 853
    .line 854
    invoke-virtual {v7}, Landroid/util/IntArray;->clear()V

    .line 855
    .line 856
    .line 857
    if-nez v10, :cond_27

    .line 858
    .line 859
    invoke-virtual {v0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 860
    .line 861
    .line 862
    :cond_27
    iget-object v7, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 863
    .line 864
    iget v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 865
    .line 866
    invoke-static {v7}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 867
    .line 868
    .line 869
    move-result-object v7

    .line 870
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 871
    .line 872
    .line 873
    move-result v7

    .line 874
    invoke-virtual {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 875
    .line 876
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

    .line 881
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

    .line 888
    .line 889
    const-string v2, "Failed to query package stopped state"

    .line 890
    .line 891
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .line 893
    .line 894
    goto :goto_f

    .line 895
    :pswitch_6
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 896
    .line 897
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 898
    .line 899
    .line 900
    move-result v3

    .line 901
    invoke-static {v2, v1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 902
    .line 903
    .line 904
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 905
    .line 906
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 907
    .line 908
    .line 909
    move-result v0

    .line 910
    const/4 v3, 0x1

    .line 911
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mupdateWidgetPackageSuspensionMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    .line 912
    .line 913
    .line 914
    goto :goto_f

    .line 915
    :pswitch_7
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 916
    .line 917
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 918
    .line 919
    monitor-enter v1

    .line 920
    :try_start_4
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 921
    .line 922
    invoke-virtual {v0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 923
    .line 924
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

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
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
