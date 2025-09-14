.class public final Lcom/android/server/am/DynamicHiddenApp$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/DynamicHiddenApp;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DynamicHiddenApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

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
    .locals 13

    .line 1
    if-eqz p2, :cond_3b

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string/jumbo v0, "com.android.server.am.BROADCAST_DHA_DEBUG_ON"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    if-nez p1, :cond_3

    .line 24
    .line 25
    const-string/jumbo p0, "ro.debug_level"

    .line 26
    .line 27
    .line 28
    const-string p1, "Unknown"

    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    const-string p1, "0x4f4c"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 50
    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void

    .line 54
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string/jumbo v1, "com.android.server.am.BROADCAST_SET_DHA_PARAMETER"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const-string v1, "ActivityManager"

    .line 66
    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    const-string/jumbo p0, "updateParamsFile is blocked by ship build"

    .line 70
    .line 71
    .line 72
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto/16 :goto_8

    .line 76
    .line 77
    :cond_4
    const-string/jumbo p1, "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const-string v2, " - value is null"

    .line 89
    .line 90
    const/4 v3, 0x4

    .line 91
    const/4 v4, 0x0

    .line 92
    if-eqz p1, :cond_30

    .line 93
    .line 94
    const-string p1, "BROADCAST_SET_LMKD_INTENT RECEIVED"

    .line 95
    .line 96
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_2f

    .line 104
    .line 105
    const-string p2, "LMKD_INTENT"

    .line 106
    .line 107
    const-string/jumbo v1, "send to updateParamsIntent"

    .line 108
    .line 109
    .line 110
    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    .line 116
    .line 117
    if-eqz p0, :cond_3b

    .line 118
    .line 119
    const-string p2, "DynamicHiddenApp_BgAppPropManager"

    .line 120
    .line 121
    const-string v1, "Start updateParamsIntent"

    .line 122
    .line 123
    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_3b

    .line 139
    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    if-eqz v6, :cond_2e

    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    const-string/jumbo v7, "dha_lmk_array mLMKArray ="

    .line 157
    .line 158
    .line 159
    iget-object v8, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 160
    .line 161
    iget-object v9, v8, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 162
    .line 163
    const-string/jumbo v10, "name = [ "

    .line 164
    .line 165
    .line 166
    const-string v11, " ], value = [ "

    .line 167
    .line 168
    const-string v12, " ]"

    .line 169
    .line 170
    invoke-static {v10, v5, v11, v6, v12}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-static {p2, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :try_start_0
    const-string/jumbo v10, "ro.slmk.dha_cached_max"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-eqz v10, :cond_5

    .line 185
    .line 186
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    if-lez v7, :cond_2a

    .line 194
    .line 195
    sput v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 196
    .line 197
    iput v7, v9, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 198
    .line 199
    invoke-virtual {v9}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_4

    .line 203
    .line 204
    :catch_0
    move-exception v7

    .line 205
    goto/16 :goto_6

    .line 206
    .line 207
    :cond_5
    const-string/jumbo v10, "ro.slmk.dha_cached_min"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-eqz v10, :cond_6

    .line 215
    .line 216
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    if-lez v7, :cond_2a

    .line 224
    .line 225
    sput v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    .line 226
    .line 227
    iput v7, v9, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 228
    .line 229
    invoke-virtual {v9}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_4

    .line 233
    .line 234
    :cond_6
    const-string/jumbo v10, "ro.slmk.dha_empty_max"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v10

    .line 241
    if-eqz v10, :cond_7

    .line 242
    .line 243
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    if-lez v7, :cond_2a

    .line 251
    .line 252
    sput v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 253
    .line 254
    iput v7, v9, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 255
    .line 256
    invoke-virtual {v9}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_4

    .line 260
    .line 261
    :cond_7
    const-string/jumbo v10, "ro.slmk.dha_empty_min"

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-eqz v10, :cond_8

    .line 269
    .line 270
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    if-lez v7, :cond_2a

    .line 278
    .line 279
    sput v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    .line 280
    .line 281
    iput v7, v9, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    .line 282
    .line 283
    invoke-virtual {v9}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_4

    .line 287
    .line 288
    :cond_8
    const-string/jumbo v10, "ro.slmk.dha_lmk_scale"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    if-eqz v10, :cond_9

    .line 296
    .line 297
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    sput v7, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    .line 302
    .line 303
    :goto_2
    move v6, v0

    .line 304
    move v5, v4

    .line 305
    goto/16 :goto_5

    .line 306
    .line 307
    :cond_9
    const-string/jumbo v10, "ro.slmk.dha_lmk_array"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    if-eqz v10, :cond_a

    .line 315
    .line 316
    sput-object v6, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    .line 317
    .line 318
    new-instance v10, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-static {p2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    goto :goto_2

    .line 336
    :cond_a
    const-string/jumbo v7, "ro.slmk.dha_pwhl_key"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    if-eqz v7, :cond_b

    .line 344
    .line 345
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    sput v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    .line 350
    .line 351
    :goto_3
    move v5, v0

    .line 352
    move v6, v4

    .line 353
    goto/16 :goto_5

    .line 354
    .line 355
    :cond_b
    const-string/jumbo v7, "ro.slmk.dha_pwhl_key_knox"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    if-eqz v7, :cond_c

    .line 363
    .line 364
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v7

    .line 368
    sput v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_c
    const-string/jumbo v7, "ro.slmk.ams_exception_enable"

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    if-eqz v7, :cond_d

    .line 379
    .line 380
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    sput-boolean v7, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    .line 385
    .line 386
    goto/16 :goto_4

    .line 387
    .line 388
    :cond_d
    const-string/jumbo v7, "ro.slmk.fha_cached_max"

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    if-eqz v7, :cond_e

    .line 396
    .line 397
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    iget-object v10, v8, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 402
    .line 403
    if-eqz v10, :cond_2a

    .line 404
    .line 405
    iput v7, v10, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 406
    .line 407
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_4

    .line 411
    .line 412
    :cond_e
    const-string/jumbo v7, "ro.slmk.fha_empty_rate"

    .line 413
    .line 414
    .line 415
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v7

    .line 419
    if-eqz v7, :cond_f

    .line 420
    .line 421
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    iget-object v10, v8, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 426
    .line 427
    if-eqz v10, :cond_2a

    .line 428
    .line 429
    sput v7, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 430
    .line 431
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_4

    .line 435
    .line 436
    :cond_f
    const-string/jumbo v7, "ro.slmk.cam_dha_ver"

    .line 437
    .line 438
    .line 439
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    if-eqz v7, :cond_10

    .line 444
    .line 445
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    sput v7, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    .line 450
    .line 451
    goto/16 :goto_4

    .line 452
    .line 453
    :cond_10
    const-string/jumbo v7, "ro.slmk.enable_picked_adj"

    .line 454
    .line 455
    .line 456
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v7

    .line 460
    if-eqz v7, :cond_11

    .line 461
    .line 462
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 463
    .line 464
    .line 465
    move-result v7

    .line 466
    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    .line 467
    .line 468
    goto/16 :goto_4

    .line 469
    .line 470
    :cond_11
    const-string/jumbo v7, "ro.slmk.dha_2ndprop_thMB"

    .line 471
    .line 472
    .line 473
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v7

    .line 477
    if-eqz v7, :cond_12

    .line 478
    .line 479
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    move-result v7

    .line 483
    sput v7, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 484
    .line 485
    goto/16 :goto_4

    .line 486
    .line 487
    :cond_12
    const-string/jumbo v7, "ro.slmk.low"

    .line 488
    .line 489
    .line 490
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v7

    .line 494
    if-eqz v7, :cond_13

    .line 495
    .line 496
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 501
    .line 502
    .line 503
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    goto/16 :goto_4

    .line 507
    .line 508
    :cond_13
    const-string/jumbo v7, "ro.slmk.medium"

    .line 509
    .line 510
    .line 511
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v7

    .line 515
    if-eqz v7, :cond_14

    .line 516
    .line 517
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    invoke-static {v0, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 522
    .line 523
    .line 524
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    goto/16 :goto_4

    .line 528
    .line 529
    :cond_14
    const-string/jumbo v7, "ro.slmk.critical"

    .line 530
    .line 531
    .line 532
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v7

    .line 536
    if-eqz v7, :cond_15

    .line 537
    .line 538
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    move-result v7

    .line 542
    const/4 v10, 0x2

    .line 543
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 544
    .line 545
    .line 546
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    goto/16 :goto_4

    .line 550
    .line 551
    :cond_15
    const-string/jumbo v7, "ro.slmk.debug"

    .line 552
    .line 553
    .line 554
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v7

    .line 558
    if-eqz v7, :cond_16

    .line 559
    .line 560
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 561
    .line 562
    .line 563
    move-result v7

    .line 564
    const/4 v10, 0x3

    .line 565
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 566
    .line 567
    .line 568
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 569
    .line 570
    .line 571
    goto/16 :goto_4

    .line 572
    .line 573
    :cond_16
    const-string/jumbo v7, "ro.slmk.critical_upgrade"

    .line 574
    .line 575
    .line 576
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v7

    .line 580
    if-eqz v7, :cond_17

    .line 581
    .line 582
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 583
    .line 584
    .line 585
    move-result v7

    .line 586
    invoke-static {v3, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 587
    .line 588
    .line 589
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 590
    .line 591
    .line 592
    goto/16 :goto_4

    .line 593
    .line 594
    :cond_17
    const-string/jumbo v7, "ro.slmk.upgrade_pressure"

    .line 595
    .line 596
    .line 597
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v7

    .line 601
    const/4 v10, 0x5

    .line 602
    if-eqz v7, :cond_18

    .line 603
    .line 604
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 605
    .line 606
    .line 607
    move-result v7

    .line 608
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 609
    .line 610
    .line 611
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 612
    .line 613
    .line 614
    move-result v7

    .line 615
    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    .line 616
    .line 617
    goto/16 :goto_4

    .line 618
    .line 619
    :cond_18
    const-string/jumbo v7, "ro.slmk.downgrade_pressure"

    .line 620
    .line 621
    .line 622
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v7

    .line 626
    const/4 v11, 0x6

    .line 627
    if-eqz v7, :cond_19

    .line 628
    .line 629
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result v7

    .line 633
    invoke-static {v11, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 634
    .line 635
    .line 636
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 637
    .line 638
    .line 639
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    move-result v7

    .line 643
    mul-int/2addr v7, v10

    .line 644
    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    .line 645
    .line 646
    goto/16 :goto_4

    .line 647
    .line 648
    :cond_19
    const-string/jumbo v7, "ro.slmk.kill_heaviest_task"

    .line 649
    .line 650
    .line 651
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result v7

    .line 655
    if-eqz v7, :cond_1a

    .line 656
    .line 657
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 658
    .line 659
    .line 660
    move-result v7

    .line 661
    const/4 v10, 0x7

    .line 662
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 663
    .line 664
    .line 665
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 666
    .line 667
    .line 668
    goto/16 :goto_4

    .line 669
    .line 670
    :cond_1a
    const-string/jumbo v7, "ro.slmk.kill_timeout_ms"

    .line 671
    .line 672
    .line 673
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result v7

    .line 677
    const/16 v12, 0x8

    .line 678
    .line 679
    if-eqz v7, :cond_1b

    .line 680
    .line 681
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 682
    .line 683
    .line 684
    move-result v7

    .line 685
    invoke-static {v12, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 686
    .line 687
    .line 688
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 689
    .line 690
    .line 691
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    move-result v7

    .line 695
    mul-int/lit8 v7, v7, 0xa

    .line 696
    .line 697
    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    .line 698
    .line 699
    goto/16 :goto_4

    .line 700
    .line 701
    :cond_1b
    const-string/jumbo v7, "ro.slmk.use_minfree_levels"

    .line 702
    .line 703
    .line 704
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v7

    .line 708
    if-eqz v7, :cond_1c

    .line 709
    .line 710
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 711
    .line 712
    .line 713
    move-result v7

    .line 714
    const/16 v10, 0x9

    .line 715
    .line 716
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 717
    .line 718
    .line 719
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 720
    .line 721
    .line 722
    move-result v7

    .line 723
    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    .line 724
    .line 725
    goto/16 :goto_4

    .line 726
    .line 727
    :cond_1c
    const-string/jumbo v7, "ro.slmk.enable_cmarbinfree_sub"

    .line 728
    .line 729
    .line 730
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result v7

    .line 734
    if-eqz v7, :cond_1d

    .line 735
    .line 736
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 737
    .line 738
    .line 739
    move-result v7

    .line 740
    const/16 v10, 0xb

    .line 741
    .line 742
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 743
    .line 744
    .line 745
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 746
    .line 747
    .line 748
    goto/16 :goto_4

    .line 749
    .line 750
    :cond_1d
    const-string/jumbo v7, "ro.slmk.enable_upgrade_criadj"

    .line 751
    .line 752
    .line 753
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    move-result v7

    .line 757
    if-eqz v7, :cond_1e

    .line 758
    .line 759
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 760
    .line 761
    .line 762
    move-result v7

    .line 763
    const/16 v10, 0xc

    .line 764
    .line 765
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 766
    .line 767
    .line 768
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 769
    .line 770
    .line 771
    move-result v7

    .line 772
    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    .line 773
    .line 774
    goto/16 :goto_4

    .line 775
    .line 776
    :cond_1e
    const-string/jumbo v7, "ro.slmk.freelimit_enable"

    .line 777
    .line 778
    .line 779
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v7

    .line 783
    if-eqz v7, :cond_1f

    .line 784
    .line 785
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 786
    .line 787
    .line 788
    move-result v7

    .line 789
    const/16 v10, 0xd

    .line 790
    .line 791
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 792
    .line 793
    .line 794
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 795
    .line 796
    .line 797
    move-result v7

    .line 798
    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    .line 799
    .line 800
    goto/16 :goto_4

    .line 801
    .line 802
    :cond_1f
    const-string/jumbo v7, "ro.slmk.freelimit_val"

    .line 803
    .line 804
    .line 805
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result v7

    .line 809
    if-eqz v7, :cond_20

    .line 810
    .line 811
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 812
    .line 813
    .line 814
    move-result v7

    .line 815
    const/16 v10, 0xe

    .line 816
    .line 817
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 818
    .line 819
    .line 820
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 821
    .line 822
    .line 823
    move-result v7

    .line 824
    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    .line 825
    .line 826
    goto/16 :goto_4

    .line 827
    .line 828
    :cond_20
    const-string/jumbo v7, "ro.slmk.custom_sw_limit"

    .line 829
    .line 830
    .line 831
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    move-result v7

    .line 835
    if-eqz v7, :cond_21

    .line 836
    .line 837
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 838
    .line 839
    .line 840
    move-result v7

    .line 841
    div-int/2addr v7, v10

    .line 842
    invoke-static {v11, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 843
    .line 844
    .line 845
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 846
    .line 847
    .line 848
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 849
    .line 850
    .line 851
    move-result v7

    .line 852
    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    .line 853
    .line 854
    goto/16 :goto_4

    .line 855
    .line 856
    :cond_21
    const-string/jumbo v7, "ro.slmk.custom_tm_limit"

    .line 857
    .line 858
    .line 859
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v7

    .line 863
    if-eqz v7, :cond_22

    .line 864
    .line 865
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 866
    .line 867
    .line 868
    move-result v7

    .line 869
    div-int/lit8 v7, v7, 0xa

    .line 870
    .line 871
    invoke-static {v12, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 872
    .line 873
    .line 874
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 875
    .line 876
    .line 877
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 878
    .line 879
    .line 880
    move-result v7

    .line 881
    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    .line 882
    .line 883
    goto/16 :goto_4

    .line 884
    .line 885
    :cond_22
    const-string/jumbo v7, "ro.slmk.psi_low"

    .line 886
    .line 887
    .line 888
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 889
    .line 890
    .line 891
    move-result v7

    .line 892
    if-eqz v7, :cond_23

    .line 893
    .line 894
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 895
    .line 896
    .line 897
    move-result v7

    .line 898
    const/16 v10, 0xf

    .line 899
    .line 900
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 901
    .line 902
    .line 903
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 904
    .line 905
    .line 906
    goto/16 :goto_4

    .line 907
    .line 908
    :cond_23
    const-string/jumbo v7, "ro.slmk.psi_medium"

    .line 909
    .line 910
    .line 911
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result v7

    .line 915
    if-eqz v7, :cond_24

    .line 916
    .line 917
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 918
    .line 919
    .line 920
    move-result v7

    .line 921
    const/16 v10, 0x10

    .line 922
    .line 923
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 924
    .line 925
    .line 926
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 927
    .line 928
    .line 929
    move-result v7

    .line 930
    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    .line 931
    .line 932
    goto :goto_4

    .line 933
    :cond_24
    const-string/jumbo v7, "ro.slmk.psi_critical"

    .line 934
    .line 935
    .line 936
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    move-result v7

    .line 940
    if-eqz v7, :cond_25

    .line 941
    .line 942
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 943
    .line 944
    .line 945
    move-result v7

    .line 946
    const/16 v10, 0x11

    .line 947
    .line 948
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 949
    .line 950
    .line 951
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 952
    .line 953
    .line 954
    move-result v7

    .line 955
    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    .line 956
    .line 957
    goto :goto_4

    .line 958
    :cond_25
    const-string/jumbo v7, "ro.slmk.swappiness"

    .line 959
    .line 960
    .line 961
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    move-result v7

    .line 965
    if-eqz v7, :cond_26

    .line 966
    .line 967
    const-string/jumbo v7, "sys.sysctl.swappiness"

    .line 968
    .line 969
    .line 970
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    goto :goto_4

    .line 974
    :cond_26
    const-string/jumbo v7, "ro.slmk.mmap_readaround_limit"

    .line 975
    .line 976
    .line 977
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 978
    .line 979
    .line 980
    move-result v7

    .line 981
    if-eqz v7, :cond_27

    .line 982
    .line 983
    const-string/jumbo v7, "sys.sysctl.mmap_readaround_limit"

    .line 984
    .line 985
    .line 986
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    goto :goto_4

    .line 990
    :cond_27
    const-string/jumbo v7, "ro.slmk.fault_around_bytes"

    .line 991
    .line 992
    .line 993
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 994
    .line 995
    .line 996
    move-result v7

    .line 997
    if-eqz v7, :cond_28

    .line 998
    .line 999
    const-string/jumbo v7, "sys.sysctl.fault_around_bytes"

    .line 1000
    .line 1001
    .line 1002
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    goto :goto_4

    .line 1006
    :cond_28
    const-string/jumbo v7, "ro.slmk.use_bg_keeping_policy"

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1010
    .line 1011
    .line 1012
    move-result v7

    .line 1013
    if-eqz v7, :cond_29

    .line 1014
    .line 1015
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1016
    .line 1017
    .line 1018
    move-result v7

    .line 1019
    const/16 v10, 0x13

    .line 1020
    .line 1021
    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1022
    .line 1023
    .line 1024
    goto :goto_4

    .line 1025
    :cond_29
    invoke-static {v5, v6}, Lcom/android/server/am/DynamicHiddenApp;->setKpmParams(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v7

    .line 1029
    if-eqz v7, :cond_2d

    .line 1030
    .line 1031
    const-string/jumbo v7, "setKpmParams"

    .line 1032
    .line 1033
    .line 1034
    invoke-static {p2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    .line 1036
    .line 1037
    :cond_2a
    :goto_4
    move v5, v4

    .line 1038
    move v6, v5

    .line 1039
    :goto_5
    if-eqz v5, :cond_2b

    .line 1040
    .line 1041
    iget-object v5, v8, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 1042
    .line 1043
    invoke-virtual {v5}, Lcom/android/server/am/BGProtectManager;->initBGProtectManagerPostBoot()V

    .line 1044
    .line 1045
    .line 1046
    :cond_2b
    if-eqz v6, :cond_2c

    .line 1047
    .line 1048
    iget-object v5, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1049
    .line 1050
    iget v6, v5, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 1051
    .line 1052
    iget v7, v5, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 1053
    .line 1054
    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 1055
    .line 1056
    .line 1057
    :cond_2c
    invoke-virtual {v9}, Lcom/android/server/bgslotmanager/BGSlotManager;->updateDefaultCachedMAX()V

    .line 1058
    .line 1059
    .line 1060
    goto/16 :goto_1

    .line 1061
    .line 1062
    :cond_2d
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    .line 1070
    const-string v8, " - cannot matched parameter"

    .line 1071
    .line 1072
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v7

    .line 1079
    invoke-static {p2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1080
    .line 1081
    .line 1082
    goto/16 :goto_1

    .line 1083
    .line 1084
    :goto_6
    const-string v8, "Error occurred not correct data format ["

    .line 1085
    .line 1086
    const-string v9, "]  ["

    .line 1087
    .line 1088
    const-string v10, "]"

    .line 1089
    .line 1090
    invoke-static {v8, v5, v9, v6, v10}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v5

    .line 1094
    invoke-static {p2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1098
    .line 1099
    .line 1100
    goto/16 :goto_1

    .line 1101
    .line 1102
    :cond_2e
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v5

    .line 1117
    invoke-static {p2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    .line 1119
    .line 1120
    goto/16 :goto_1

    .line 1121
    .line 1122
    :cond_2f
    const-string/jumbo p0, "getExtras is null"

    .line 1123
    .line 1124
    .line 1125
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    .line 1127
    .line 1128
    goto/16 :goto_8

    .line 1129
    .line 1130
    :cond_30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object p1

    .line 1134
    const-string/jumbo v5, "com.samsung.android.homehub.action.DEFAULT_HOME_CHANGE"

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1138
    .line 1139
    .line 1140
    move-result p1

    .line 1141
    const-string v6, "android.intent.action.DOCK_EVENT"

    .line 1142
    .line 1143
    if-nez p1, :cond_31

    .line 1144
    .line 1145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p1

    .line 1149
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1150
    .line 1151
    .line 1152
    move-result p1

    .line 1153
    if-eqz p1, :cond_3b

    .line 1154
    .line 1155
    :cond_31
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 1156
    .line 1157
    .line 1158
    move-result-object p1

    .line 1159
    if-eqz p1, :cond_3a

    .line 1160
    .line 1161
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    .line 1162
    .line 1163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object p2

    .line 1167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1168
    .line 1169
    .line 1170
    const-string/jumbo v1, "get action default home change, extra home hub mode intent"

    .line 1171
    .line 1172
    .line 1173
    const-string v7, "ActivityManager_HOME_HUB"

    .line 1174
    .line 1175
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v1

    .line 1182
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v1

    .line 1186
    :cond_32
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1187
    .line 1188
    .line 1189
    move-result v8

    .line 1190
    if-eqz v8, :cond_36

    .line 1191
    .line 1192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v8

    .line 1196
    check-cast v8, Ljava/lang/String;

    .line 1197
    .line 1198
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v9

    .line 1202
    if-eqz v9, :cond_35

    .line 1203
    .line 1204
    sget v10, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 1205
    .line 1206
    const-string/jumbo v10, "ro.product.model"

    .line 1207
    .line 1208
    .line 1209
    const-string v11, ""

    .line 1210
    .line 1211
    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v10

    .line 1215
    const-string v11, "SM-T270"

    .line 1216
    .line 1217
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1218
    .line 1219
    .line 1220
    move-result v10

    .line 1221
    if-eqz v10, :cond_34

    .line 1222
    .line 1223
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1224
    .line 1225
    .line 1226
    move-result v10

    .line 1227
    const-string v11, " - value is "

    .line 1228
    .line 1229
    if-eqz v10, :cond_33

    .line 1230
    .line 1231
    const-string/jumbo v10, "home_hub_mode"

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v10

    .line 1238
    if-eqz v10, :cond_33

    .line 1239
    .line 1240
    invoke-static {v8, v11}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v8

    .line 1244
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v10

    .line 1248
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v8

    .line 1255
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v8

    .line 1262
    const-string/jumbo v9, "true"

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v8

    .line 1269
    iput-boolean v8, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    .line 1270
    .line 1271
    goto :goto_7

    .line 1272
    :cond_33
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1273
    .line 1274
    .line 1275
    move-result v10

    .line 1276
    if-eqz v10, :cond_32

    .line 1277
    .line 1278
    const-string v10, "android.intent.extra.DOCK_STATE"

    .line 1279
    .line 1280
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v10

    .line 1284
    if-eqz v10, :cond_32

    .line 1285
    .line 1286
    invoke-static {v8, v11}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v8

    .line 1290
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v10

    .line 1294
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v8

    .line 1301
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v8

    .line 1308
    const-string v9, "1"

    .line 1309
    .line 1310
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v8

    .line 1314
    iput-boolean v8, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    .line 1315
    .line 1316
    goto/16 :goto_7

    .line 1317
    .line 1318
    :cond_34
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v8

    .line 1333
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    .line 1335
    .line 1336
    goto/16 :goto_7

    .line 1337
    .line 1338
    :cond_35
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v8

    .line 1353
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    .line 1355
    .line 1356
    goto/16 :goto_7

    .line 1357
    .line 1358
    :cond_36
    iget-boolean p1, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    .line 1359
    .line 1360
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 1361
    .line 1362
    if-eqz p1, :cond_38

    .line 1363
    .line 1364
    if-eqz p0, :cond_37

    .line 1365
    .line 1366
    iget p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 1367
    .line 1368
    or-int/2addr p1, v3

    .line 1369
    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 1370
    .line 1371
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 1372
    .line 1373
    .line 1374
    :cond_37
    const-string/jumbo p0, "update cached,empty max slot due to launcher change to HH"

    .line 1375
    .line 1376
    .line 1377
    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    .line 1379
    .line 1380
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    .line 1381
    .line 1382
    goto :goto_8

    .line 1383
    :cond_38
    if-eqz p0, :cond_39

    .line 1384
    .line 1385
    iget p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 1386
    .line 1387
    and-int/lit8 p1, p1, -0x5

    .line 1388
    .line 1389
    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 1390
    .line 1391
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 1392
    .line 1393
    .line 1394
    const-string p0, "DynamicHiddenApp_BGSlotManager"

    .line 1395
    .line 1396
    const-string p1, "HomeHubBGSlot Recovered"

    .line 1397
    .line 1398
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    .line 1400
    .line 1401
    :cond_39
    const-string/jumbo p0, "update cached,empty max slot due to launcher change from HH"

    .line 1402
    .line 1403
    .line 1404
    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    .line 1406
    .line 1407
    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    .line 1408
    .line 1409
    goto :goto_8

    .line 1410
    :cond_3a
    const-string/jumbo p0, "get ExtraHomeHub is null"

    .line 1411
    .line 1412
    .line 1413
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    .line 1415
    .line 1416
    :cond_3b
    :goto_8
    return-void
.end method
