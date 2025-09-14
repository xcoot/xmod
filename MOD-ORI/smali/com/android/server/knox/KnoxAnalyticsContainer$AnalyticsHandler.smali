.class public final Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/KnoxAnalyticsContainer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

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
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "handleMessage : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "AnalyticsContainerHandler"

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget v1, v0, Landroid/os/Message;->what:I

    .line 24
    .line 25
    const-string/jumbo v2, "no_share_location"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "location_providers_allowed"

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    move-object/from16 v7, p0

    .line 35
    .line 36
    iget-object v7, v7, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 37
    .line 38
    if-eq v1, v5, :cond_11

    .line 39
    .line 40
    if-eq v1, v4, :cond_0

    .line 41
    .line 42
    goto/16 :goto_b

    .line 43
    .line 44
    :cond_0
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 45
    .line 46
    iget-object v1, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 47
    .line 48
    const-string/jumbo v8, "bioInf "

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-nez v9, :cond_1

    .line 56
    .line 57
    goto/16 :goto_b

    .line 58
    .line 59
    :cond_1
    new-instance v9, Landroid/os/Bundle;

    .line 60
    .line 61
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v10, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 65
    .line 66
    invoke-virtual {v10, v0}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    const-string/jumbo v11, "cTp"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const-string v10, "OToE"

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    move v11, v5

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v11, v6

    .line 83
    :goto_0
    xor-int/2addr v11, v5

    .line 84
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    const-string/jumbo v11, "knox_screen_off_timeout"

    .line 92
    .line 93
    .line 94
    const/4 v12, -0x1

    .line 95
    if-eqz v10, :cond_3

    .line 96
    .line 97
    iget-object v10, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-static {v10, v11, v12, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object v10, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-static {v10, v11, v12, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    :goto_1
    if-nez v10, :cond_4

    .line 119
    .line 120
    move v12, v5

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    if-ne v10, v12, :cond_5

    .line 123
    .line 124
    move v12, v4

    .line 125
    goto :goto_2

    .line 126
    :cond_5
    const/4 v12, -0x2

    .line 127
    if-ne v10, v12, :cond_6

    .line 128
    .line 129
    const/4 v12, 0x3

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    const/16 v12, 0x1388

    .line 132
    .line 133
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    move v12, v6

    .line 138
    :goto_2
    const-string/jumbo v13, "lckTmoutTp"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v12, "lckTmoutV"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    new-instance v10, Lcom/android/internal/widget/LockPatternUtils;

    .line 151
    .line 152
    iget-object v12, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->context:Landroid/content/Context;

    .line 153
    .line 154
    invoke-direct {v10, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v10, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    const/16 v13, 0x100

    .line 162
    .line 163
    invoke-virtual {v10, v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    shl-int/2addr v10, v4

    .line 168
    iget-object v13, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    const-string/jumbo v14, "knox_finger_print_plus"

    .line 175
    .line 176
    .line 177
    invoke-static {v13, v14, v6, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    if-ne v13, v5, :cond_7

    .line 182
    .line 183
    move v13, v5

    .line 184
    goto :goto_3

    .line 185
    :cond_7
    move v13, v6

    .line 186
    :goto_3
    const-string/jumbo v14, "lckTp"

    .line 187
    .line 188
    .line 189
    new-instance v15, Lcom/android/internal/widget/LockPatternUtils;

    .line 190
    .line 191
    iget-object v11, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-direct {v15, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v15, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    const/high16 v15, 0x10000

    .line 201
    .line 202
    if-eq v11, v15, :cond_a

    .line 203
    .line 204
    const/high16 v4, 0x20000

    .line 205
    .line 206
    if-eq v11, v4, :cond_9

    .line 207
    .line 208
    const/high16 v4, 0x30000

    .line 209
    .line 210
    if-eq v11, v4, :cond_9

    .line 211
    .line 212
    const/high16 v4, 0x40000

    .line 213
    .line 214
    if-eq v11, v4, :cond_8

    .line 215
    .line 216
    const/high16 v4, 0x50000

    .line 217
    .line 218
    if-eq v11, v4, :cond_8

    .line 219
    .line 220
    const/high16 v4, 0x60000

    .line 221
    .line 222
    if-eq v11, v4, :cond_8

    .line 223
    .line 224
    move v4, v5

    .line 225
    goto :goto_4

    .line 226
    :cond_8
    const/4 v4, 0x4

    .line 227
    goto :goto_4

    .line 228
    :cond_9
    const/4 v4, 0x3

    .line 229
    :cond_a
    :goto_4
    invoke-virtual {v9, v14, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    sget-boolean v4, Lcom/android/server/knox/KnoxAnalyticsContainer;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    const-string v11, "STATUS_SNAPSHOT"

    .line 235
    .line 236
    if-eqz v4, :cond_b

    .line 237
    .line 238
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    or-int v8, v12, v10

    .line 244
    .line 245
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :catch_0
    move-exception v0

    .line 257
    goto/16 :goto_a

    .line 258
    .line 259
    :cond_b
    :goto_5
    const-string/jumbo v4, "bioInf"

    .line 260
    .line 261
    .line 262
    or-int v8, v12, v10

    .line 263
    .line 264
    invoke-virtual {v9, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    const-string/jumbo v4, "mfaEnb"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9, v4, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    iget-object v4, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    const-string/jumbo v8, "disabled_print_services"

    .line 280
    .line 281
    .line 282
    invoke-static {v4, v8, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    const-string/jumbo v8, "disPrnSrv"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v9, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    iget-object v8, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 301
    .line 302
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    new-instance v10, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string/jumbo v11, "caller_id_to_show_"

    .line 309
    .line 310
    .line 311
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-static {v8, v4, v5, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    const-string/jumbo v8, "clrId"

    .line 328
    .line 329
    .line 330
    if-ne v4, v5, :cond_c

    .line 331
    .line 332
    move v4, v5

    .line 333
    goto :goto_6

    .line 334
    :cond_c
    move v4, v6

    .line 335
    :goto_6
    invoke-virtual {v9, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    .line 337
    .line 338
    const-string/jumbo v4, "nSntz"

    .line 339
    .line 340
    .line 341
    iget-object v8, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    const-string/jumbo v10, "lock_screen_allow_private_notifications"

    .line 348
    .line 349
    .line 350
    invoke-static {v8, v10, v6, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    invoke-virtual {v9, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    if-nez v0, :cond_d

    .line 358
    .line 359
    iget-object v2, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 360
    .line 361
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-static {v2, v3, v6, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-nez v2, :cond_e

    .line 370
    .line 371
    move v5, v6

    .line 372
    goto :goto_7

    .line 373
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    new-instance v4, Landroid/os/UserHandle;

    .line 378
    .line 379
    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    xor-int/2addr v5, v2

    .line 387
    :cond_e
    :goto_7
    const-string/jumbo v2, "lct"

    .line 388
    .line 389
    .line 390
    invoke-virtual {v9, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    .line 392
    .line 393
    iget-object v2, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    .line 394
    .line 395
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    invoke-static {}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getDeviceOwnerPackage()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v1, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getProfileOwnerPackage(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    if-eqz v2, :cond_f

    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_f
    move-object v2, v0

    .line 418
    :goto_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-eqz v0, :cond_10

    .line 423
    .line 424
    const/4 v0, 0x0

    .line 425
    goto :goto_9

    .line 426
    :cond_10
    invoke-static {v6, v2}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 431
    .line 432
    :goto_9
    const-string/jumbo v1, "daPn"

    .line 433
    .line 434
    .line 435
    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    const-string/jumbo v1, "daPv"

    .line 439
    .line 440
    .line 441
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7, v9}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 445
    .line 446
    .line 447
    goto :goto_b

    .line 448
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    const-string/jumbo v2, "sendSnapshotLog Failed."

    .line 451
    .line 452
    .line 453
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    const-string v1, "PersonaManagerService:KnoxAnalytics"

    .line 464
    .line 465
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    goto :goto_b

    .line 469
    :cond_11
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 470
    .line 471
    iget-object v1, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    if-nez v0, :cond_13

    .line 477
    .line 478
    iget-object v1, v1, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 479
    .line 480
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-static {v1, v3, v6, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-nez v1, :cond_12

    .line 489
    .line 490
    move v5, v6

    .line 491
    :cond_12
    :try_start_2
    iget-object v1, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    .line 492
    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    check-cast v1, Ljava/lang/Integer;

    .line 502
    .line 503
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 504
    .line 505
    .line 506
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 507
    if-ne v1, v5, :cond_14

    .line 508
    .line 509
    goto :goto_b

    .line 510
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    new-instance v3, Landroid/os/UserHandle;

    .line 515
    .line 516
    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    xor-int/2addr v1, v5

    .line 524
    :try_start_3
    iget-object v2, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    .line 525
    .line 526
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    check-cast v2, Ljava/lang/Integer;

    .line 535
    .line 536
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 540
    if-ne v2, v1, :cond_14

    .line 541
    .line 542
    goto :goto_b

    .line 543
    :catch_1
    :cond_14
    iget-object v1, v7, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    .line 544
    .line 545
    invoke-virtual {v1, v4, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    .line 551
    .line 552
    :goto_b
    return-void
.end method
