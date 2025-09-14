.class public final Lcom/android/server/chimera/ChimeraStrategy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAlwaysRunningProcessQuota:I

.field public final mDeviceIdleAppThreshold:I

.field public final mDeviceIdleNativeThreshold:I

.field public mMemFreeTarget:J

.field public final mProtectedCountOnDynamic:I

.field public mProtectedCountOnHomeTrigger:I

.field public mProtectedCountOnLmkdTrigger:I

.field public final mQuickReclaimDefaultThreshold:I

.field public final mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, 0x0

    .line 13
    move v0, p2

    .line 14
    :goto_0
    sget-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    .line 15
    .line 16
    aget-object v2, v1, v0

    .line 17
    .line 18
    aget v2, v2, p2

    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    if-lez v2, :cond_1

    .line 22
    .line 23
    if-lt v2, p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, p2

    .line 30
    move v2, v3

    .line 31
    :goto_1
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x3

    .line 35
    const-string v7, "ChimeraStrategy"

    .line 36
    .line 37
    if-eq v2, v3, :cond_3

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string/jumbo v8, "ro.slmk.chimera_strategy_%dgb"

    .line 48
    .line 49
    .line 50
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v8, ""

    .line 55
    .line 56
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    new-instance v9, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string/jumbo v10, "updateDefaultParameters > "

    .line 63
    .line 64
    .line 65
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, " : "

    .line 72
    .line 73
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v7, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_3

    .line 94
    .line 95
    const-string v2, ","

    .line 96
    .line 97
    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    array-length v8, v2

    .line 102
    if-le v8, v6, :cond_2

    .line 103
    .line 104
    move v8, v5

    .line 105
    :goto_2
    if-gt v8, v6, :cond_3

    .line 106
    .line 107
    :try_start_0
    aget-object v9, v1, v0

    .line 108
    .line 109
    add-int/lit8 v10, v8, -0x1

    .line 110
    .line 111
    aget-object v10, v2, v10

    .line 112
    .line 113
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    aput v10, v9, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catch_0
    move-exception v9

    .line 125
    new-instance v10, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v11, "Error while updating default : "

    .line 128
    .line 129
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v9, v10, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    const-string v0, "Chimera parameter mismatched"

    .line 139
    .line 140
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :cond_3
    move v0, p2

    .line 144
    :goto_4
    aget-object v2, v1, v0

    .line 145
    .line 146
    aget v8, v2, p2

    .line 147
    .line 148
    if-lez v8, :cond_5

    .line 149
    .line 150
    if-lt v8, p1, :cond_4

    .line 151
    .line 152
    aget v0, v2, v5

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_5
    move v0, v3

    .line 159
    :goto_5
    int-to-long v8, v0

    .line 160
    const-wide/16 v10, 0x400

    .line 161
    .line 162
    mul-long/2addr v8, v10

    .line 163
    iput-wide v8, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 164
    .line 165
    move v0, p2

    .line 166
    :goto_6
    aget-object v2, v1, v0

    .line 167
    .line 168
    aget v8, v2, p2

    .line 169
    .line 170
    if-lez v8, :cond_7

    .line 171
    .line 172
    if-lt v8, p1, :cond_6

    .line 173
    .line 174
    const/4 v0, 0x2

    .line 175
    aget v0, v2, v0

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_7
    move v0, v3

    .line 182
    :goto_7
    const-string/jumbo v2, "persist.config.chimera.protected_count_on_lmkd"

    .line 183
    .line 184
    .line 185
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 190
    .line 191
    move v0, p2

    .line 192
    :goto_8
    aget-object v2, v1, v0

    .line 193
    .line 194
    aget v8, v2, p2

    .line 195
    .line 196
    if-lez v8, :cond_9

    .line 197
    .line 198
    if-lt v8, p1, :cond_8

    .line 199
    .line 200
    aget v0, v2, v6

    .line 201
    .line 202
    goto :goto_9

    .line 203
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 204
    .line 205
    goto :goto_8

    .line 206
    :cond_9
    move v0, v3

    .line 207
    :goto_9
    const-string/jumbo v2, "persist.config.chimera.protected_count_on_home"

    .line 208
    .line 209
    .line 210
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 215
    .line 216
    iget-wide v8, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 217
    .line 218
    const-wide/16 v10, 0x0

    .line 219
    .line 220
    cmp-long v2, v8, v10

    .line 221
    .line 222
    if-ltz v2, :cond_a

    .line 223
    .line 224
    if-ltz v0, :cond_a

    .line 225
    .line 226
    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 227
    .line 228
    if-gez v0, :cond_b

    .line 229
    .line 230
    :cond_a
    const v0, 0x8000

    .line 231
    .line 232
    .line 233
    int-to-long v8, v0

    .line 234
    iput-wide v8, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 235
    .line 236
    const/16 v0, 0x20

    .line 237
    .line 238
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 239
    .line 240
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 241
    .line 242
    :cond_b
    move v0, p2

    .line 243
    :goto_a
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    .line 244
    .line 245
    aget-object v2, v2, v0

    .line 246
    .line 247
    aget v6, v2, p2

    .line 248
    .line 249
    const/4 v8, 0x0

    .line 250
    cmpl-float v8, v6, v8

    .line 251
    .line 252
    if-lez v8, :cond_d

    .line 253
    .line 254
    int-to-float v8, p1

    .line 255
    cmpl-float v6, v6, v8

    .line 256
    .line 257
    if-ltz v6, :cond_c

    .line 258
    .line 259
    aget v0, v2, v5

    .line 260
    .line 261
    goto :goto_b

    .line 262
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_d
    const/high16 v0, -0x40800000    # -1.0f

    .line 266
    .line 267
    :goto_b
    float-to-int v0, v0

    .line 268
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    .line 269
    .line 270
    move v0, p2

    .line 271
    :goto_c
    aget-object v2, v1, v0

    .line 272
    .line 273
    aget v5, v2, p2

    .line 274
    .line 275
    if-lez v5, :cond_f

    .line 276
    .line 277
    if-lt v5, p1, :cond_e

    .line 278
    .line 279
    const/4 v0, 0x5

    .line 280
    aget v0, v2, v0

    .line 281
    .line 282
    goto :goto_d

    .line 283
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 284
    .line 285
    goto :goto_c

    .line 286
    :cond_f
    move v0, v3

    .line 287
    :goto_d
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mQuickReclaimDefaultThreshold:I

    .line 288
    .line 289
    move v0, p2

    .line 290
    :goto_e
    aget-object v2, v1, v0

    .line 291
    .line 292
    aget v5, v2, p2

    .line 293
    .line 294
    if-lez v5, :cond_11

    .line 295
    .line 296
    if-lt v5, p1, :cond_10

    .line 297
    .line 298
    const/4 v0, 0x6

    .line 299
    aget v0, v2, v0

    .line 300
    .line 301
    goto :goto_f

    .line 302
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 303
    .line 304
    goto :goto_e

    .line 305
    :cond_11
    move v0, v3

    .line 306
    :goto_f
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleAppThreshold:I

    .line 307
    .line 308
    move v0, p2

    .line 309
    :goto_10
    aget-object v2, v1, v0

    .line 310
    .line 311
    aget v5, v2, p2

    .line 312
    .line 313
    if-lez v5, :cond_13

    .line 314
    .line 315
    if-lt v5, p1, :cond_12

    .line 316
    .line 317
    const/4 v0, 0x7

    .line 318
    aget v0, v2, v0

    .line 319
    .line 320
    goto :goto_11

    .line 321
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 322
    .line 323
    goto :goto_10

    .line 324
    :cond_13
    move v0, v3

    .line 325
    :goto_11
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleNativeThreshold:I

    .line 326
    .line 327
    move v0, p2

    .line 328
    :goto_12
    aget-object v2, v1, v0

    .line 329
    .line 330
    aget v5, v2, p2

    .line 331
    .line 332
    if-lez v5, :cond_15

    .line 333
    .line 334
    if-lt v5, p1, :cond_14

    .line 335
    .line 336
    const/16 p2, 0x8

    .line 337
    .line 338
    aget v3, v2, p2

    .line 339
    .line 340
    goto :goto_13

    .line 341
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 342
    .line 343
    goto :goto_12

    .line 344
    :cond_15
    :goto_13
    iput v3, p0, Lcom/android/server/chimera/ChimeraStrategy;->mAlwaysRunningProcessQuota:I

    .line 345
    .line 346
    const-string p2, "ChimeraStrategy() - ramSizeGb: "

    .line 347
    .line 348
    const-string v0, " mMemFreeTarget: "

    .line 349
    .line 350
    invoke-static {p1, p2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 355
    .line 356
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string p2, " mProtectedCountOnLmkdTrigger: "

    .line 360
    .line 361
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 365
    .line 366
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string p2, " mProtectedCountOnHomeTrigger: "

    .line 370
    .line 371
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 375
    .line 376
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string p2, " mProtectedCountOnDynamic: "

    .line 380
    .line 381
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    .line 385
    .line 386
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string p2, " mQuickReclaimDefaultThreshold: "

    .line 390
    .line 391
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mQuickReclaimDefaultThreshold:I

    .line 395
    .line 396
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string p2, " mDeviceIdleAppThreshold: "

    .line 400
    .line 401
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleAppThreshold:I

    .line 405
    .line 406
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string p2, " mDeviceIdleNativeThreshold: "

    .line 410
    .line 411
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleNativeThreshold:I

    .line 415
    .line 416
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string p2, " mAlwaysRunningProcessQuota: "

    .line 420
    .line 421
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mAlwaysRunningProcessQuota:I

    .line 425
    .line 426
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-static {v7, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    return-void
.end method


# virtual methods
.method public final dumpInfo(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MemFreeTarget: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 9
    .line 10
    const-string v3, "ProtectedCountOnLmkdTrigger: "

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 17
    .line 18
    const-string v2, "ProtectedCountOnHomeTrigger: "

    .line 19
    .line 20
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 25
    .line 26
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
